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
	 input enable, //this should be high anytime the module is active, including the start pulse
    input start, //First data point must be present at data_in on cycle when start is high (1-cycle pulse)
    input [17:0] data_in,//on each subsequent cycle, present a new datum until done
    output reg [11:0] peak_index
    );
	 
	 reg [17:0] largest;
	 reg [11:0] cur_index = 0;
	 
	 always @(posedge clk) begin
		if (start) begin
			peak_index <= 0;
			largest <= data_in;
		end
		else begin
			if (data_in > largest) begin
				largest <= data_in;
				peak_index <= cur_index;
			end
		end
		if (enable)	cur_index <= cur_index + 1;
	 end


endmodule
