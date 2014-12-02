`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:51 11/30/2014 
// Design Name: 
// Module Name:    shift_divider 
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
module shift_divider(
    input [31:0] freq_desired,
    input [31:0] freq_fund,
	 input clk,
	 input start,
	 output done,
    output [31:0] shift_factor
    );

	wire overflow;

	qdiv #q(20,32) divider (
		.i_dividend(freq_desired), 
		.i_divisor(freq_fund), 
		.i_start(start), 
		.i_clk(clk), 
		.o_quotient_out(shift_factor), 
		.o_complete(done), 
		.o_overflow(overflow)
	);

endmodule
