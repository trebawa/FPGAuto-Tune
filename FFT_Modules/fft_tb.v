/*
	FFT - test bench
	Please see the license in the main file, fft.v
	
	Copyright 2014 MIT - Author: Michael Price (pricem@mit.edu)
*/

`timescale 1 ns / 1 ps

module fft_tb;

parameter Nb = 18;
parameter Dp = 16;
parameter log_depth = 10;

reg reset;
reg clk;

wire ready;

reg start;
reg write_enable_in;
reg [log_depth - 1 : 0] addr_in;
reg [log_depth - 1 : 0] addr_out;
reg read_enable_out;

reg [log_depth - 1 : 0] read_count;

wire signed [Nb - 1 : 0] output_accum_real;
wire signed [Nb - 1 : 0] output_accum_imag;

wire done;
wire read_valid;

reg signed [Nb - 1 : 0] data_real_in;
reg signed [Nb - 1 : 0] data_imag_in;
wire signed [Nb - 1 : 0] data_real_out;
wire signed [Nb - 1 : 0] data_imag_out;

reg [3 : 0] cur_log_depth;
reg cur_direction;
reg cur_real_mode;
wire [3 : 0] cur_output_scaling;

reg [3 : 0] input_log_depth;
reg input_direction;
reg input_real_mode;

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

//	Test bench stuff
task write_input_data(input integer N);
    integer counter;
    reg [2 * Nb - 1 : 0] input_array[0 : (1 << log_depth) - 1];
begin
    counter = 0;
    
    $readmemh("fft_tb_input.txt", input_array, 0, N - 1);
    @(posedge clk);
    write_enable_in = 1;
    for (counter = 0; counter < N; counter = counter + 1) begin
        addr_in = counter;
        {data_imag_in, data_real_in} = input_array[counter];
        @(posedge clk);
    end
    write_enable_in = 0;
    @(posedge clk);
end
endtask

task run_fft(input run_real_mode, input run_direction, input [3:0] run_log_depth);
    integer fd_out;
begin
    while (!ready) 
        @(posedge clk);
    //  TODO: Get this to work with command line plus-arguments.
    cur_real_mode = run_real_mode;
    cur_log_depth = run_log_depth;
    cur_direction = run_direction;
    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;
    while (!done)
        @(posedge clk);
    fd_out = $fopen("fft_tb_scaling.txt", "w");
    $fwrite(fd_out, "%d", cur_output_scaling);
    $fclose(fd_out);
end
endtask

task request_output_data(input integer N);
    integer counter;
begin
    @(posedge clk);
    read_enable_out = 1;
    for (counter = 0; counter < N; counter = counter + 1) begin
        addr_in = counter;
        @(posedge clk);
    end
    read_enable_out = 0;
    @(posedge clk);
end
endtask

task read_output_data(input integer N);
    integer counter;
    reg [2 * Nb - 1 : 0] output_array[0 : (1 << log_depth) - 1];
begin
    for (counter = 0; counter < N; counter = counter + 1) begin
        while (!read_valid)
            @(posedge clk);
        output_array[counter] = {data_imag_out, data_real_out};
        @(posedge clk);
    end
    $writememh("fft_tb_output.txt", output_array, 0, N - 1);
end
endtask

//  Time limit

initial begin
    #1000000 $finish;
end    


initial begin
	$dumpfile("fft_tb.vcd");
	$dumpvars(0, fft_tb);

    //  For some reason, $value$plusargs is a function and needs to have something
    //  looking at its return value.
    if ($value$plusargs("direction=%d", input_direction));
        //  $display("Set direction = %d", input_direction);
        
    if ($value$plusargs("real_mode=%d", input_real_mode));
        //  $display("Set real_mode = %d", input_real_mode);
        
    if ($value$plusargs("log_depth=%d", input_log_depth));
        //  $display("Set log_depth = %d", input_log_depth);
    
	addr_in <= 0;
	write_enable_in <= 0;
	
	addr_out <= 0;
	read_enable_out <= 0;
	
	reset <= 1;
	start <= 0;
	clk <= 0;
	read_count <= 0;

    #20 reset <= 0;
	 
	 //edit 6.111
	 input_log_depth <= 10;
	 input_direction <= 0;
	 input_real_mode <= 1;

	#100 write_input_data((1 << input_log_depth));
	#100 run_fft(input_real_mode, input_direction, input_log_depth);
	#100 fork
	    request_output_data((1 << input_log_depth));
	    read_output_data((1 << input_log_depth));
    join
	#10000 $finish;
end

always begin
	#5	clk <= !clk;
end

endmodule

