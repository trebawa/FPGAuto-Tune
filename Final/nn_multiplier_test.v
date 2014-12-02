`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:53 11/24/2014
// Design Name:   nn_multiplier
// Module Name:   /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/nn_multiplier_test.v
// Project Name:  Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: nn_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module nn_multiplier_test;

	// Inputs
	reg clk;
	reg [11:0] a; //base address - 11 bits are usable, one is for overflow
	reg [16:0] b;

	// Outputs
	wire [11:0] p; //output address

	// Instantiate the Unit Under Test (UUT)
	nn_multiplier uut (
		.clk(clk), 
		.a(a), 
		.b(b), 
		.p(p)
	);
	
	initial clk <= 0;
	always #5 clk <= !clk;

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		b=18'h10000; //2^16 - should be 1 in FP (1 integer bit, 16 fraction bits)
		for (a  = 0; a < 12'h7FF; a = a +1) begin //test indices 0 through 16 for now
			#10;
		end
		
		b=18'h8000; //2^15 - should be 1/2 in FP (1 integer bit, 16 fraction bits)
		for (a = 0; a < 12'h7FF; a = a +1) begin //test indices 0 through 16 for now
			//a=i;
			#10;
		end
        		
		b=18'h18000; //should be 1.5 in FP (1 integer bit, 16 fraction bits)
		for (a = 0; a < 12'h7FF; a = a +1) begin //test indices 0 through 16 for now
			//a=i;
			#10;
		end
	end
      
endmodule

