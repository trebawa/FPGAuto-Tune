/*
	FFT - dual port RAM model
	Please see the license in the main file, fft.v
	
	Copyright 2013 MIT - Author: Michael Price (pricem@mit.edu)
*/

module ram_dp(
	clk, reset,
	rw_addr, read1_enable, read1_data, write_enable, write_data,
	read2_addr, read2_enable, read2_data
);

parameter M = 8;
parameter N = 1 << M;
parameter Nb = 16;

input clk;
input reset;

input [M-1:0] rw_addr;
input read1_enable;
output [Nb-1:0] read1_data;

input write_enable;
input [Nb-1:0] write_data;

input [M-1:0] read2_addr;
input read2_enable;
output [Nb-1:0] read2_data;

reg [Nb-1:0] data[N-1:0]	/*	synthesis syn_ramstyle = "block_ram"	*/;

reg [Nb-1:0] read1_data_internal;
reg [Nb-1:0] read2_data_internal;
reg collision;

wire en1 = write_enable || read1_enable || reset;
wire en2 = read2_enable || reset;

//	Make the read outputs undefined if there is a collision with a write,
//	modeling the behavior of our actual SRAM macro.
//  Note: could also assign to 0 in event of read_enable being 0 on previous cycle.
assign read1_data = collision ? {Nb{1'bx}} : read1_data_internal;
assign read2_data = collision ? {Nb{1'bx}} : read2_data_internal;

integer i;

always @(posedge clk) begin

    //    XST friendly synchronous read/write - port 1
    if (en1) begin
        if (write_enable)
	        data[rw_addr] <= write_data;
	    else begin
	        if (reset)
	            read1_data_internal <= 0;
	        else
	            read1_data_internal <= data[rw_addr];
	    end
	end
	
	//	XST friendly synchronous read - port 2
	if (en2) begin
	    if (reset)
	        read2_data_internal <= 0;
	    else
	        read2_data_internal <= data[read2_addr];
	end

    //    Collision detection for both ports
	if (reset) begin
		collision <= 0;
	end
	else begin
		collision <= 0;
		
		if (read1_enable) begin
			if (write_enable) begin
			    collision <= 1;
				$display("Error at time %t: Memory %m simultaneously wrote and read[1] address %h.  Results would be undefined.", $time, rw_addr);
			end
		end

		if (read2_enable) begin
			if (write_enable && (rw_addr == read2_addr)) begin
				collision <= 1;
				$display("Error at time %t: Memory %m simultaneously wrote and read[2] address %h.  Results would be undefined.", $time, rw_addr);
			end
		end

	end
end

endmodule

