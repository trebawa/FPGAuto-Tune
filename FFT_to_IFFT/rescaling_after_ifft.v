`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:11 12/05/2014 
// Design Name: 
// Module Name:    rescaling_after_ifft 
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
module rescaling_after_ifft(
    input wire [17:0] from_ifft_data_real,
    input wire [17:0] from_ifft_data_imag,
	 input wire [3:0]	fft_output_scaling,
	 input wire [3:0] ifft_output_scaling,
    output reg [17:0] to_codec_data_real,
    output reg [17:0] to_codec_data_imag
    );
	 
	 parameter log_depth = 9;
	 
	 always @(*) begin
		to_codec_data_real <= (from_ifft_data_real >> log_depth) << (fft_output_scaling + ifft_output_scaling);
		to_codec_data_imag <= (from_ifft_data_imag >> log_depth) << (fft_output_scaling + ifft_output_scaling);
	 end
	 
endmodule
