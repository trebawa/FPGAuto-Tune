// this testbench is targeted specifically towards the interface_fft module
// in the lab 5 top-level device template

// goal: load all the input data from the text file
//		 store in emulated memory array thingy
//		 write one sample per clock cycle to the "sample_from_codec" wire
// 		 observe what happens on the data output regs

`timescale 1 ns / 1 ps

module fft_tb2;

reg [9:0] counter = 10'd0;
reg clk = 1'b0;
reg reset;
reg [17:0] sample_from_codec = 18'd0;
wire [17:0] test_real_out;
wire [17:0] test_imag_out;

reg freeze_input = 1'b0;

reg [35:0] input_array[0 : (1 << 10) - 1];

interface_fft interface_test (
	.clk(clk),
	.reset(reset),
	.sample_from_codec(sample_from_codec),
	.data_real_out(test_real_out),
	.data_imag_out(test_imag_out)
	);

// This initial time buffer is required? For what?

initial begin
    #1000000 $finish;
end


// burn to finish, should tell us if looping is tb or fft cycling

initial begin
	$dumpfile("fft_tb2.vcd");
	$dumpvars(0, fft_tb2);

	//#20 sample_from_codec <= 18'd0;

	// fill the memory array with sample data from text file
	#20 $readmemh("fft_tb_input.txt", input_array, 0, (1 << 10) - 1);

	//reset to begin the fft
	#50 reset <= 1'b1;

	#10 reset <= 1'b0;

end 

always begin
	#5	clk <= !clk;
end


always @(posedge clk) begin
	if (!reset /*&& (counter <= 10'd1023)*/) begin
		sample_from_codec <= input_array[counter];
		counter <= counter + 1;
		//#10000 $finish
	end
end



endmodule