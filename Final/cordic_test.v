`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:54 12/04/2014
// Design Name:   cordic
// Module Name:   /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/cordic_test.v
// Project Name:  final_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cordic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cordic_test;

	// Inputs
	reg [17:0] x_in;
	reg [17:0] y_in;
	reg nd;
	reg clk;

	// Outputs
	wire [23:0] x_out;
	wire [23:0] phase_out;
	wire rdy;

	// Instantiate the Unit Under Test (UUT)
	cordic uut (
		.x_in(x_in), 
		.y_in(y_in), 
		.nd(nd), 
		.clk(clk), 
		.x_out(x_out), 
		.phase_out(phase_out), 
		.rdy(rdy)
	);

	initial begin
		// Initialize Inputs
		x_in = 0;
		y_in = 0;
		nd = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

