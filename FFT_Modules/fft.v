/*
	Fixed-point, low-speed FFT with real valued option and block floating point capability.
	
	Copyright 2014 MIT - Author: Michael Price (pricem@mit.edu)
	
	License:
	This code may be used only with written permission of the author.  
	It shall not be published or reproduced publicly, and can be transmitted
	or modified with the author's permission.
	
	Usage: 
	- Synchronous reset
	- Write data to input memory (data_* behaves like an SRAM interface)
	  Data can be written in arbitrary order
	- Set command parameters: 
	    ctl_log_depth (the base-2 log of the desired FFT length)
	    ctl_real_mode (set to 1 if your input data is purely real; FFT will run faster)
	    ctl_direction (set to 0 for FFT, 1 for IFFT)
	- Supply a positive pulse on ctl_start
	- Wait for a positive pulse on ctl_done
	- Read the scale factor out of ctl_output_scaling
	  This is the number of bits the data have been shifted to prevent overflow.
	  For example, if output_scaling = 3, then you need to multiply the results
	  by 8.  If you don't care about the absolute scaling, you can ignore this.
	- Read data out using data_* SRAM-like interface
	
	Caveats:
	- Inverse FFT output is not normalized.  If you take the FFT of something and then
	  the IFFT, the result will be the original signal multiplied by N.
	
	This module is supplied with a test bench as well as Python code to operate
	the test bench (provided you have certain Python libraries and Icarus Verilog).
*/

module fft #(
    parameter Nb = 18,  //  total number of bits in real number representation
    parameter Dp = 16,  //  number of bits to the right of the decimal point
    parameter log_depth = 10,   //  maximum size supported
    parameter debug_display = 0
) (
    input clk,
    input reset,
    
    output reg ctl_ready,
    input ctl_start,
    input [3:0] ctl_log_depth,
    input ctl_real_mode,
    input ctl_direction,
    output reg ctl_done,
    output reg [3:0] ctl_output_scaling,
    
    input [log_depth - 1 : 0] data_address,
    input data_read_enable,
    output reg data_read_valid,
    output reg [2 * Nb - 1 : 0] data_read_data,
    input data_write_enable,
    input [2 * Nb - 1 : 0] data_write_data
);

parameter FFT_IDLE = 4'h0;
parameter FFT_REAL_PREPROCESS = 4'h1;
parameter FFT_COMPLEX_FFT = 4'h2;
parameter FFT_REAL_POSTPROCESS = 4'h3;
parameter FFT_FLUSH = 4'h4;

/*	Scratch memories
	The "destination" memory is written from the result of the current processing step and read from the main output port
	The "source" memory is written from the main input port (e.g. time domain data) and read to get values for the current processing step
*/
reg scratch_sel;

wire scratch1_write_enable;
wire [log_depth - 1 : 0] scratch1_write_addr;
wire [2 * Nb - 1 : 0] scratch1_write_data;
wire scratch1_read_enable;
wire [log_depth - 1 : 0] scratch1_read1_addr;
wire [2 * Nb - 1 : 0] scratch1_read1_data;
wire [log_depth - 1 : 0] scratch1_read2_addr;
wire [2 * Nb - 1 : 0] scratch1_read2_data;

wire [2 + 3 * log_depth + 2 * Nb - 1 : 0] scratch1_in;
wire [4 * Nb - 1 : 0] scratch1_out;

wire scratch2_write_enable;
wire [log_depth - 1 : 0] scratch2_write_addr;
wire [2 * Nb - 1 : 0] scratch2_write_data;
wire scratch2_read_enable;
wire [log_depth - 1 : 0] scratch2_read1_addr;
wire [2 * Nb - 1 : 0] scratch2_read1_data;
wire [log_depth - 1 : 0] scratch2_read2_addr;
wire [2 * Nb - 1 : 0] scratch2_read2_data;

wire [2 + 3 * log_depth + 2 * Nb - 1 : 0] scratch2_in;
wire [4 * Nb - 1 : 0] scratch2_out;

