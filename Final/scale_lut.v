`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:14 11/30/2014 
// Design Name: 
// Module Name:    scale_freq_select 
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
module scale_freq_select(
    input [3:0] note_name,
    input [2:0] note_octave,
	 input greater,
	 input [11:0] scale, //set of bits specifying whether notes are to be included in the scale - [B:C]
	 input start,
	 input clk,
	 output reg done = 1,
    output reg [31:0] freq_desired
    );
	 
	 reg [3:0] current_note_a = 0;
	 reg [3:0] current_note_b = 0;
	 reg [2:0] octave_a = 0;
	 reg [2:0] octave_b = 0;
	 
	 reg [3:0] act_note = 0;
	 reg [2:0] act_octave = 0; 
	 
	 reg [31:0] note_table [0:11];//sixth octave frequencies 11Q32
	 initial begin
		note_table[0] = 32'h41680943;//C6
		note_table[1] = 32'h454bb03a;//C#6
		note_table[2] = 32'h496a8b8f;//D6
		note_table[3] = 32'h4dc82080;//...
		note_table[4] = 32'h526829e4;
		note_table[5] = 32'h574e9b58;
		note_table[6] = 32'h5c7fa49f;
		note_table[7] = 32'h61ffb539;
		note_table[8] = 32'h67d3802a;
		note_table[9] = 32'h6e000000;
		note_table[10] = 32'h748a7b12;
		note_table[11] = 32'h7b788802;
	end
	 
	 always @(posedge clk) begin
		if (start) begin 
			done <= 0;
			current_note_a <= note_name;
			current_note_b <= note_name;
			octave_a <= note_octave;
			octave_b <= note_octave;
		end
		else if (!done) begin
			if (greater && scale[current_note_a]) begin //this is so we lean towards the proper side
				done <= 1;
				act_note <= current_note_a;
				act_octave <= octave_a;
			end
			else if (scale[current_note_b]) begin
				done <= 1;
				act_note <= current_note_b;
				act_octave <= octave_b;
			end
			else if (!greater && scale[current_note_a]) begin
				done <= 1;
				act_note <= current_note_a;
				act_octave <= octave_a;
			end
			else begin 
				if (current_note_a===4'hB) begin  //these two statements make sure notes are cyclic
					current_note_a <= 4'h0;
					octave_a <= octave_a + 1;
				end
				else current_note_a <= current_note_a+1;
				if (current_note_b===4'h0) begin
					current_note_b <= 4'hB;
					octave_b <= octave_b - 1;
				end
				else current_note_b <= current_note_b-1;
			end
		end
	 end
	
	 
	always @(*) begin
		if (act_octave > 3'd6) begin
			freq_desired = note_table[act_note] << (act_octave-6); //just in case
		end
		else freq_desired = note_table[act_note] >> (6-act_octave);
	end
	 
	

	//part 1: find the closest note in the scale to the given note (always block)
	
	//part 2: find the frequency corresponding to that note in octave 6 (or whatever the highest one is - but
	//changing that changes the fixed-point format). We use the highest one because that way we get the most precision.
	//this is done by indexing with the result from part 6
	
	//part 3: shift that frequency right by (6-note_octave) bits and output (this is just careful wiring)
	
endmodule
