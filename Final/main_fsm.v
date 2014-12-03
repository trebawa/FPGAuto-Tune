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
		
    input fft_done,				//interface with the fft
    output reg [8:0] fft_address,
    output reg fft_read_enable,
    input fft_read_valid,
    input signed [35:0] fft_data,
	 
    input [8:0] result_address,	//supply data that can be sent to the IFFT
    input result_read_enable,
    output signed reg [63:0] result_data,
    output reg result_read_valid
    );
	 
	 ///////////////////////////////
	 //  Modules and connections  //
	 ///////////////////////////////
	 
	 //RAM alpha
	 wire [8:0] ram_a_waddr;
	 wire [8:0] ram_a_raddr;
	 wire signed [17:0] ram_a_real;
	 wire signed [17:0] ram_a_imag;
	 reg ram_a_write = 0;
	 wire [8:0] ram_a_addr = ram_a_write ? ram_a_waddr : ram_a_raddr;
	 wire ram_a_we = ram_a_write;
	 
	 ram36x512 ram_a(
		.clka(clk),
		.dina(ram_a_din),
		.addra(ram_a_addr),
		.wea(ram_a_we),
		.douta({ram_a_real,ram_a_imag})
		);
		
	 //RAM beta
	 wire [8:0] ram_b_waddr;
	 wire [8:0] ram_b_raddr;
	 reg ram_b_write = 0;
	 wire [8:0] ram_b_addr = ram_b_write ? ram_b_waddr : ram_b_raddr;
	 wire ram_b_we = ram_b_write;
	 wire signed [31:0] ram_b_out; //phase data, 11Q32
	 
	 ram32x512 ram_b(
		.clka(clk),
		.dina(ram_b_din),
		.addra(ram_b_addr),
		.wea(ram_b_we),
		.douta(ram_b_out);
		);
		
	 //RAM gamma
	 wire [8:0] ram_c_waddr;
	 wire [8:0] ram_c_raddr;
	 wire [35:0] ram_c_out;
	 reg ram_c_write = 0;
	 wire [8:0] ram_c_addr = ram_c_write ? ram_c_waddr : ram_c_raddr;
	 wire ram_c_we = ram_c_write;
	 
	 ram36x512 ram_c(
		.clka(clk),
		.dina(ram_c_din),
		.addra(ram_c_addr),
		.wea(ram_c_we),
		.douta(ram_c_out)
		);
	 
	 //CORDIC
	 wire cordic_done;
	 wire signed [23:0] c_magnitude;//1QN
	 wire signed [31:0] magnitude = {10{c_magnitude[22]},c_magnitude[22:1]}; //sign extended to 11Q32 format
	 wire signed [22:0] c_phase;//2QN
	 wire signed [31:0] phase = {9{c_phase[22]},c_phase[22:0]};//sign extended to 11Q32 format
	 
	 cordic cart_to_phasor(
		.x_in(ram_a_real),
		.y_in(ram_a_imag),
		.nd(cordic_new_data),
		.clk(clk),
		.x_out(c_magnitude),
		.phase_out(c_phase),
		.rdy(cordic_done)
		); // synthesis black_box
	 
	 
	 //////////////////////
	 //  State encoding  //
	 //////////////////////
	 
	 parameter S_WAIT_FOR_DATA 	= 1; 		//expose RAMc to IFFT, set done flag, wait for start pulse
	 parameter S_POPULATE_RAM_A 	= 2; 		//clear done flag, fill RAMa with FFT data
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
				
			end
		endcase
	 end


endmodule