/*	Multiplex memory connections: active_scratch is destination.
	active_scratch = 0 -> scratch1 is active, scratch2 is inactive
	active_scratch = 1 -> scratch1 is inactive, scratch2 is active
*/
reg scratch_src_read_enable;
reg [log_depth - 1 : 0] scratch_src_read1_addr;
reg [log_depth - 1 : 0] scratch_src_read2_addr;

reg scratch_src_write_enable;
reg [log_depth - 1 : 0] scratch_src_write_addr;
reg [2 * Nb - 1 : 0] scratch_src_write_data;

reg scratch_src_read_enable_muxed;
reg [log_depth - 1 : 0] scratch_src_read1_addr_muxed;
reg [log_depth - 1 : 0] scratch_src_read2_addr_muxed;

reg scratch_src_read_valid;
//  Assign read_valid since Verilog version of ram_dp doesn't do it for us.
always @(posedge clk) begin
    scratch_src_read_valid <= scratch_src_read_enable_muxed;
end

wire [2 * Nb - 1 : 0] scratch_src_read1_data;
wire [2 * Nb - 1 : 0] scratch_src_read2_data;

reg scratch_dest_write_enable;
reg [log_depth - 1 : 0] scratch_dest_write_addr;
reg [2 * Nb - 1 : 0] scratch_dest_write_data;

wire [2 + 3 * log_depth + 2 * Nb - 1 : 0] scratch_src_in;
wire [4 * Nb - 1 : 0] scratch_src_out;
wire [2 + 3 * log_depth + 2 * Nb - 1 : 0] scratch_dest_in;
wire [4 * Nb - 1 : 0] scratch_dest_out;

assign {scratch1_read_enable, scratch1_read1_addr, scratch1_read2_addr, scratch1_write_enable, scratch1_write_addr, scratch1_write_data} = scratch1_in;
assign scratch1_out = {scratch1_read1_data, scratch1_read2_data};
assign {scratch2_read_enable, scratch2_read1_addr, scratch2_read2_addr, scratch2_write_enable, scratch2_write_addr, scratch2_write_data} = scratch2_in;
assign scratch2_out = {scratch2_read1_data, scratch2_read2_data};

