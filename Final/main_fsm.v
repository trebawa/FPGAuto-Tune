`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:03 12/01/2014 
// Design Name: 
// Module Name:    main_fsm 
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
module main_fsm(
	 input start,
    output reg done = 1,	//when the calculation is complete
		
    input fft_done,				//interface with the fft
    output reg [8:0] fft_address,
    output reg fft_read_enable,
    input fft_read_valid,
    input [63:0] fft_data,
	 
    input [8:0] result_address,	//supply data that can be sent to the IFFT
    input result_read_enable,
    output reg [63:0] result_data,
    output reg result_read_valid
    );
	 
	 parameter S_WAIT_FOR_DATA = 'b1;
	 parameter S_POPULATE_RAM_A = 'b10;
	 parameter S_RUN_CORDICS = 'b100;
	 parameter S_
	 


endmodule
