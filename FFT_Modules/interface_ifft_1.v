

///////////////////////////////////////////////////////////////////////////////
//  IFFT DRIVER MODULE
//   
///////////////////////////////////////////////////////////////////////////////

module interface_ifft_1(
  input wire clk,
  input wire reset,
  input wire [35:0] auto_tuned_data, // input from the main_fsm module
  input wire result_done,
  output reg [8:0] result_addr,

  output wire [17:0] data_real_out,
  output wire [17:0] data_imag_out,
);

  parameter Nb = 18;
  parameter Dp = 16;
  parameter log_depth = 9;
  parameter N = 1 << log_depth;

  //wire reset;
  //reg clk;

  wire ready;

  reg start = 1'b0;
  reg start_delay = 1'b0;

  reg write_enable_in = 1'b1;
  reg [log_depth - 1 : 0] addr_in  = 9'd0;
  reg [log_depth - 1 : 0] addr_out = 9'd0;
  reg read_enable_out = 1'b0;

  reg [log_depth - 1 : 0] read_count = 1'b0;

  wire signed [Nb - 1 : 0] output_accum_real;
  wire signed [Nb - 1 : 0] output_accum_imag;

  wire done;
  wire read_valid;

  reg signed [Nb - 1 : 0] data_real_in = 18'd0;
  reg signed [Nb - 1 : 0] data_imag_in = 18'd0;

  reg [3 : 0] cur_log_depth = log_depth;
  reg cur_real_mode = 1'b0;
  wire cur_direction = 1'b1;
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
  // write only if done is high from the main module
    if (write_enable_in) begin
      if (result_done) begin
        if (addr_in != N-1) begin
          data_real_in <= auto_tuned_data[35:18]; // real part of shifted data
          data_imag_in <= auto_tuned_data[17:0]; // imaginary part of shifted data
          addr_in = addr_in + 1;
        end
      end
     else begin
      write_enable_in <= 1'b0;
      addr_in <= 9'd0;
    end
    end
    else if (read_enable_out && read_valid) begin // -- Step 3
      if (addr_in != N - 1) begin
        // data will appear on data_real_out and data_imag_out
        addr_in = addr_in + 1;
      end
     else begin
       // reset addr_in, read_enable, write_enable?
       addr_in <= 9'd0;
       read_enable_out <= 1'b0;
       write_enable_in <= 1'b1;
       first <= 1'b1;
       // ready <= 1'b1;
     end
    end
    else begin // run IFFT -- Step 2
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
    result_addr <= addr_in;
  end
end 

endmodule