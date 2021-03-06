`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:20:39 11/25/2014
// Design Name:   serial_peak_finder
// Module Name:   /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/peak_finder_test.v
// Project Name:  Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serial_peak_finder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module peak_finder_test;

	// Inputs
	reg clk;
	reg enable;
	reg start;
	reg [31:0] data_in;
	reg [8:0] index;

	// Outputs
	wire [11:0] peak_index;

	// Instantiate the Unit Under Test (UUT)
	serial_peak_finder uut (
		.clk(clk), 
		.index(index), 
		.start(start), 
		.data_in(data_in), 
		.peak_index(peak_index)
	);
	
	initial clk <= 0;
	always #1 clk <= !clk;

	initial begin
		// Initialize Inputs
		enable = 0;
		start = 0;
		data_in = 0;
		index = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		enable = 1;
		for (data_in = 0; data_in < 18'hFFF; data_in = data_in+14) begin
			if (data_in===0) start = 1;
			else start = 0;
			
			index <= index+1;
			#2;
		end
		for (data_in = 18'hFFF; data_in > 0; data_in = data_in-28) begin
			index <= index+1;
			#2;
		end
		
		enable = 0;
        
		// Add stimulus here

	end
      
endmodule

