//fft_interface.v -- just the interface module

///////////////////////////////////////////////////////////////////////////////
//  FFT DRIVER MODULE
//   
///////////////////////////////////////////////////////////////////////////////

module interface_fft_3(
  input wire clk,
  input wire reset,
  input wire [17:0] sample_from_codec, // ultimately from left_in_data and right_in_data from lab5audio module
  output wire [17:0] data_real_out,
  output wire [17:0] data_imag_out,
  // expose SRAM interface for main to read
  output reg [9:0] counter_addr,
  output wire read_valid,
  output wire done
);

  parameter Nb = 18;
  parameter Dp = 16;
  parameter log_depth = 10;
  parameter N = 1 << log_depth;

  //wire reset;
  //reg clk;

  wire ready;

  reg start = 1'b0;
  reg start_delay = 1'b0;

  reg write_enable_in = 1'b1;
  reg [log_depth - 1 : 0] addr_in  = 10'd0;
  reg [log_depth - 1 : 0] addr_out = 10'd0;
  reg read_enable_out = 1'b0;

  reg [log_depth - 1 : 0] read_count = 1'b0;

  wire signed [Nb - 1 : 0] output_accum_real;
  wire signed [Nb - 1 : 0] output_accum_imag;

  //wire done;
  //wire read_valid;

  reg signed [Nb - 1 : 0] data_real_in = 18'd0;
  reg signed [Nb - 1 : 0] data_imag_in = 18'd0;

  reg [3 : 0] cur_log_depth = 4'd10;
  reg cur_real_mode = 1'b1;
  wire cur_direction = 1'b0;
  wire [3:0] cur_output_scaling;
  
  reg first = 1'b1;
  // dummy assignment of addr_in to counter
  //reg [9:0] counter_addr = 10'd0;
  
fft #(
    .Nb(Nb),
    .Dp(Dp),
    .log_depth(log_depth)
) dut(
  .clk(clk), 
  .reset(reset),
  .ctl_ready(ready),
  .ctl_start(start), 
  .ctl_log_depth(cur_log_depth),
  .ctl_real_mode(cur_real_mode),
  .ctl_direction(cur_direction),
  .ctl_done(done),
  .ctl_output_scaling(cur_output_scaling),
  
  .data_address(addr_in),
  .data_read_enable(read_enable_out),
  .data_read_valid(read_valid),
  .data_read_data({data_imag_out, data_real_out}),
  .data_write_enable(write_enable_in),
  .data_write_data({data_imag_in, data_real_in})
);

always @(posedge clk) begin
  if (!reset) begin
  // write input data-- Step1
    if (write_enable_in) begin
      if (addr_in != N-1) begin
        data_real_in <= sample_from_codec; //from_ac97_data; --> needs to be 18 bits
        data_imag_in <= sample_from_codec; //from_ac97_data; --> needs to be 18 bits
        addr_in = addr_in + 1;
      end
  	 else begin
  		write_enable_in <= 1'b0;
  		addr_in <= 10'd0;
  	end
    end
    else if (read_enable_out && read_valid) begin // -- Step 3
      if (addr_in != N - 1) begin
        //real_output_fft <= data_real_out;
        //imag_output_fft <= data_imag_out;

        // data will appear on data_real_out and data_imag_out
        addr_in = addr_in + 1;
      end
  	 else begin
  		 // reset addr_in, read_enable, write_enable?
  		 addr_in <= 10'd0;
  		 read_enable_out <= 1'b0;
  		 write_enable_in <= 1'b1;
  		 first <= 1'b1;
  		 // ready <= 1'b1;
  	 end
    end
    else begin // run FFT -- Step 2
    //if (!ready) begin
        // turn ready low
        //ready<= 1'b0;
        // blip the start flag
    	 if (first) begin
    		start <= 1'b1;
    		first <= 1'b0;
    	 end
    	 else if (!first) start <= 1'b0;
    		 //start_delay <= start;
    		 //start <= (start && (~start_delay));
    		 //first <= 1'b0;
        if (done) read_enable_out <= 1'b1;
    //end
    end
    // dummy assignment of addr_in to counter
    counter_addr <= addr_in;
  end
end 

endmodule