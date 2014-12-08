`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:41 11/29/2014
// Design Name:   freq_estimator
// Module Name:   C:/Users/Trevor/Google Drive/Classwork/6.111/Final project/Code/Final/freq_est_test.v
// Project Name:  Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: freq_estimator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module freq_est_test;

	// Inputs
	reg [31:0] max_phase;
	reg [8:0] max_index;
	reg clk;
	reg start;

	// Outputs
	wire done;
	wire [31:0] frequency;

	// Instantiate the Unit Under Test (UUT)
	freq_estimator uut (
		.max_phase(max_phase), 
		.max_index(max_index), 
		.clk(clk), 
		.start(start), 
		.done(done), 
		.frequency(frequency)
	);

	initial clk <= 0;
	always #5 clk <= !clk;

	initial begin
		// Initialize Inputs
		max_phase = 0;
		max_index = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		max_phase = 32'h100000;
		max_index = 10'd253;
		//max_freq = 31'h1B800000;
		start = 1;
		#10;
		start = 0;
		
		#500
        
		// Add stimulus here
		max_phase = 32'h409926; //middle C!
		//max_freq = 32'h1B800000;
		start = 1;
		#10;
		start = 0;

	end
      
endmodule