assign scratch_src_in = {scratch_src_read_enable_muxed, scratch_src_read1_addr_muxed, scratch_src_read2_addr_muxed, scratch_src_write_enable, scratch_src_write_addr, scratch_src_write_data};
assign {scratch_src_read1_data, scratch_src_read2_data} = scratch_src_out;
assign scratch_dest_in = {{(1 + 2 * log_depth){1'b0}}, scratch_dest_write_enable, scratch_dest_write_addr, scratch_dest_write_data};
//	assign {} = scratch_dest_out;	- nothing to assign, we don't care about scratch_dest_out

assign scratch1_in = scratch_sel ? scratch_src_in : scratch_dest_in;
assign scratch2_in = scratch_sel ? scratch_dest_in : scratch_src_in;
assign scratch_dest_out = scratch_sel ? scratch2_out : scratch1_out;
assign scratch_src_out = scratch_sel ? scratch1_out : scratch2_out;

//  There are physically 2 scratch memories, labeled scratch1 and scratch2.
ram_dp scratch1(
	.clk(clk),
	.reset(reset),
	.rw_addr(scratch1_write_enable ? scratch1_write_addr : scratch1_read1_addr),
	.read1_enable(scratch1_read_enable),
	.read1_data(scratch1_read1_data),
	.write_enable(scratch1_write_enable),
	.write_data(scratch1_write_data),
	.read2_addr(scratch1_read2_addr),
	.read2_enable(scratch1_read_enable),
	.read2_data(scratch1_read2_data)
);
defparam scratch1.M = log_depth;
defparam scratch1.Nb = 2 * Nb;

ram_dp scratch2(
	.clk(clk),
	.reset(reset),
	.rw_addr(scratch2_write_enable ? scratch2_write_addr : scratch2_read1_addr),
	.read1_enable(scratch2_read_enable),
	.read1_data(scratch2_read1_data),
	.write_enable(scratch2_write_enable),
	.write_data(scratch2_write_data),
	.read2_addr(scratch2_read2_addr),
	.read2_enable(scratch2_read_enable),
	.read2_data(scratch2_read2_data)
);
defparam scratch2.M = log_depth;
defparam scratch2.Nb = 2 * Nb;

//	Twiddle parameters (sin/cos table)
//  TODO: The size of the ROM can be cut down substantially by
//  adding some wrapper logic to use only [0, pi/2] and maybe only 1 of sin/cos.

reg twiddle_read_enable;
reg [log_depth - 1 : 0] twiddle_read_address;
wire [2 * Nb - 1 : 0] twiddle_read_data;
wire twiddle_read_valid;

twiddle_lut #(
    .word_size(Nb * 2),
    .log_depth(log_depth)
) twiddle_rom(
    .clk(clk),
    .reset(reset),
    .read_address(twiddle_read_address),
    .read_enable(twiddle_read_enable),
    .read_valid(twiddle_read_valid),
    .read_data(twiddle_read_data)
);

/*  State variables */
reg [3:0] state;
reg [3:0] state_next;
reg [log_depth : 0] level;
reg [log_depth : 0] counter;
reg [log_depth : 0] read_counter;

integer cur_log_depth;
reg cur_direction;
reg cur_real_mode;
integer cur_output_scaling;

integer M;
integer M_fft;

reg scale_current_stage;
reg scale_next_stage;

/*  Tasks and functions */

function signed [Nb - 1 : 0] fp_mult(input reg signed [Nb - 1 : 0] x, input reg signed [Nb - 1 : 0] y);
    reg signed [Nb * 2 - 1 : 0] prod;
    reg signed [Nb * 2 - 1 : 0] prod_limit;
begin
    prod = x * y;
    prod_limit = 0;
    prod_limit[Nb + Dp - 1] = 1;
    if (prod > prod_limit)
        fp_mult = ((1 << (Nb - 1)) - 1);
    else
        fp_mult = (prod >> Dp);
end
endfunction

function [2 * Nb - 1 : 0] complex_mult(input reg [2 * Nb - 1 : 0] x, input reg [2 * Nb - 1 : 0] y);
    reg signed [Nb - 1 : 0] result_real;
    reg signed [Nb - 1 : 0] result_imag;
    reg [2 * Nb - 1 : 0] result;
begin
    result_real = fp_mult(x[0 +: Nb], y[0 +: Nb]) - fp_mult(x[Nb +: Nb], y[Nb +: Nb]);
    result_imag = fp_mult(x[0 +: Nb], y[Nb +: Nb]) + fp_mult(x[Nb +: Nb], y[0 +: Nb]);
    result[0 +: Nb] = result_real;
    result[Nb +: Nb] = result_imag;
    complex_mult = result;
end
endfunction

function [2 * Nb - 1 : 0] complex_add(input reg [2 * Nb - 1 : 0] x, input reg [2 * Nb - 1 : 0] y);
    reg signed [Nb - 1 : 0] x_real;
    reg signed [Nb - 1 : 0] x_imag;
    reg signed [Nb - 1 : 0] y_real;
    reg signed [Nb - 1 : 0] y_imag;
    reg [2 * Nb - 1 : 0] result;
begin
    x_real = x[0 +: Nb];
    x_imag = x[Nb +: Nb];
    y_real = y[0 +: Nb];
    y_imag = y[Nb +: Nb];
    result[0 +: Nb] = x_real + y_real;
    result[Nb +: Nb] = x_imag + y_imag;
    complex_add = result;
end
endfunction

function [2 * Nb - 1 : 0] complex_subtract(input reg [2 * Nb - 1 : 0] x, input reg [2 * Nb - 1 : 0] y);
    reg [2 * Nb - 1 : 0] result;
begin
    result[0 +: Nb] = x[0 +: Nb] - y[0 +: Nb];
    result[Nb +: Nb] = x[Nb +: Nb] - y[Nb +: Nb];
    complex_subtract = result;
end
endfunction

function [2 * Nb - 1 : 0] conj(input reg [2 * Nb - 1 : 0] x);
    reg signed [Nb - 1 : 0] x_real;
    reg signed [Nb - 1 : 0] x_imag;
    reg [2 * Nb - 1 : 0] result;
begin
    x_real = x[0 +: Nb];
    x_imag = x[Nb +: Nb];
    result[0 +: Nb] = x_real;
    result[Nb +: Nb] = -x_imag;
    conj = result;
end
endfunction

function needs_scaling_real(input reg signed [Nb - 1 : 0] x);
    reg signed [Nb - 1 : 0] x_max;
    reg signed [Nb - 1 : 0] x_min;
begin
    x_max = (1 << Dp);
    x_min = -(1 << Dp);
    //  if (debug_display) $display("%t: FFT needs_scaling_real: comparing value %h to max %h and min %h", $time, x, x_max, x_min);
    needs_scaling_real = (x >= x_max) || (x <= x_min);
end
endfunction

function needs_scaling(input reg [2 * Nb - 1 : 0] x);
    needs_scaling = (needs_scaling_real(x[0 +: Nb]) || needs_scaling_real(x[Nb +: Nb]));
endfunction

function needs_scaling_input(input reg [63 : 0] x);
    reg signed [Nb - 1 : 0] xr;
    reg signed [Nb - 1 : 0] xi;
begin
    xr = x[0 +: Nb];
    xi = x[32 +: Nb];
    //  if (debug_display) $display("%t FFT needs_scaling_input: real = %h (%d) imag = %h (%d)", $time, xr, needs_scaling_real(xr), xi, needs_scaling_real(xi));
    needs_scaling_input = (needs_scaling_real(xr) || needs_scaling_real(xi));
end
endfunction

function [2 * Nb - 1 : 0] scale_if_necessary(input reg [2 * Nb - 1 : 0] x);
    reg signed [Nb - 1 : 0] x_real;
    reg signed [Nb - 1 : 0] x_imag;
    reg [2 * Nb - 1 : 0] result;
begin
    x_real = x[0 +: Nb];
    x_imag = x[Nb +: Nb];
    if (scale_current_stage) begin
        result[0 +: Nb] = x_real >>> 1;
        result[Nb +: Nb] = x_imag >>> 1;
    end
    else begin
        result[0 +: Nb] = x_real;
        result[Nb +: Nb] = x_imag;
    end
    scale_if_necessary = result;
end
endfunction

task request_preprocess(input integer count);
    reg [log_depth : 0] read1_addr;
    reg [log_depth : 0] read2_addr;
begin
    read1_addr = count * 2;
    read2_addr = count * 2 + 1;

    scratch_src_read1_addr <= read1_addr;
    scratch_src_read2_addr <= read2_addr;
    scratch_src_read_enable <= 1;
    
    //  if (debug_display) $display("%t FFT request_preprocess counter = %d addr1 = %d addr2 = %d", $time, count, read1_addr, read2_addr);
end
endtask

task run_preprocess(input integer count);
    reg [2 * Nb - 1 : 0] z1;
    reg [2 * Nb - 1 : 0] z2;
    reg [2 * Nb - 1 : 0] result;
begin
    z1 = scale_if_necessary(scratch_src_read1_data);
    z2 = scale_if_necessary(scratch_src_read2_data);
    result[0 +: Nb] = z1[0 +: Nb];
    result[Nb +: Nb] = z2[0 +: Nb];

    scratch_dest_write_addr <= count;
    scratch_dest_write_enable <= 1;
    scratch_dest_write_data <= result;
end
endtask

task request_complex_fft(input integer count);
    reg [log_depth : 0] addr_A;
	 reg [log_depth : 0] addr_A_base;
	 reg [log_depth : 0] addr_A_var;
    reg [log_depth : 0] addr_B;
    reg [log_depth : 0] addr_diff;
    reg [log_depth : 0] mask;
    reg [log_depth : 0] twiddle_addr;
	 integer i;
begin
    mask = ~(((1 << M_fft) - 1) >> (level)) >> 1;
    addr_diff = (1 << (M_fft - level - 1));

    //	addr_A = ((count % (1 << (M_fft - 1)) & mask) << 1) + (count % (1 << (M_fft - level - 1)));
	//      Compute addr_A without modulo operator
	addr_A_var = counter;
	addr_A_base = counter;
	for (i = 0; i < log_depth; i = i + 1) begin
		if (i >= M_fft - level - 1)
			addr_A_var[i] = 0;
		if (i >= M_fft - 1)
			addr_A_base[i] = 0;
	end
	addr_A = ((addr_A_base & mask) << 1) + addr_A_var;
    addr_B = addr_A + addr_diff;

	twiddle_addr = (counter >> (M_fft - level - 1)) << (log_depth - level - 1);
	
	twiddle_read_address <= twiddle_addr;
	twiddle_read_enable <= 1;

    scratch_src_read1_addr <= addr_A;
    scratch_src_read2_addr <= addr_B;
    scratch_src_read_enable <= 1;
    
    if (debug_display) $display("%t FFT request_complex_fft counter = %d addr_A = %d addr_B = %d twiddle = %d", $time, count, addr_A, addr_B, twiddle_addr);
end
endtask

task run_complex_fft(input integer count);
    reg [2 * Nb - 1 : 0] dest_val;
    reg [2 * Nb - 1 : 0] src_a;
    reg [2 * Nb - 1 : 0] src_b;
    reg [2 * Nb - 1 : 0] twiddle_b;
    reg [2 * Nb - 1 : 0] src_b_twiddled;
    reg [2 * Nb - 1 : 0] result;
    
begin
    src_a = scale_if_necessary(scratch_src_read1_data);
    src_b = scale_if_necessary(scratch_src_read2_data);
    twiddle_b = cur_direction ? conj(twiddle_read_data) : twiddle_read_data;
    src_b_twiddled = complex_mult(src_b, twiddle_b);
    result = complex_add(src_a, src_b_twiddled);
    
    if (needs_scaling(result))
	    scale_next_stage <= 1;
	    
    scratch_dest_write_addr <= count;
    scratch_dest_write_enable <= 1;
    scratch_dest_write_data <= result;
    
    if (debug_display) $display("%t FFT run_complex_fft counter = %d src_a = (%h, %h) src_b = (%h, %h) twiddle_b = (%h, %h), src_b_twiddled = (%h, %h), result = (%h, %h)", $time, count, src_a[0 +: Nb], src_a[Nb +: Nb], src_b[0 +: Nb], src_b[Nb +: Nb], twiddle_b[0 +: Nb], twiddle_b[Nb +: Nb], src_b_twiddled[0 +: Nb], src_b_twiddled[Nb +: Nb], result[0 +: Nb], result[Nb +: Nb]);
end
endtask

task request_postprocess(input integer count);
    reg [log_depth : 0] addr_A;
    reg [log_depth : 0] addr_B;
	 integer i;
begin
    addr_A = count;
	 addr_B = ((1 << M_fft) - count);
		for (i = 0; i < log_depth; i = i + 1) begin
			if (i >= M_fft) begin
				addr_A[i] = 0;
				addr_B[i] = 0;
			end
		end
    scratch_src_read1_addr <= addr_A;
    scratch_src_read2_addr <= addr_B;
    scratch_src_read_enable <= 1;
    twiddle_read_address <= count << (log_depth - M);
    twiddle_read_enable <= 1;
    
    //  if (debug_display) $display("%t FFT request_postprocess counter = %d addr_A = %d addr_B = %d twiddle = %d", $time, count, addr_A, addr_B, count << (log_depth - M));
end
endtask

task run_postprocess(input integer count);
    reg [2 * Nb - 1 : 0] src_a;
    reg [2 * Nb - 1 : 0] src_b;
    reg [2 * Nb - 1 : 0] z_sum;
    reg [2 * Nb - 1 : 0] z_diff;
    reg [2 * Nb - 1 : 0] w;
    reg signed [Nb + 1 : 0] result_real_int;  //  extra bits to prevent intermediate overflow
    reg signed [Nb + 1 : 0] result_imag_int;
    reg signed [Nb + 1 : 0] result_real;
    reg signed [Nb + 1 : 0] result_imag;
    reg [2 * Nb - 1 : 0] result;

begin
    src_a = scale_if_necessary(scratch_src_read1_data);
    src_b = scale_if_necessary(scratch_src_read2_data);
    w = cur_direction ? conj(twiddle_read_data) : twiddle_read_data;
    
    z_sum = complex_add(src_a, src_b);
    z_diff = complex_subtract(src_a, src_b);
    
    result_real = fp_mult(w[0 +: Nb], z_sum[Nb +: Nb]);
    result_real = result_real + fp_mult(w[Nb +: Nb], z_diff[0 +: Nb]);
    result_real_int = result_real + $signed(z_sum[0 +: Nb]);
    result_real = result_real_int >>> 1;
    
    result_imag = - fp_mult(w[0 +: Nb], z_diff[0 +: Nb]);
    result_imag = result_imag + fp_mult(w[Nb +: Nb], z_sum[Nb +: Nb]);
    result_imag_int = result_imag + $signed(z_diff[Nb +: Nb]);
    result_imag = result_imag_int >>> 1;
    
    result[0 +: Nb] = result_real;
    result[Nb +: Nb] = result_imag;

    scratch_dest_write_addr <= count;
    scratch_dest_write_enable <= 1;
    scratch_dest_write_data <= result;
    
    if (debug_display) $display("%t FFT run_postprocess counter = %d src_a = (%h, %h) src_b = (%h, %h) result = (%h, %h)", $time, count, src_a[0 +: Nb], src_a[Nb +: Nb], src_b[0 +: Nb], src_b[Nb +: Nb], result[0 +: Nb], result[Nb +: Nb]);
end
endtask

task update_scaling;
    integer scale_bits_updated;
begin
    scale_current_stage <= scale_next_stage;
    scale_next_stage <= 0;
    
    scale_bits_updated = scale_next_stage ? cur_output_scaling + 1 : cur_output_scaling;
    cur_output_scaling <= scale_bits_updated;
    
    if (debug_display) $display("%t FFT update_scaling: current stage scale flag is %d, total bits scaling = %d", $time, scale_next_stage, scale_bits_updated);
end
endtask


/*  Combinational logic */
always @(*) begin
    M = cur_log_depth;
    M_fft = cur_real_mode ? M - 1 : M;

    if (state == FFT_IDLE) begin
        data_read_valid = scratch_src_read_valid;
        data_read_data = scratch_src_read1_data;
        
        scratch_src_write_enable = data_write_enable;
        scratch_src_write_addr = data_address;
        scratch_src_write_data = data_write_data;
        
        scratch_src_read_enable_muxed = data_read_enable;
        scratch_src_read1_addr_muxed = data_address;
        scratch_src_read2_addr_muxed = 0;
    end
    else begin
        data_read_valid = 0;
        data_read_data = 0;
        
        scratch_src_write_enable = 0;
        scratch_src_write_addr = 0;
        scratch_src_write_data = 0;
        
        scratch_src_read_enable_muxed = scratch_src_read_enable;
        scratch_src_read1_addr_muxed = scratch_src_read1_addr;
        scratch_src_read2_addr_muxed = scratch_src_read2_addr;
    end
end

//	Sequential logic
always @(posedge clk) if (reset) begin

    //  Initialize control interface
    ctl_ready <= 0;
    ctl_done <= 0;
    ctl_output_scaling <= 0;

    //  Initialize internal state
	level <= 0;
	counter <= 0;
	read_counter <= 0;
	scratch_sel <= 0;
	
	cur_log_depth <= 0;
	cur_real_mode <= 0;
	cur_direction <= 0;
	cur_output_scaling <= 0;
	
	scale_current_stage <= 0;
	scale_next_stage <= 0;
	
	state <= FFT_IDLE;
	state_next <= FFT_IDLE;
	
	scratch_src_read1_addr <= 0;
	scratch_src_read_enable <= 0;
	scratch_src_read2_addr <= 0;

    scratch_dest_write_addr <= 0;
	scratch_dest_write_enable <= 0;
	scratch_dest_write_data <= 0;

	twiddle_read_address <= 0;
	twiddle_read_enable <= 0;
end
else begin

    //  Default interface state
    ctl_ready <= 0;
    ctl_done <= 0;
        
	scratch_src_read_enable <= 0;
	scratch_dest_write_enable <= 0;
	
	twiddle_read_enable <= 0;
	
	case (state)

	FFT_IDLE: begin
		counter <= 0;
		read_counter <= 0;
		
		ctl_ready <= 1;
		cur_output_scaling <= 0;
		
		if (ctl_ready && ctl_start) begin
            ctl_ready <= 0;
            cur_log_depth <= ctl_log_depth;
            cur_direction <= ctl_direction;
            cur_real_mode <= ctl_real_mode;

            update_scaling;
			if (ctl_real_mode)
				state <= FFT_REAL_PREPROCESS;
			else
				state <= FFT_COMPLEX_FFT;
		end	
		
		//  Watch for input that will need scaling during either preprocessing or first FFT stage
		if (data_write_enable && needs_scaling_input(data_write_data))
		    scale_next_stage <= 1;
	end
	
	FFT_REAL_PREPROCESS: begin
	
	    if (scratch_src_read_valid) begin
	        run_preprocess(read_counter);
	        if (read_counter < (1 << M_fft) - 1)
    	        read_counter <= read_counter + 1;
    	    else begin
    	    	state_next <= FFT_COMPLEX_FFT;
    			state <= FFT_FLUSH;
    	    end
	    end

		if (counter <= (1 << M_fft) - 1) begin
		    request_preprocess(counter);
			counter <= counter + 1;
	    end
	end
	
	FFT_COMPLEX_FFT: begin
	
	    if (scratch_src_read_valid) begin
	        run_complex_fft(read_counter);
	        if (read_counter == (1 << M_fft) - 1) begin
    			state <= FFT_FLUSH;
    			if (level == M_fft - 1) begin
    				level <= 0;
    				if (cur_real_mode)
    					state_next <= FFT_REAL_POSTPROCESS;
    				else begin
    				    ctl_output_scaling <= cur_output_scaling;
    					ctl_done <= 1;
    					state_next <= FFT_IDLE;
    				end
    			end
    			else begin
    				level <= level + 1;
    				state_next <= FFT_COMPLEX_FFT;
    			end
	        end
	        else
	            read_counter <= read_counter + 1;
	    end
	    
	    if (counter <= (1 << M_fft) - 1) begin
	        request_complex_fft(counter);
	        counter <= counter + 1;
	    end

	end
	
	FFT_REAL_POSTPROCESS: begin
	    if (scratch_src_read_valid) begin
	        run_postprocess(read_counter);
	        
	        if (read_counter == (1 << M) - 1) begin
			    ctl_output_scaling <= cur_output_scaling;
				ctl_done <= 1;
    			state <= FFT_FLUSH;
    			state_next <= FFT_IDLE;
	        end
	        else
	            read_counter <= read_counter + 1;
	    end

		if (counter <= (1 << M) - 1) begin
	        request_postprocess(counter);
	        counter <= counter + 1;
	    end

	end
	
	FFT_FLUSH: begin
	    counter <= 0;
	    read_counter <= 0;
	    update_scaling;
		state <= state_next;
		scratch_sel <= !scratch_sel;
	end
	
	endcase

end


endmodule

