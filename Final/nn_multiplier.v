`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:22 12/03/2014 
// Design Name: 
// Module Name:    nn_multiplier 
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
module nn_multiplier( //it is assumed that shifts will be less than two
    input [31:0] shift,
    input [8:0] index,
    output [10:0] shifted_index
    );

	wire[31:0] result;
	wire ovr;
	assign shifted_index = result[30:20];

	qmult #(20,32) index_mult (
    .i_multiplicand(shift), 
    .i_multiplier({{3{1'b0}},index[8:0],{20{1'b0}}}), 
    .o_result(result), 
    .ovr(ovr)
    );

endmodule
