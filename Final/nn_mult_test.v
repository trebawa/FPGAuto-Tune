`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:06:06 12/03/2014
// Design Name:   nn_multiplier
// Module Name:   /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/nn_mult_test.v
// Project Name:  final_project
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

module nn_mult_test;

	// Inputs
	reg [31:0] shift;
	reg unsigned [8:0] index;

	// Outputs
	wire [10:0] shifted_index;
	

	// Instantiate the Unit Under Test (UUT)
	nn_multiplier uut (
		.shift(shift), 
		.index(index), 
		.shifted_index(shifted_index)
	);

	initial begin
		// Initialize Inputs
		shift = 32'h080000;
		index = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		while (index<511) begin
			#10 index = index+1;
		end
        
		// Add stimulus here

	end
      
endmodule

