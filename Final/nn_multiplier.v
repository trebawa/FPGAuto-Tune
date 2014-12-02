////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: nn_multiplier.v
// /___/   /\     Timestamp: Mon Nov 24 15:40:12 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/tmp/_cg/nn_multiplier.ngc /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/tmp/_cg/nn_multiplier.v 
// Device	: 2v6000bf957-4
// Input file	: /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/tmp/_cg/nn_multiplier.ngc
// Output file	: /afs/athena.mit.edu/user/t/r/trebawa/6.111/Final/Final/tmp/_cg/nn_multiplier.v
// # of Modules	: 1
// Design Name	: nn_multiplier
// Xilinx        : /afs/csail.mit.edu/proj/redsocs/Xilinx10.1/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module nn_multiplier (
  clk, a, b, p
);
  input clk;
  input [11 : 0] a;
  input [16 : 0] b;
  output [11 : 0] p;
  
  // synthesis translate_off
  
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[0] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[1] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[2] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[3] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[4] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[5] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[6] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[7] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[8] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[9] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[10] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[11] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[12] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[13] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[14] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[15] ;
  wire \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[28] ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<29>_UNCONNECTED ;
  wire [11 : 0] a_2;
  wire [16 : 0] b_3;
  wire [11 : 0] p_4;
  wire [28 : 0] \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> ;
  wire [0 : 0] \BU2/zero_detect ;
  assign
    a_2[11] = a[11],
    a_2[10] = a[10],
    a_2[9] = a[9],
    a_2[8] = a[8],
    a_2[7] = a[7],
    a_2[6] = a[6],
    a_2[5] = a[5],
    a_2[4] = a[4],
    a_2[3] = a[3],
    a_2[2] = a[2],
    a_2[1] = a[1],
    a_2[0] = a[0],
    b_3[16] = b[16],
    b_3[15] = b[15],
    b_3[14] = b[14],
    b_3[13] = b[13],
    b_3[12] = b[12],
    b_3[11] = b[11],
    b_3[10] = b[10],
    b_3[9] = b[9],
    b_3[8] = b[8],
    b_3[7] = b[7],
    b_3[6] = b[6],
    b_3[5] = b[5],
    b_3[4] = b[4],
    b_3[3] = b[3],
    b_3[2] = b[2],
    b_3[1] = b[1],
    b_3[0] = b[0],
    p[11] = p_4[11],
    p[10] = p_4[10],
    p[9] = p_4[9],
    p[8] = p_4[8],
    p[7] = p_4[7],
    p[6] = p_4[6],
    p[5] = p_4[5],
    p[4] = p_4[4],
    p[3] = p_4[3],
    p[2] = p_4[2],
    p[1] = p_4[1],
    p[0] = p_4[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  MULT18X18   \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18  (
    .A({\BU2/zero_detect [0], b_3[16], b_3[15], b_3[14], b_3[13], b_3[12], b_3[11], b_3[10], b_3[9], b_3[8], b_3[7], b_3[6], b_3[5], b_3[4], b_3[3], 
b_3[2], b_3[1], b_3[0]}),
    .B({\BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], a_2[11], 
a_2[10], a_2[9], a_2[8], a_2[7], a_2[6], a_2[5], a_2[4], a_2[3], a_2[2], a_2[1], a_2[0]}),
    .P({
\NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<35>_UNCONNECTED 
, 
\NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<34>_UNCONNECTED 
, 
\NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<33>_UNCONNECTED 
, 
\NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<32>_UNCONNECTED 
, 
\NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<31>_UNCONNECTED 
, 
\NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<30>_UNCONNECTED 
, 
\NLW_BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18.appMULT[0].bppMULT[0].no_Mreg.m18x18_P<29>_UNCONNECTED 
, \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [28], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [27], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [26], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [25], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [24], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [23], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [22], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [21], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [20], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [19], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [18], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [17], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [16], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [15], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [14], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [13], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [12], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [11], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [10], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [9], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [8], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [7], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [6], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [5], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [4], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [3], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [2], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [1], 
\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [0]})
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/zero_detect [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_28  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [28]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[28] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_27  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [27]),
    .Q(p_4[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_26  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [26]),
    .Q(p_4[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_25  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [25]),
    .Q(p_4[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_24  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [24]),
    .Q(p_4[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_23  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [23]),
    .Q(p_4[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_22  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [22]),
    .Q(p_4[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_21  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [21]),
    .Q(p_4[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_20  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [20]),
    .Q(p_4[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_19  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [19]),
    .Q(p_4[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_18  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [18]),
    .Q(p_4[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_17  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [17]),
    .Q(p_4[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_16  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [16]),
    .Q(p_4[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_15  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [15]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[15] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_14  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [14]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[14] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_13  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [13]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[13] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_12  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [12]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[12] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_11  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [11]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[11] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_10  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [10]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[10] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_9  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [9]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[9] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_8  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [8]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[8] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_7  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [7]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[7] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_6  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [6]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[6] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_5  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [5]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[5] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_4  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [4]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[4] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_3  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [3]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[3] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_2  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [2]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[2] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_1  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [1]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[1] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i_0  (
    .C(clk),
    .D(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_Mreg<0><0> [0]),
    .Q(\BU2/U0/i_synth.i_synth_model/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/dout_i[0] )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synthesis translate_on
