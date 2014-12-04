// module to translate output of note LUT to
// appropriate characters on hex display of labkit


module hex_display_LUT(
	input wire [3:0] note_name,
	input wire [3:0] note_octave,
	output reg [63:0] data
	);

// assign note octave to lowest hex display

assign data[3:0] = note_octave;

always @(*) begin
	case(note_name)
		4'h0: data[11:4] <= 8'hC0;
		4'h1: data[11:4] <= 8'hC7;
		4'h2: data[11:4] <= 8'hD0;
		4'h3: data[11:4] <= 8'hD7;
		4'h4: data[11:4] <= 8'hE0;
		4'h5: data[11:4] <= 8'hF0;
		4'h6: data[11:4] <= 8'hF7;
		4'h7: data[11:4] <= 8'h90;
		4'h8: data[11:4] <= 8'h97;
		4'h9: data[11:4] <= 8'hA0;
		4'hA: data[11:4] <= 8'hA7;
		4'hB: data[11:4] <= 8'hB0;
	endcase
end

endmodule
