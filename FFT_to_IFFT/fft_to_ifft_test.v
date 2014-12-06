`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:16:44 12/05/2014
// Design Name:   fft_to_ifft
// Module Name:   /afs/athena.mit.edu/user/i/s/ishwarya/Documents/6.111_Repo/FFT_to_IFFT/fft_to_ifft_test.v
// Project Name:  FFT_to_IFFT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fft_to_ifft
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fft_to_ifft_test;

	parameter log_depth = 9;
	
	// Inputs
	reg clk = 1'b0;
	reg reset;
	reg [17:0] sample_from_codec = 18'd0;
	reg [8:0] counter  = 9'd0;

	// Outputs
	wire [17:0] to_codec_data_real;
	wire [17:0] to_codec_data_imag;
	
	reg [35:0] input_array[0 : (1 << log_depth) - 1];
	reg [35:0] output_array[0 : (1 << log_depth) - 1];

	// Instantiate the Unit Under Test (UUT)
	fft_to_ifft uut (
		.clk(clk), 
		.reset(reset), 
		.sample_from_codec(sample_from_codec), 
		.to_codec_data_real(to_codec_data_real), 
		.to_codec_data_imag(to_codec_data_imag)
	);

	initial begin
		 #1000000 $finish;
	end

	initial begin
		$dumpfile("fft_to_ifft_test.vcd");
		$dumpvars(0, fft_to_ifft_test);

		//#20 sample_from_codec <= 18'd0;

		// fill the memory array with sample data from text file
		#20 $readmemh("fft_tb_input.txt", input_array, 0, (1 << log_depth) - 1);

		//reset to begin the fft
		#50 reset <= 1'b1;

		#10 reset <= 1'b0;

	end 

	always begin
		#5	clk <= !clk;
	end


	always @(posedge clk) begin
		if (!reset /*&& (counter <= 10'd1023)*/) begin
			sample_from_codec <= input_array[counter];
			counter <= counter + 1;
			//#10000 $finish
			/*
			if (read_valid && !once) begin
				output_array[counter_addr] = {test_imag_out, test_real_out};
				if (counter_addr == 9'd511) begin
					once <= 1'b1;
					// should capture output data after only intial cycle
					$writememh("fft_tb3_output.txt", output_array, 0, (1 << log_depth) - 1);
				end
			end
			*/
		end
	end

      
endmodule

