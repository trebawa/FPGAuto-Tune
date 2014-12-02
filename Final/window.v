`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:21 11/24/2014 
// Design Name: 
// Module Name:    window 
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
module window(
    input clk,
    input reset,
    input [17:0] data_in,
    output [17:0] data_out
    );
	 
	 parameter LOGSIZE = 9;
	 
	 reg[LOGSIZE-1:0] index <= 0;
	 assign data_out = data_in[17:0]*window[index];
	 
	 always @(posedge clk) begin
		if (reset) index <= 0;
		else begin
		
		end
	 end


endmodule
