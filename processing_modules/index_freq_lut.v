`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:22 11/30/2014 
// Design Name: 
// Module Name:    index_freq_mult 
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
module index_freq_mult(
    input [9:0] index,
    output [31:0] frequency
    );
	 
	 wire [31:0] factor = ;
	 
	 qmult #(20,32) mul (
		.a(index),
		.b(factor),
		.c(frequency)
	 );


endmodule
