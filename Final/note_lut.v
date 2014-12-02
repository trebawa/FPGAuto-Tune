`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor Walker
// 
// Create Date:    10:55:33 11/30/2014 
// Design Name: 
// Module Name:    note_lut 
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
module note_lut(
    input [31:0] freq_fun,// 11Q32 as usual
    output reg [3:0] note_name,
    output reg [2:0] note_octave, //corresponds to the scientific pitch octave
    output reg greater //true if the actual frequency is greater than the center frequency, false otherwise
    );
     
/////////////////////
//note_name mapping//
//  value       note     //
//  0           C        //
//  1           C#/Db    //
//  2           D        //
//  3           D#/Eb    //
//  4           E        //
//  5           F        //
//  6           F#/Gb    //
//  7           G        //
//  8           G#/Ab    //
//  9           A        //
//  A           A#/Bb    //
//  B           B        //
/////////////////////
always @(*) begin
    if (freq_fun < 32'h105a025) begin //C0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h0;
        end
        else if (freq_fun < 32'h10d4ab2) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h0;
        end
    else if (freq_fun < 32'h1152ec1) begin //C#/Db0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h1;
        end
        else if (freq_fun < 32'h11d4e01) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h1;
        end
    else if (freq_fun < 32'h125aa2e) begin //D0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h2;
        end
        else if (freq_fun < 32'h12e4512) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h2;
        end
    else if (freq_fun < 32'h1372082) begin //D#/Eb0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h3;
        end
        else if (freq_fun < 32'h1403e63) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h3;
        end
    else if (freq_fun < 32'h149a0a8) begin //E0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h4;
        end
        else if (freq_fun < 32'h1534950) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h4;
        end
    else if (freq_fun < 32'h15d3a6d) begin //F0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h5;
        end
        else if (freq_fun < 32'h167761e) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h5;
        end
    else if (freq_fun < 32'h171fe92) begin //F#/Gb0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h6;
        end
        else if (freq_fun < 32'h17cd60a) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h6;
        end
    else if (freq_fun < 32'h187fed5) begin //G0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h7;
        end
        else if (freq_fun < 32'h1937b56) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h7;
        end
    else if (freq_fun < 32'h19f4e01) begin //G#/Ab0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h8;
        end
        else if (freq_fun < 32'h1ab795c) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h8;
        end
    else if (freq_fun < 32'h1b80000) begin //A0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'h9;
        end
        else if (freq_fun < 32'h1c4e49b) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'h9;
        end
    else if (freq_fun < 32'h1d229ec) begin //A#/Bb0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'ha;
        end
        else if (freq_fun < 32'h1dfd2ca) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'ha;
        end
    else if (freq_fun < 32'h1ede220) begin //B0
            greater = 0;
            note_octave = 3'h0;
            note_name = 4'hb;
        end
        else if (freq_fun < 32'h1fc5aee) begin
            greater = 1;
            note_octave = 3'h0;
            note_name = 4'hb;
        end
    else if (freq_fun < 32'h20b404a) begin //C1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h0;
        end
        else if (freq_fun < 32'h21a9564) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h0;
        end
    else if (freq_fun < 32'h22a5d82) begin //C#/Db1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h1;
        end
        else if (freq_fun < 32'h23a9c02) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h1;
        end
    else if (freq_fun < 32'h24b545c) begin //D1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h2;
        end
        else if (freq_fun < 32'h25c8a24) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h2;
        end
    else if (freq_fun < 32'h26e4104) begin //D#/Eb1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h3;
        end
        else if (freq_fun < 32'h2807cc6) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h3;
        end
    else if (freq_fun < 32'h293414f) begin //E1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h4;
        end
        else if (freq_fun < 32'h2a692a1) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h4;
        end
    else if (freq_fun < 32'h2ba74db) begin //F1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h5;
        end
        else if (freq_fun < 32'h2ceec3d) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h5;
        end
    else if (freq_fun < 32'h2e3fd25) begin //F#/Gb1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h6;
        end
        else if (freq_fun < 32'h2f9ac14) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h6;
        end
    else if (freq_fun < 32'h30ffdaa) begin //G1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h7;
        end
        else if (freq_fun < 32'h326f6ac) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h7;
        end
    else if (freq_fun < 32'h33e9c01) begin //G#/Ab1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h8;
        end
        else if (freq_fun < 32'h356f2b7) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h8;
        end
    else if (freq_fun < 32'h3700000) begin //A1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'h9;
        end
        else if (freq_fun < 32'h389c935) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'h9;
        end
    else if (freq_fun < 32'h3a453d9) begin //A#/Bb1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'ha;
        end
        else if (freq_fun < 32'h3bfa595) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'ha;
        end
    else if (freq_fun < 32'h3dbc440) begin //B1
            greater = 0;
            note_octave = 3'h1;
            note_name = 4'hb;
        end
        else if (freq_fun < 32'h3f8b5db) begin
            greater = 1;
            note_octave = 3'h1;
            note_name = 4'hb;
        end
    else if (freq_fun < 32'h4168094) begin //C2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h0;
        end
        else if (freq_fun < 32'h4352ac8) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h0;
        end
    else if (freq_fun < 32'h454bb04) begin //C#/Db2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h1;
        end
        else if (freq_fun < 32'h4753804) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h1;
        end
    else if (freq_fun < 32'h496a8b9) begin //D2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h2;
        end
        else if (freq_fun < 32'h4b91447) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h2;
        end
    else if (freq_fun < 32'h4dc8208) begin //D#/Eb2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h3;
        end
        else if (freq_fun < 32'h500f98d) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h3;
        end
    else if (freq_fun < 32'h526829e) begin //E2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h4;
        end
        else if (freq_fun < 32'h54d2541) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h4;
        end
    else if (freq_fun < 32'h574e9b6) begin //F2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h5;
        end
        else if (freq_fun < 32'h59dd879) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h5;
        end
    else if (freq_fun < 32'h5c7fa4a) begin //F#/Gb2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h6;
        end
        else if (freq_fun < 32'h5f35827) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h6;
        end
    else if (freq_fun < 32'h61ffb54) begin //G2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h7;
        end
        else if (freq_fun < 32'h64ded57) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h7;
        end
    else if (freq_fun < 32'h67d3803) begin //G#/Ab2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h8;
        end
        else if (freq_fun < 32'h6ade56e) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h8;
        end
    else if (freq_fun < 32'h6e00000) begin //A2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'h9;
        end
        else if (freq_fun < 32'h713926a) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'h9;
        end
    else if (freq_fun < 32'h748a7b1) begin //A#/Bb2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'ha;
        end
        else if (freq_fun < 32'h77f4b2a) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'ha;
        end
    else if (freq_fun < 32'h7b78880) begin //B2
            greater = 0;
            note_octave = 3'h2;
            note_name = 4'hb;
        end
        else if (freq_fun < 32'h7f16bb6) begin
            greater = 1;
            note_octave = 3'h2;
            note_name = 4'hb;
        end
    else if (freq_fun < 32'h82d0128) begin //C3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h0;
        end
        else if (freq_fun < 32'h86a5591) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h0;
        end
    else if (freq_fun < 32'h8a97607) begin //C#/Db3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h1;
        end
        else if (freq_fun < 32'h8ea7008) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h1;
        end
    else if (freq_fun < 32'h92d5172) begin //D3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h2;
        end
        else if (freq_fun < 32'h972288e) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h2;
        end
    else if (freq_fun < 32'h9b90410) begin //D#/Eb3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h3;
        end
        else if (freq_fun < 32'ha01f319) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h3;
        end
    else if (freq_fun < 32'ha4d053d) begin //E3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h4;
        end
        else if (freq_fun < 32'ha9a4a82) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h4;
        end
    else if (freq_fun < 32'hae9d36b) begin //F3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h5;
        end
        else if (freq_fun < 32'hb3bb0f2) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h5;
        end
    else if (freq_fun < 32'hb8ff494) begin //F#/Gb3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h6;
        end
        else if (freq_fun < 32'hbe6b04e) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h6;
        end
    else if (freq_fun < 32'hc3ff6a7) begin //G3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h7;
        end
        else if (freq_fun < 32'hc9bdaaf) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h7;
        end
    else if (freq_fun < 32'hcfa7005) begin //G#/Ab3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h8;
        end
        else if (freq_fun < 32'hd5bcadd) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h8;
        end
    else if (freq_fun < 32'hdc00000) begin //A3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'h9;
        end
        else if (freq_fun < 32'he2724d5) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'h9;
        end
    else if (freq_fun < 32'he914f62) begin //A#/Bb3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'ha;
        end
        else if (freq_fun < 32'hefe9654) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'ha;
        end
    else if (freq_fun < 32'hf6f1100) begin //B3
            greater = 0;
            note_octave = 3'h3;
            note_name = 4'hb;
        end
        else if (freq_fun < 32'hfe2d76c) begin
            greater = 1;
            note_octave = 3'h3;
            note_name = 4'hb;
        end
    else if (freq_fun < 32'h105a0251) begin //C4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h0;
        end
        else if (freq_fun < 32'h10d4ab21) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h0;
        end
    else if (freq_fun < 32'h1152ec0e) begin //C#/Db4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h1;
        end
        else if (freq_fun < 32'h11d4e00f) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h1;
        end
    else if (freq_fun < 32'h125aa2e4) begin //D4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h2;
        end
        else if (freq_fun < 32'h12e4511c) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h2;
        end
    else if (freq_fun < 32'h13720820) begin //D#/Eb4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h3;
        end
        else if (freq_fun < 32'h1403e632) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h3;
        end
    else if (freq_fun < 32'h149a0a79) begin //E4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h4;
        end
        else if (freq_fun < 32'h15349505) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h4;
        end
    else if (freq_fun < 32'h15d3a6d6) begin //F4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h5;
        end
        else if (freq_fun < 32'h167761e5) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h5;
        end
    else if (freq_fun < 32'h171fe928) begin //F#/Gb4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h6;
        end
        else if (freq_fun < 32'h17cd609d) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h6;
        end
    else if (freq_fun < 32'h187fed4e) begin //G4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h7;
        end
        else if (freq_fun < 32'h1937b55e) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h7;
        end
    else if (freq_fun < 32'h19f4e00b) begin //G#/Ab4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h8;
        end
        else if (freq_fun < 32'h1ab795ba) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h8;
        end
    else if (freq_fun < 32'h1b800000) begin //A4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'h9;
        end
        else if (freq_fun < 32'h1c4e49aa) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'h9;
        end
    else if (freq_fun < 32'h1d229ec4) begin //A#/Bb4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'ha;
        end
        else if (freq_fun < 32'h1dfd2ca8) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'ha;
        end
    else if (freq_fun < 32'h1ede2200) begin //B4
            greater = 0;
            note_octave = 3'h4;
            note_name = 4'hb;
        end
        else if (freq_fun < 32'h1fc5aed8) begin
            greater = 1;
            note_octave = 3'h4;
            note_name = 4'hb;
        end
    else if (freq_fun < 32'h20b404a2) begin //C5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h0;
        end
        else if (freq_fun < 32'h21a95642) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h0;
        end
    else if (freq_fun < 32'h22a5d81d) begin //C#/Db5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h1;
        end
        else if (freq_fun < 32'h23a9c01e) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h1;
        end
    else if (freq_fun < 32'h24b545c7) begin //D5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h2;
        end
        else if (freq_fun < 32'h25c8a239) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h2;
        end
    else if (freq_fun < 32'h26e41040) begin //D#/Eb5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h3;
        end
        else if (freq_fun < 32'h2807cc64) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h3;
        end
    else if (freq_fun < 32'h293414f2) begin //E5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h4;
        end
        else if (freq_fun < 32'h2a692a0a) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h4;
        end
    else if (freq_fun < 32'h2ba74dac) begin //F5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h5;
        end
        else if (freq_fun < 32'h2ceec3c9) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h5;
        end
    else if (freq_fun < 32'h2e3fd250) begin //F#/Gb5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h6;
        end
        else if (freq_fun < 32'h2f9ac139) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h6;
        end
    else if (freq_fun < 32'h30ffda9d) begin //G5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h7;
        end
        else if (freq_fun < 32'h326f6abc) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h7;
        end
    else if (freq_fun < 32'h33e9c015) begin //G#/Ab5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h8;
        end
        else if (freq_fun < 32'h356f2b74) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h8;
        end
    else if (freq_fun < 32'h37000000) begin //A5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'h9;
        end
        else if (freq_fun < 32'h389c9353) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'h9;
        end
    else if (freq_fun < 32'h3a453d89) begin //A#/Bb5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'ha;
        end
        else if (freq_fun < 32'h3bfa5950) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'ha;
        end
    else if (freq_fun < 32'h3dbc4401) begin //B5
            greater = 0;
            note_octave = 3'h5;
            note_name = 4'hb;
        end
        else if (freq_fun < 32'h3f8b5db0) begin
            greater = 1;
            note_octave = 3'h5;
            note_name = 4'hb;
        end
    else if (freq_fun < 32'h41680943) begin //C6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h0;
        end
        else if (freq_fun < 32'h4352ac84) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h0;
        end
    else if (freq_fun < 32'h454bb03a) begin //C#/Db6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h1;
        end
        else if (freq_fun < 32'h4753803d) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h1;
        end
    else if (freq_fun < 32'h496a8b8f) begin //D6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h2;
        end
        else if (freq_fun < 32'h4b914471) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h2;
        end
    else if (freq_fun < 32'h4dc82080) begin //D#/Eb6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h3;
        end
        else if (freq_fun < 32'h500f98c9) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h3;
        end
    else if (freq_fun < 32'h526829e4) begin //E6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h4;
        end
        else if (freq_fun < 32'h54d25413) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h4;
        end
    else if (freq_fun < 32'h574e9b58) begin //F6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h5;
        end
        else if (freq_fun < 32'h59dd8793) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h5;
        end
    else if (freq_fun < 32'h5c7fa49f) begin //F#/Gb6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h6;
        end
        else if (freq_fun < 32'h5f358272) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h6;
        end
    else if (freq_fun < 32'h61ffb539) begin //G6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h7;
        end
        else if (freq_fun < 32'h64ded578) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h7;
        end
    else if (freq_fun < 32'h67d3802a) begin //G#/Ab6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h8;
        end
        else if (freq_fun < 32'h6ade56e7) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h8;
        end
    else if (freq_fun < 32'h6e000000) begin //A6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'h9;
        end
        else if (freq_fun < 32'h713926a7) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'h9;
        end
    else if (freq_fun < 32'h748a7b12) begin //A#/Bb6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'ha;
        end
        else if (freq_fun < 32'h77f4b2a0) begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'ha;
        end
    else if (freq_fun < 32'h7b788802) begin //B6
            greater = 0;
            note_octave = 3'h6;
            note_name = 4'hb;
        end
        else begin
            greater = 1;
            note_octave = 3'h6;
            note_name = 4'hb;
        end
end
endmodule