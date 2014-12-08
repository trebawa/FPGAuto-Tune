`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:37 12/05/2014
// Design Name:   main_fsm
// Module Name:   /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/main_fsm_test.v
// Project Name:  final_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_fsm_test;

	// Inputs
	reg clk;
	reg [11:0] scale;
	reg fft_done;
	reg [8:0] fft_address;
	reg fft_read_valid;
	reg [17:0] data_in_real;
	reg [17:0] data_in_imag;
	reg [8:0] result_address;
	reg result_read_enable;

	// Outputs
	wire done;
	wire note_done;
	wire [3:0] note_name;
	wire [2:0] note_octave;
	wire [35:0] result_data;
	wire result_read_valid;

	// Instantiate the Unit Under Test (UUT)
	main_fsm uut (
    .clk(clk), 
    .done(done), 
    .note_done(note_done), 
    .note_name(note_name), 
    .note_octave(note_octave), 
    .fft_done(fft_done), 
    .fft_address(fft_address), 
    .fft_read_valid(fft_read_valid), 
    .data_in_real(data_in_real), 
    .data_in_imag(data_in_imag), 
    .result_address(result_address), 
    .result_data(result_data),
	 .scale(scale)
    );

	
	initial clk <= 0;
	always #1 clk <= !clk;
	
	//memories
	reg [17:0] realparts [0:511];
	reg [17:0] imagparts [0:511];
	
	reg [8:0] k;
	
	


	initial begin
		// Initialize Inputs
		fft_done = 0;
		fft_address = 0;
		fft_read_valid = 0;
		scale = 12'b111011010111;
		result_address = 0;
		
				$readmemb("a_real.list",realparts,0,511);
		$readmemb("a_imag.list",imagparts,0,511);

		

		// Wait 100 ns for global reset to finish
		#100;
        
		
		//for (k=0; k<=511; k=k+1) $display("%d:%h",k,realparts[k]);
		  
		// Add stimulus here
		fft_done = 1;
		fft_read_valid = 1;
			data_in_real = realparts[fft_address];
			data_in_imag = imagparts[fft_address];
			#2;
		while (fft_address < 511) begin
			fft_address = fft_address +1;
			data_in_real = realparts[fft_address];
			data_in_imag = imagparts[fft_address];
			#2;
		end
		fft_done <= 0;
		fft_address <= 0;
		while (!note_done) begin
		#2;
		end
		#2;
		$readmemb("b_real.list",realparts,0,511);
		$readmemb("b_imag.list",imagparts,0,511);
		fft_done = 1;
		fft_read_valid = 1;
			data_in_real = realparts[fft_address];
			data_in_imag = imagparts[fft_address];
			#2;
		while (fft_address < 511) begin
			fft_address = fft_address +1;
			data_in_real = realparts[fft_address];
			data_in_imag = imagparts[fft_address];
			#2;
		end
		
		

	end
      
endmodule

