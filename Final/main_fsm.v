`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:03 12/01/2014 
// Design Name: 
// Module Name:    main_fsm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main_fsm(
	 input start,
	 input clk,
    output reg done = 1,	//when the calculation is complete
    output reg note_done = 0,	//when the calculation is complete
    output [3:0] note_name,
    output [2:0] note_octave,
	 input [11:0] scale,
		
    input fft_done,				//interface with the fft
    input [8:0] fft_address,
    input fft_read_valid,
    input signed [35:0] fft_data,
	 
    input [8:0] result_address,	//supply data that can be sent to the IFFT
    input result_read_enable,
    output reg signed [35:0] result_data,
    output reg result_read_valid
    );
	 
	 ///////////////////////////////
	 //  Modules and connections  //
	 ///////////////////////////////
	 
	 //RAM alpha
	 wire [8:0] ram_a_waddr = fft_address;
	 reg [8:0] ram_a_raddr = 0;
	 wire signed [17:0] ram_a_real;
	 wire signed [17:0] ram_a_imag;
	 reg ram_a_write = 0;
	 wire [8:0] ram_a_addr = ram_a_write ? ram_a_waddr : ram_a_raddr;
	 wire ram_a_we = ram_a_write && fft_read_valid;
	 
	 ram36x512 ram_a(
		.clka(clk),
		.dina(ram_a_din),
		.addra(ram_a_addr),
		.wea(ram_a_we),
		.douta({ram_a_real,ram_a_imag})
		);
			 
	 //CORDIC
	 reg cordic_start = 0;
	 wire signed [23:0] c_magnitude;//1QN
	 wire signed [31:0] magnitude = {{10{c_magnitude[23]}},c_magnitude[22:1]}; //sign extended to 11Q32 format
	 wire signed [22:0] c_phase;//2QN
	 wire signed [31:0] phase = {{9{c_phase[23]}},c_phase[22:0]};//sign extended to 11Q32 format
	 wire cordic_done;
	 
	 cordic cart_to_phasor(
		.x_in(ram_a_real),
		.y_in(ram_a_imag),
		.nd(cordic_start),
		.clk(clk),
		.x_out(c_magnitude),
		.phase_out(c_phase),
		.rdy(cordic_done)
		); 
		
	 //Peak finder
	 reg pf_start = 0;
	 reg [32:0] max_freq = 0;
	 reg [8:0] max_index;
	 
	 serial_peak_finder peak_finder (
		 .clk(clk), 
		 .index(ram_b_waddr), 
		 .start(pf_start), 
		 .data_in(magnitude), 
		 .peak_index(peak_index)
		 );
		
	 //RAM beta
	 reg [8:0] ram_b_waddr = 0;
	 reg [8:0] ram_b_raddr;
	 reg ram_b_write = 0;
	 wire [8:0] ram_b_addr = ram_b_write ? ram_b_waddr : ram_b_raddr;
	 wire ram_b_we = ram_b_write;
	 wire signed [31:0] ram_b_out; //phase data, 11Q32
	 
	 ram32x512 ram_b(
		.clka(clk),
		.dina(phase),
		.addra(ram_b_addr),
		.wea(ram_b_we),
		.douta(ram_b_out)
		);
		
	 //frequency estimator
	 reg signed [32:0] max_phase;
	 reg est_start;
	 wire est_done;
	 wire [32:0] fund_freq;
	 
	 freq_estimator estimator (
		 .max_phase(max_phase), 
		 .max_index(max_index), 
		 .clk(clk), 
		 .start(est_start), 
		 .done(est_done), 
		 .frequency(fund_freq;)
		);

	 //scale forcer
	 wire greater;
	 wire scale_force_done;
	 
	 // Instantiate the module
	 scale_freq_select instance_name (
		 .note_name(note_name), 
		 .note_octave(note_octave), 
		 .greater(greater), 
		 .scale(scale), 
		 .start(start), 
		 .clk(clk), 
		 .done(scale_force_done), 
		 .freq_desired(freq_desired)
		 );

	 
	 //////////////////////
	 //  State encoding  //
	 //////////////////////
	 
	 parameter S_WAIT_FOR_DATA 	= 1; 		//expose RAMc to IFFT, set done flag, wait for start pulse
	 parameter S_POPULATE_RAM_A 	= 2; 		//clear done flag, fill RAMa with FFT data (when read is valid)
	 parameter S_RUN_CORDICS 		= 4; 		//fill RAMb with transformed data, run peak finder on magnitudes
	 parameter S_FIND_MAX_FREQ 	= 8;		//read out from RAMb the phase of the peak bin and send it to f-est
	 parameter S_FIND_FUND_FREQ	= 16;		//run the frequency estimator and send to Note LUT
	 parameter S_FORCE_TO_SCALE	= 32;		//output the resulting note and find the closest scale note
	 parameter S_DIVIDE_SHIFT		= 64;		//calculate the necessary shift factor and multiply by the correction factor
	 parameter S_RATE_MUL			= 128;	//multiply by the rate factor
	 parameter S_INTERP_INDEX		= 256; 	//populate RAMc with shifted values from RAMa
	 
	 reg [9:0] state = S_WAIT_FOR_DATA;
	 
	 
	 /////////////////////
	 //  State machine  //
	 /////////////////////
	 
	 always @(posedge clk) begin
		case (state)
			S_WAIT_FOR_DATA: begin
				if (fft_done) begin
					state<= S_POPULATE_RAM_A;
					ram_a_write <= 1;
				end
			end
			S_POPULATE_RAM_A: begin
				if (fft_address === 511) begin
					state<= S_RUN_CORDICS;
					ram_a_write <= 0;
					cordic_start <= 0;
					ram_a_raddr <= 0;
					ram_b_write <= 1;
					pf_start <= 1;
				end
			end
			S_RUN_CORDICS: begin
				if (cordic_done) begin
					pf_start <= 0;
					if (ram_b_waddr === 511) begin
						state <= S_FIND_MAX_FREQ;
						max_index <= peak_index; //we have determined the peak bin
					end
					else ram_b_waddr <= ram_b_waddr+1;
				end
				else if (ram_a_raddr != 511) cordic_start <= 1;
				else cordic_start <= 0;
				if (cordic_start) ram_a_raddr <= ram_a_addr + 1;
			end
			S_FIND_MAX_FREQ: begin
				ram_b_raddr <= max_index;
				if (ram_b_raddr === max_index) begin
					max_phase <= ram_b_out;
					state <= S_FIND_FUND_FREQ;
					est_start <= 1;
				end
			end
			S_FIND_FUND_FREQ: begin
				est_start <= 0;
				if (est_done) begin
					state <= S_FORCE_TO_SCALE;
				end
			end
			S_FORCE_TO_SCALE: begin
				
			end
			S_DIVIDE_SHIFT: begin
				
			end
		endcase
	 end


endmodule
