`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:43 11/25/2014 
// Design Name: 
// Module Name:    freq_estimator 
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
module freq_estimator( //Everything is 11Q32) (11 integer bits, 1 sign bit, 20 fractional bits)
    input signed [31:0] max_phase,// phase of the fundamental frequency
    input [8:0] max_index,// FFT index of fundamental frequency
    input clk,
    input start,
    output reg done = 1,
    output reg [31:0] frequency//11Q32
    );
	 
	 //wire signed [31:0] two_dt = 32'h5F1C; two times the time lag between adjacent ffts
	 wire signed [31:0] two_dt_inv = 32'h5622000; //one over (two times the time lag between adjacent ffts)
	 //[current value is for 44.1kHz, 512-point, half-window overlap] (11Q32)
	 reg [31:0] old_max_phase = 0; //the last value of max_phase; necessary to calculate the phase difference
	 
	 reg [31:0] two_n = 0; //11Q32
	 wire signed [31:0] two = 32'h200000; //2 in 11Q32
	 wire [31:0] new_two_n; 
	 wire signed [31:0] dp;
	 wire signed [31:0] df;
	 wire [30:0] df_magnitude = df[30:0];
	 reg [30:0] df_magnitude_last = 31'h7fffffff;
	 wire signed [31:0] numerator;
	 wire [31:0] freq_result;
	 wire [31:0] max_freq;
	 reg [31:0] last_freq = 0;
	 wire ovr_1;
	 wire ovr_2;
	 //wire div_done, div_overflow;
	 //reg div_start = 0;
	 
	 wire signed [31:0] index_factor = 31'h564D269; // currently 44100/511? I'm not sure how to calculate this
	 
	 qmult #(20,32) i_to_f (//convert the index to the center frequency of that bin
		.i_multiplicand({23'h0,max_index}),
		.i_multiplier(index_factor),
		.o_result(max_freq),
		.ovr(ovr_1)
	 );
	 
	 always @(posedge clk) begin
		if (!done) begin
			//if (div_done) begin
				
				if (df_magnitude>df_magnitude_last) begin //figure out if we're done
					frequency <= last_freq;
					done <= 1;
				end
				df_magnitude_last <= df_magnitude;
				old_max_phase <= max_phase; //save the old max phase
				last_freq <= freq_result; //necessary because we stop calculating one late
				two_n <= new_two_n;// increment n
				//div_start <= 1;
			//end
			//else div_start <= 0;
		end
		else if (start) begin
			done <= 0;
		end
	 end
	 
	 qadd #(20,32) n_incrementer(
		.a(two_n),
		.b(two),
		.c(new_two_n)
	 );
	 
	 qadd #(20,32) freq_diff(//calculate the frequency error
		.a(freq_result),
		.b(-max_freq),
		.c(df)
	 );
	 
	 qadd #(20,32) dp_calc(
		.a(max_phase),
		.b(-old_max_phase),
		.c(dp)
	 );
	 
	 qadd #(20,32) add_numerator(
		.a(dp),
		.b(two_n),
		.c(numerator)
	 );

	 qmult #(20,32) mul(
		.i_multiplicand(numerator),
		.i_multiplier(two_dt_inv),
		.o_result(freq_result),
		.ovr(ovr_2)
	);


endmodule
