`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:35 12/05/2014 
// Design Name: 
// Module Name:    fft_to_ifft 
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
module fft_to_ifft(
    input wire clk,
    input wire reset,
    input wire [17:0] sample_from_codec,
    output wire signed [17:0] to_codec_data_real,
    output wire signed [17:0] to_codec_data_imag
    );
	 
	//////////////////////////////////////////////////////////////////////////
   // FFT MODULE DRIVER
   // IN: SAMPLE FROM CODEC
   // OUT: REAL AND IMAGINARY FFT DATA
   //////////////////////////////////////////////////////////////////////////

   wire [8:0] counter_addr;
   wire [17:0] fft_data_real_out;
   wire [17:0] fft_data_imag_out;
   wire read_valid;
   wire done;
	 wire [3:0] fft_output_scaling;
   wire write_enable_in;

   interface_fft_3 fft_driver (
  .clk(clk),
  .reset(reset),
  .sample_from_codec(sample_from_codec),
  .data_real_out(fft_data_real_out), // to IFFT MODULE- TEST!
  .data_imag_out(fft_data_imag_out),

  .counter_addr(counter_addr),
  .read_valid(read_valid),
  .done(done),
  .cur_output_scaling(fft_output_scaling),
  .write_enable_in(write_enable_in)
  );
  
  ///////////////////////////////////////////////////////////////////////////
  // IFFT DRIVER MODULE
  // IN: SHIFTED FFT DATA
  // OUT: AUDIO TO AC97
  ///////////////////////////////////////////////////////////////////////////

    //wire [17:0] dummy_imaginary_out;
	 wire [8:0] dummy_addr;
	 wire [3:0] ifft_output_scaling;
	 wire [17:0] ifft_data_real_out_scaled;
	 wire [17:0] ifft_data_imag_out_scaled;

    interface_ifft_1 ifft_driver_1(
      .clk(clk),
      .reset(reset),
      .auto_tuned_data({fft_data_imag_out, fft_data_real_out}),
      .result_done(read_valid),
      .result_addr(dummy_addr),
		.cur_output_scaling(ifft_output_scaling),

      .data_real_out(ifft_data_real_out_scaled),
      .data_imag_out(ifft_data_imag_out_scaled)
      );
		
	//////////////////////////////////////////////////////////////////////////
	//	RESCALING MODULE
	//
	//////////////////////////////////////////////////////////////////////////
	
	//wire [17:0] to_codec_data_real;
	//wire [17:0] to_codec_data_imag;
	
	rescaling_after_ifft rescale(
    .from_ifft_data_real(ifft_data_real_out_scaled),
    .from_ifft_data_imag(ifft_data_imag_out_scaled),
	 .fft_output_scaling(fft_output_scaling),
	 .ifft_output_scaling(ifft_output_scaling),
    .to_codec_data_real(to_codec_data_real),
    .to_codec_data_imag(to_codec_data_imag)
    );


endmodule
