`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:55:12 11/24/2014 
// Design Name: 
// Module Name:    serial_peak_finder 
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
module serial_peak_finder(
    input clk,
    input start, //First data point must be present at data_in on cycle when start is high (1-cycle pulse)
    input signed [31:0] data_in,//on each subsequent cycle, present a new datum until don
	 input [8:0] index,
    output reg [8:0] peak_index
    );
	 
	 reg signed [31:0] largest;
	 
	 always @(posedge clk) begin
		if (start) begin
			peak_index <= 0;
			largest <= data_in;
		end
		else begin
			if (data_in > largest) begin
				largest <= data_in;
				peak_index <= index;
			end
		end
	 end


endmodule
