`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:14 12/02/2014
// Design Name:   note_lut
// Module Name:   /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/note_lut_test.v
// Project Name:  final_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: note_lut
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module note_lut_test;

	// Inputs
	reg [31:0] freq_fun;

	// Outputs
	wire [3:0] note_name;
	wire [2:0] note_octave;
	wire greater;

	// Instantiate the Unit Under Test (UUT)
	note_lut uut (
		.freq_fun(freq_fun), 
		.note_name(note_name), 
		.note_octave(note_octave), 
		.greater(greater)
	);

	initial begin
		// Initialize Inputs
		freq_fun = 32'h105a025;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		while(freq_fun < 32'h70b88802) #5 freq_fun = freq_fun+32'h5a025;

	end
      
endmodule

