`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:32 12/02/2014
// Design Name:   scale_freq_select
// Module Name:   /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/scale_freq_select_test.v
// Project Name:  final_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: scale_freq_select
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module scale_freq_select_test;

	// Inputs
	reg [3:0] note_name;
	reg [2:0] note_octave;
	reg greater;
	reg [11:0] scale;
	reg start;
	reg clk;

	// Outputs
	wire done;
	wire [31:0] freq_desired;

	// Instantiate the Unit Under Test (UUT)
	scale_freq_select uut (
		.note_name(note_name), 
		.note_octave(note_octave), 
		.greater(greater), 
		.scale(scale), 
		.start(start), 
		.done(done), 
		.freq_desired(freq_desired),
		.clk(clk)
	);
	
	initial clk <= 0;
	always #5 clk <= !clk;

	initial begin
		// Initialize Inputs
		note_name = 2;
		note_octave = 4;
		greater = 1;
		scale = 12'b111111100000;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		start = 1;
		#10 start = 0;
		// Add stimulus here
		#100
		greater = 0;
		start = 1;
		#10 start = 0;
		

	end
      
endmodule

