/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used             *
*     solely for design, simulation, implementation and creation of            *
*     design files limited to Xilinx devices or technologies. Use              *
*     with non-Xilinx devices or technologies is expressly prohibited          *
*     and immediately terminates your license.                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"            *
*     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                  *
*     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION          *
*     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION              *
*     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS                *
*     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                  *
*     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE         *
*     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY                 *
*     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                  *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS          *
*     FOR A PARTICULAR PURPOSE.                                                *
*                                                                              *
*     Xilinx products are not intended for use in life support                 *
*     appliances, devices, or systems. Use in such applications are            *
*     expressly prohibited.                                                    *
*                                                                              *
*     (c) Copyright 1995-2007 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/

/* Behavioural components instantiated:
C_REG_FD_V7_0
C_SHIFT_RAM_V7_0
C_ADDSUB_V7_0
MULT_GEN_V7_0
*/

`timescale 1ns/1ps

module cordic(
   x_in,
   y_in,
   nd,
   clk,
   x_out,
   phase_out,
   rdy
   ); // synthesis black_box

   input [17 : 0] x_in;
   input [17 : 0] y_in;
   input nd;
   input clk;
   output [17 : 0] x_out;
   output [17 : 0] phase_out;
   output rdy;
//synthesis translate_off
   wire n0 = 1'b0;
   wire n1 = 1'b1;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n414;
   wire n415;
   wire n416;
   wire n417;
   wire n418;
   wire n419;
   wire n420;
   wire n421;
   wire n422;
   wire n423;
   wire n424;
   wire n425;
   wire n426;
   wire n427;
   wire n428;
   wire n429;
   wire n430;
   wire n449;
   wire n450;
   wire n451;
   wire n452;
   wire n453;
   wire n454;
   wire n455;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n461;
   wire n462;
   wire n463;
   wire n464;
   wire n465;
   wire n466;
   wire n467;
   wire n906;
   wire n913;
   wire n914;
   wire n915;
   wire n916;
   wire n917;
   wire n918;
   wire n919;
   wire n920;
   wire n921;
   wire n922;
   wire n923;
   wire n924;
   wire n925;
   wire n926;
   wire n927;
   wire n928;
   wire n929;
   wire n930;
   wire n931;
   wire n932;
   wire n933;
   wire n934;
   wire n935;
   wire n936;
   wire n937;
   wire n938;
   wire n939;
   wire n940;
   wire n941;
   wire n942;
   wire n943;
   wire n944;
   wire n945;
   wire n946;
   wire n947;
   wire n948;
   wire n949;
   wire n950;
   wire n951;
   wire n952;
   wire n953;
   wire n954;
   wire n955;
   wire n956;
   wire n979;
   wire n1205;
   wire n1228;
   wire n1253;
   wire n1254;
   wire n1255;
   wire n1256;
   wire n1257;
   wire n1258;
   wire n1259;
   wire n1260;
   wire n1261;
   wire n1262;
   wire n1263;
   wire n1264;
   wire n1265;
   wire n1266;
   wire n1267;
   wire n1268;
   wire n1269;
   wire n1270;
   wire n1271;
   wire n1272;
   wire n1273;
   wire n1274;
   wire n1275;
   wire n1276;
   wire n1277;
   wire n1278;
   wire n1279;
   wire n1280;
   wire n1281;
   wire n1282;
   wire n1283;
   wire n1284;
   wire n1285;
   wire n1286;
   wire n1287;
   wire n1288;
   wire n1289;
   wire n1290;
   wire n1291;
   wire n1292;
   wire n1293;
   wire n1294;
   wire n1295;
   wire n1296;
   wire n1319;
   wire n1320;
   wire n1321;
   wire n1322;
   wire n1323;
   wire n1324;
   wire n1325;
   wire n1326;
   wire n1327;
   wire n1328;
   wire n1329;
   wire n1330;
   wire n1331;
   wire n1332;
   wire n1333;
   wire n1334;
   wire n1335;
   wire n1336;
   wire n1337;
   wire n1338;
   wire n1339;
   wire n1340;
   wire n1341;
   wire n1342;
   wire n1343;
   wire n1344;
   wire n1345;
   wire n1346;
   wire n1347;
   wire n1348;
   wire n1349;
   wire n1350;
   wire n1351;
   wire n1352;
   wire n1353;
   wire n1354;
   wire n1355;
   wire n1356;
   wire n1357;
   wire n1358;
   wire n1359;
   wire n1360;
   wire n1361;
   wire n1362;
   wire n1363;
   wire n1364;
   wire n1507;
   wire n1508;
   wire n1509;
   wire n5842;
   wire n5843;
   wire n5844;
   wire n5845;
   wire n5846;
   wire n5847;
   wire n5848;
   wire n5849;
   wire n5850;
   wire n5851;
   wire n5852;
   wire n5853;
   wire n5854;
   wire n5855;
   wire n5856;
   wire n5857;
   wire n5858;
   wire n5859;
   wire n5860;
   wire n5861;
   wire n5862;
   wire n5863;
   wire n5864;
   wire n5865;
   wire n5866;
   wire n5867;
   wire n5868;
   wire n5869;
   wire n5870;
   wire n5871;
   wire n5872;
   wire n5873;
   wire n5874;
   wire n5875;
   wire n5876;
   wire n5877;
   wire n5878;
   wire n5879;
   wire n5880;
   wire n5881;
   wire n5882;
   wire n5883;
   wire n5884;
   wire n5885;
   wire n5886;
   wire n5887;
   wire n5888;
   wire n5889;
   wire n5890;
   wire n5891;
   wire n5892;
   wire n5893;
   wire n5894;
   wire n5895;
   wire n5896;
   wire n5897;
   wire n5898;
   wire n5899;
   wire n5900;
   wire n5901;
   wire n5902;
   wire n5903;
   wire n5904;
   wire n5905;
   wire n5906;
   wire n5907;
   wire n5908;
   wire n5909;
   wire n5910;
   wire n5911;
   wire n5912;
   wire n5913;
   wire n5914;
   wire n5915;
   wire n5916;
   wire n5917;
   wire n5918;
   wire n5919;
   wire n5920;
   wire n5921;
   wire n5922;
   wire n5923;
   wire n5924;
   wire n5925;
   wire n5926;
   wire n5927;
   wire n5928;
   wire n5929;
   wire n5930;
   wire n5931;
   wire n5932;
   wire n5933;
   wire n5934;
   wire n5935;
   wire n5936;
   wire n5937;
   wire n5938;
   wire n5939;
   wire n5940;
   wire n5941;
   wire n5942;
   wire n5943;
   wire n5944;
   wire n5945;
   wire n5946;
   wire n5947;
   wire n5948;
   wire n5949;
   wire n5950;
   wire n5951;
   wire n5952;
   wire n5953;
   wire n5954;
   wire n5955;
   wire n5956;
   wire n5957;
   wire n5958;
   wire n5959;
   wire n5960;
   wire n5961;
   wire n5962;
   wire n5963;
   wire n5964;
   wire n5965;
   wire n5966;
   wire n5967;
   wire n5968;
   wire n5969;
   wire n5970;
   wire n5971;
   wire n5972;
   wire n5973;
   wire n5974;
   wire n5975;
   wire n5976;
   wire n5977;
   wire n5978;
   wire n5979;
   wire n5980;
   wire n5981;
   wire n5982;
   wire n5983;
   wire n5984;
   wire n5985;
   wire n5986;
   wire n5987;
   wire n5988;
   wire n5989;
   wire n5990;
   wire n5991;
   wire n5992;
   wire n5993;
   wire n5994;
   wire n5995;
   wire n5996;
   wire n5997;
   wire n5998;
   wire n5999;
   wire n6000;
   wire n6001;
   wire n6002;
   wire n6003;
   wire n6004;
   wire n6005;
   wire n6006;
   wire n6007;
   wire n6008;
   wire n6009;
   wire n6010;
   wire n6011;
   wire n6012;
   wire n6013;
   wire n6014;
   wire n6015;
   wire n6016;
   wire n6017;
   wire n6018;
   wire n6019;
   wire n6020;
   wire n6021;
   wire n6022;
   wire n6023;
   wire n6024;
   wire n6025;
   wire n6026;
   wire n6027;
   wire n6028;
   wire n6029;
   wire n6030;
   wire n6031;
   wire n6032;
   wire n6033;
   wire n6034;
   wire n6035;
   wire n6036;
   wire n6037;
   wire n6038;
   wire n6039;
   wire n6040;
   wire n6041;
   wire n6042;
   wire n6043;
   wire n6044;
   wire n6045;
   wire n6046;
   wire n6047;
   wire n6048;
   wire n6049;
   wire n6050;
   wire n6051;
   wire n6052;
   wire n6053;
   wire n6054;
   wire n6055;
   wire n6056;
   wire n6057;
   wire n6058;
   wire n6059;
   wire n6060;
   wire n6061;
   wire n6062;
   wire n6063;
   wire n6064;
   wire n6065;
   wire n6066;
   wire n6067;
   wire n6068;
   wire n6069;
   wire n6070;
   wire n6071;
   wire n6072;
   wire n6073;
   wire n6074;
   wire n6075;
   wire n6076;
   wire n6077;
   wire n6078;
   wire n6079;
   wire n6080;
   wire n6081;
   wire n6082;
   wire n6083;
   wire n6084;
   wire n6085;
   wire n6086;
   wire n6087;
   wire n6088;
   wire n6089;
   wire n6090;
   wire n6091;
   wire n6092;
   wire n6093;
   wire n6094;
   wire n6095;
   wire n6096;
   wire n6097;
   wire n6098;
   wire n6099;
   wire n6100;
   wire n6101;
   wire n6102;
   wire n6103;
   wire n6104;
   wire n6105;
   wire n6106;
   wire n6107;
   wire n6108;
   wire n6109;
   wire n6110;
   wire n6111;
   wire n6112;
   wire n6113;
   wire n6114;
   wire n6115;
   wire n6116;
   wire n6117;
   wire n6118;
   wire n6119;
   wire n6120;
   wire n6121;
   wire n6122;
   wire n6123;
   wire n6124;
   wire n6125;
   wire n6126;
   wire n6127;
   wire n6128;
   wire n6129;
   wire n6130;
   wire n6131;
   wire n6132;
   wire n6133;
   wire n6134;
   wire n6135;
   wire n6136;
   wire n6137;
   wire n6138;
   wire n6139;
   wire n6140;
   wire n6141;
   wire n6142;
   wire n6143;
   wire n6144;
   wire n6145;
   wire n6146;
   wire n6147;
   wire n6148;
   wire n6149;
   wire n6150;
   wire n6151;
   wire n6152;
   wire n6153;
   wire n6154;
   wire n6155;
   wire n6156;
   wire n6157;
   wire n6158;
   wire n6159;
   wire n6160;
   wire n6161;
   wire n6162;
   wire n6163;
   wire n6164;
   wire n6165;
   wire n6166;
   wire n6167;
   wire n6168;
   wire n6169;
   wire n6170;
   wire n6171;
   wire n6590;
   wire n6591;
   wire n6592;
   wire n6593;
   wire n6594;
   wire n6595;
   wire n6596;
   wire n6597;
   wire n6598;
   wire n6599;
   wire n6600;
   wire n6601;
   wire n6602;
   wire n6603;
   wire n6604;
   wire n6605;
   wire n6606;
   wire n6607;
   wire n6608;
   wire n6609;
   wire n6610;
   wire n6611;
   wire n6612;
   wire n6613;
   wire n6614;
   wire n6615;
   wire n6616;
   wire n6617;
   wire n6618;
   wire n6619;
   wire n6620;
   wire n6621;
   wire n6622;
   wire n6623;
   wire n6624;
   wire n6625;
   wire n6626;
   wire n6627;
   wire n6628;
   wire n6629;
   wire n6630;
   wire n6631;
   wire n6632;
   wire n6633;
   wire n6634;
   wire n6635;
   wire n6636;
   wire n6637;
   wire n6638;
   wire n6639;
   wire n6640;
   wire n6641;
   wire n6642;
   wire n6643;
   wire n6644;
   wire n6645;
   wire n6646;
   wire n6647;
   wire n6648;
   wire n6649;
   wire n6650;
   wire n6651;
   wire n6652;
   wire n6653;
   wire n6654;
   wire n6655;
   wire n6656;
   wire n6657;
   wire n6658;
   wire n6659;
   wire n6660;
   wire n6661;
   wire n6662;
   wire n6663;
   wire n6664;
   wire n6665;
   wire n6666;
   wire n6667;
   wire n6668;
   wire n6669;
   wire n6670;
   wire n6671;
   wire n6672;
   wire n6673;
   wire n6674;
   wire n6675;
   wire n6676;
   wire n6677;
   wire n6678;
   wire n6679;
   wire n6680;
   wire n6681;
   wire n6682;
   wire n6683;
   wire n6684;
   wire n6685;
   wire n6686;
   wire n6687;
   wire n6688;
   wire n6689;
   wire n6690;
   wire n6691;
   wire n6692;
   wire n6693;
   wire n6694;
   wire n6695;
   wire n6696;
   wire n6697;
   wire n6698;
   wire n6699;
   wire n6700;
   wire n6701;
   wire n6702;
   wire n6703;
   wire n6704;
   wire n6705;
   wire n6706;
   wire n6707;
   wire n6708;
   wire n6709;
   wire n6710;
   wire n6711;
   wire n6712;
   wire n6713;
   wire n6714;
   wire n6715;
   wire n6716;
   wire n6717;
   wire n6718;
   wire n6719;
   wire n6720;
   wire n6721;
   wire n6722;
   wire n6723;
   wire n6724;
   wire n6725;
   wire n6726;
   wire n6727;
   wire n6728;
   wire n6729;
   wire n6730;
   wire n6731;
   wire n6732;
   wire n6733;
   wire n6734;
   wire n6735;
   wire n6736;
   wire n6737;
   wire n6738;
   wire n6739;
   wire n6740;
   wire n6741;
   wire n6742;
   wire n6743;
   wire n6744;
   wire n6745;
   wire n6746;
   wire n6747;
   wire n6748;
   wire n6749;
   wire n6750;
   wire n6751;
   wire n6752;
   wire n6753;
   wire n6754;
   wire n6755;
   wire n6756;
   wire n6757;
   wire n6758;
   wire n6759;
   wire n6760;
   wire n6761;
   wire n6762;
   wire n6763;
   wire n6764;
   wire n6765;
   wire n6766;
   wire n6767;
   wire n6768;
   wire n6769;
   wire n6770;
   wire n6771;
   wire n6772;
   wire n6773;
   wire n6774;
   wire n6775;
   wire n6776;
   wire n6777;
   wire n6778;
   wire n6779;
   wire n6780;
   wire n6781;
   wire n6782;
   wire n6783;
   wire n6784;
   wire n6785;
   wire n6786;
   wire n6787;
   wire n6788;
   wire n6789;
   wire n6790;
   wire n6791;
   wire n6792;
   wire n6793;
   wire n6794;
   wire n6795;
   wire n6796;
   wire n6797;
   wire n6798;
   wire n6799;
   wire n6800;
   wire n6801;
   wire n6802;
   wire n6803;
   wire n6804;
   wire n6805;
   wire n6806;
   wire n6807;
   wire n6808;
   wire n6809;
   wire n6810;
   wire n6811;
   wire n6812;
   wire n6813;
   wire n6814;
   wire n6815;
   wire n6816;
   wire n6817;
   wire n6818;
   wire n6819;
   wire n6820;
   wire n6821;
   wire n6822;
   wire n6823;
   wire n6824;
   wire n6825;
   wire n6826;
   wire n6827;
   wire n6828;
   wire n6829;
   wire n6830;
   wire n6831;
   wire n6832;
   wire n6833;
   wire n6834;
   wire n6835;
   wire n6836;
   wire n6837;
   wire n6838;
   wire n6839;
   wire n6840;
   wire n6841;
   wire n6842;
   wire n6843;
   wire n6844;
   wire n6845;
   wire n6846;
   wire n6847;
   wire n6848;
   wire n6849;
   wire n6850;
   wire n6851;
   wire n6852;
   wire n6853;
   wire n6854;
   wire n6855;
   wire n6856;
   wire n6857;
   wire n6858;
   wire n6859;
   wire n6860;
   wire n6861;
   wire n6862;
   wire n6863;
   wire n6864;
   wire n6865;
   wire n6866;
   wire n6867;
   wire n6868;
   wire n6869;
   wire n6870;
   wire n6871;
   wire n6872;
   wire n6873;
   wire n6874;
   wire n6875;
   wire n6876;
   wire n6877;
   wire n6878;
   wire n6879;
   wire n6880;
   wire n6881;
   wire n6882;
   wire n6883;
   wire n6884;
   wire n6885;
   wire n6886;
   wire n6887;
   wire n6888;
   wire n6889;
   wire n6890;
   wire n6891;
   wire n6892;
   wire n6893;
   wire n6894;
   wire n6895;
   wire n6896;
   wire n6897;
   wire n6898;
   wire n6899;
   wire n6900;
   wire n6901;
   wire n6902;
   wire n6903;
   wire n6904;
   wire n6905;
   wire n6906;
   wire n6907;
   wire n6908;
   wire n6909;
   wire n6910;
   wire n6911;
   wire n6912;
   wire n6913;
   wire n6914;
   wire n6915;
   wire n6916;
   wire n6917;
   wire n6918;
   wire n6919;
   wire n7338;
   wire n7339;
   wire n7340;
   wire n7341;
   wire n7342;
   wire n7343;
   wire n7344;
   wire n7345;
   wire n7346;
   wire n7347;
   wire n7348;
   wire n7349;
   wire n7350;
   wire n7351;
   wire n7352;
   wire n7353;
   wire n7354;
   wire n7355;
   wire n7356;
   wire n7357;
   wire n7358;
   wire n7359;
   wire n7360;
   wire n7361;
   wire n7362;
   wire n7363;
   wire n7364;
   wire n7365;
   wire n7366;
   wire n7367;
   wire n7368;
   wire n7369;
   wire n7370;
   wire n7371;
   wire n7372;
   wire n7373;
   wire n7374;
   wire n7375;
   wire n7376;
   wire n7377;
   wire n7378;
   wire n7379;
   wire n7380;
   wire n7381;
   wire n7382;
   wire n7383;
   wire n7384;
   wire n7385;
   wire n7386;
   wire n7387;
   wire n7388;
   wire n7389;
   wire n7390;
   wire n7391;
   wire n7392;
   wire n7393;
   wire n7394;
   wire n7395;
   wire n7396;
   wire n7397;
   wire n7398;
   wire n7399;
   wire n7400;
   wire n7401;
   wire n7402;
   wire n7403;
   wire n7404;
   wire n7405;
   wire n7406;
   wire n7407;
   wire n7408;
   wire n7409;
   wire n7410;
   wire n7411;
   wire n7412;
   wire n7413;
   wire n7414;
   wire n7415;
   wire n7416;
   wire n7417;
   wire n7418;
   wire n7419;
   wire n7420;
   wire n7421;
   wire n7422;
   wire n7423;
   wire n7424;
   wire n7425;
   wire n7426;
   wire n7427;
   wire n7428;
   wire n7429;
   wire n7430;
   wire n7431;
   wire n7432;
   wire n7433;
   wire n7434;
   wire n7435;
   wire n7436;
   wire n7437;
   wire n7438;
   wire n7439;
   wire n7440;
   wire n7441;
   wire n7442;
   wire n7443;
   wire n7444;
   wire n7445;
   wire n7446;
   wire n7447;
   wire n7448;
   wire n7449;
   wire n7450;
   wire n7451;
   wire n7452;
   wire n7453;
   wire n7454;
   wire n7455;
   wire n7456;
   wire n7457;
   wire n7458;
   wire n7459;
   wire n7460;
   wire n7461;
   wire n7462;
   wire n7463;
   wire n7464;
   wire n7465;
   wire n7466;
   wire n7467;
   wire n7468;
   wire n7469;
   wire n7470;
   wire n7471;
   wire n7472;
   wire n7473;
   wire n7474;
   wire n7475;
   wire n7476;
   wire n7477;
   wire n7478;
   wire n7479;
   wire n7480;
   wire n7481;
   wire n7482;
   wire n7483;
   wire n7484;
   wire n7485;
   wire n7486;
   wire n7487;
   wire n7488;
   wire n7489;
   wire n7490;
   wire n7491;
   wire n7492;
   wire n7493;
   wire n7494;
   wire n7495;
   wire n7496;
   wire n7497;
   wire n7498;
   wire n7499;
   wire n7500;
   wire n7501;
   wire n7502;
   wire n7503;
   wire n7504;
   wire n7505;
   wire n7506;
   wire n7507;
   wire n7508;
   wire n7509;
   wire n7510;
   wire n7511;
   wire n7512;
   wire n7513;
   wire n7514;
   wire n7515;
   wire n7516;
   wire n7517;
   wire n7518;
   wire n7519;
   wire n7520;
   wire n7521;
   wire n7522;
   wire n7523;
   wire n7524;
   wire n7525;
   wire n7526;
   wire n7527;
   wire n7528;
   wire n7529;
   wire n7530;
   wire n7531;
   wire n7532;
   wire n7533;
   wire n7534;
   wire n7535;
   wire n7536;
   wire n7537;
   wire n7538;
   wire n7539;
   wire n7540;
   wire n7541;
   wire n7542;
   wire n7543;
   wire n7544;
   wire n7545;
   wire n7546;
   wire n7547;
   wire n7548;
   wire n7549;
   wire n7550;
   wire n7551;
   wire n7552;
   wire n7553;
   wire n7554;
   wire n7555;
   wire n7556;
   wire n7557;
   wire n7558;
   wire n7559;
   wire n7560;
   wire n7561;
   wire n7562;
   wire n7563;
   wire n7564;
   wire n7565;
   wire n7566;
   wire n7567;
   wire n7568;
   wire n7569;
   wire n7570;
   wire n7571;
   wire n7572;
   wire n7573;
   wire n7574;
   wire n7575;
   wire n7576;
   wire n7577;
   wire n7578;
   wire n7579;
   wire n7580;
   wire n7581;
   wire n7582;
   wire n7583;
   wire n7584;
   wire n7585;
   wire n7586;
   wire n7587;
   wire n7588;
   wire n7589;
   wire n7590;
   wire n7591;
   wire n7592;
   wire n7593;
   wire n7594;
   wire n7595;
   wire n7596;
   wire n7597;
   wire n7598;
   wire n7599;
   wire n7600;
   wire n7601;
   wire n7602;
   wire n7603;
   wire n7604;
   wire n7605;
   wire n7606;
   wire n7607;
   wire n7608;
   wire n7609;
   wire n7610;
   wire n7611;
   wire n7612;
   wire n7613;
   wire n7614;
   wire n7615;
   wire n7616;
   wire n7617;
   wire n7618;
   wire n7619;
   wire n7620;
   wire n7621;
   wire n7622;
   wire n7623;
   wire n7624;
   wire n7625;
   wire n7626;
   wire n7627;
   wire n7628;
   wire n7629;
   wire n7630;
   wire n7631;
   wire n7632;
   wire n7633;
   wire n7634;
   wire n7635;
   wire n7636;
   wire n7637;
   wire n7638;
   wire n7639;
   wire n7640;
   wire n7641;
   wire n7642;
   wire n7643;
   wire n7644;
   wire n7645;
   wire n7646;
   wire n7647;
   wire n7648;
   wire n7649;
   wire n7650;
   wire n7651;
   wire n7652;
   wire n7653;
   wire n7654;
   wire n7655;
   wire n7656;
   wire n7657;
   wire n7658;
   wire n7659;
   wire n7660;
   wire n7661;
   wire n7662;
   wire n7663;
   wire n7664;
   wire n7665;
   wire n7666;
   wire n7667;
   wire n8067;
   wire n8068;
   wire n8069;
   wire n8070;
   wire n8071;
   wire n8072;
   wire n8073;
   wire n8074;
   wire n8075;
   wire n8076;
   wire n8077;
   wire n8078;
   wire n8079;
   wire n8080;
   wire n8081;
   wire n8082;
   wire n8083;
   wire n8084;
   wire n8085;
   wire n8086;
   wire n8087;
   wire n8088;
   wire n8089;
   wire n8090;
   wire n8091;
   wire n8092;
   wire n8093;
   wire n8094;
   wire n8095;
   wire n8096;
   wire n8097;
   wire n8098;
   wire n8099;
   wire n8100;
   wire n8101;
   wire n8102;
   wire n8103;
   wire n8104;
   wire n8105;
   wire n8106;
   wire n8107;
   wire n8108;
   wire n8109;
   wire n8110;
   wire n8111;
   wire n8169;
   wire n8170;
   wire n8172;
   wire n8173;
   wire n8175;
   wire n8176;
   wire n8178;
   wire n8179;
   wire n8181;
   wire n8182;
   wire n8184;
   wire n8185;
   wire n8187;
   wire n8188;
   wire n8190;
   wire n8191;
   wire n8193;
   wire n8194;
   wire n8196;
   wire n8197;
   wire n8199;
   wire n8200;
   wire n8202;
   wire n8203;
   wire n8205;
   wire n8206;
   wire n8208;
   wire n8209;
   wire n8211;
   wire n8212;
   wire n8818;
   wire n8819;
   wire n10211;
   wire n10234;
   wire n11392;
   wire n11393;
   wire n12785;
   wire n12808;
   wire n13966;
   wire n13967;
   wire n15359;
   wire n15382;
   wire n16540;
   wire n16541;
   wire n17933;
   wire n17956;
   wire n19114;
   wire n19115;
   wire n20507;
   wire n20530;
   wire n21688;
   wire n21689;
   wire n23081;
   wire n23104;
   wire n24262;
   wire n24263;
   wire n25655;
   wire n25678;
   wire n26836;
   wire n26837;
   wire n28229;
   wire n28252;
   wire n29410;
   wire n29411;
   wire n30803;
   wire n30826;
   wire n31984;
   wire n31985;
   wire n33377;
   wire n33400;
   wire n34558;
   wire n34559;
   wire n35951;
   wire n35974;
   wire n37132;
   wire n37133;
   wire n38525;
   wire n38548;
   wire n39706;
   wire n39707;
   wire n41099;
   wire n41122;
   wire n42280;
   wire n42281;
   wire n43673;
   wire n43696;
   wire n44854;
   wire n44855;
   wire n46247;
   wire n46270;
   wire n47428;
   wire n47429;
   wire n48821;
   wire n48844;
   wire n49606;
   wire n49607;
   wire n49608;
   wire n49609;
   wire n49610;
   wire n49611;
   wire n49612;
   wire n49613;
   wire n49614;
   wire n49615;
   wire n49616;
   wire n49617;
   wire n49618;
   wire n49619;
   wire n49620;
   wire n49621;
   wire n49622;
   wire n49623;
   wire n49624;
   wire n49625;
   wire n49626;
   wire n49627;
   wire n49650;
   wire n49651;
   wire n49652;
   wire n49653;
   wire n49654;
   wire n49655;
   wire n49656;
   wire n49657;
   wire n49658;
   wire n49659;
   wire n49660;
   wire n49661;
   wire n49662;
   wire n49663;
   wire n49664;
   wire n49665;
   wire n49666;
   wire n49667;
   wire n49668;
   wire n49669;
   wire n49670;
   wire n49671;
   wire n49672;
   wire n49673;
   wire n49674;
   wire n49675;
   wire n49676;
   wire n49677;
   wire n49678;
   wire n49679;
   wire n49680;
   wire n49681;
   wire n49682;
   wire n49683;
   wire n49684;
   wire n49685;
   wire n49686;
   wire n49687;
   wire n49688;
   wire n49689;
   wire n49690;
   wire n49691;
   wire n49692;
   wire n49693;
   wire n49694;
   wire n49717;
   wire n49718;
   wire n49719;
   wire n49720;
   wire n49721;
   wire n49722;
   wire n49723;
   wire n49724;
   wire n49725;
   wire n49726;
   wire n49727;
   wire n49728;
   wire n49729;
   wire n49730;
   wire n49731;
   wire n49732;
   wire n49733;
   wire n49734;
   wire n49735;
   wire n49736;
   wire n49737;
   wire n49738;
   wire n49739;
   wire n49889;
   wire n49890;
   wire n49891;
   wire n49892;
   wire n49893;
   wire n49894;
   wire n49895;
   wire n49896;
   wire n49897;
   wire n49898;
   wire n49899;
   wire n49900;
   wire n49901;
   wire n49902;
   wire n49903;
   wire n49904;
   wire n49905;
   wire n49906;
   wire n49907;
   wire n49908;
   wire n49909;
   wire n49910;
   wire n49911;
   wire n49912;
   wire n49913;
   wire n49914;
   wire n49915;
   wire n49916;
   wire n49917;
   wire n49918;
   wire n49919;
   wire n49920;
   wire n49921;
   wire n49922;
   wire n49923;
   wire n49924;
   wire n49925;
   wire n49926;
   wire n49927;
   wire n49928;
   wire n49929;
   wire n49930;
   wire n49931;
   wire n49932;
   wire n49933;
   wire n49934;
   wire n49935;
   wire n49936;
   wire n49937;
   wire n49938;
   wire n49939;
   wire n49940;
   wire n49941;
   wire n49942;
   wire n49943;
   wire n49944;
   wire n49945;
   wire n49946;
   wire n49947;
   wire n49948;
   wire n49949;
   wire n49950;
   wire n49951;
   wire n49952;
   wire n49953;
   wire n49954;
   wire n49955;
   wire n49956;
   wire n49960;
   wire n51396;
   wire n54119;
   wire n54120;
   wire n54121;
   wire n54122;
   wire n54327;
   wire n55147;

      wire [21 : 0] BU34_D;
         assign BU34_D[0] = 1'b0;
         assign BU34_D[1] = 1'b0;
         assign BU34_D[2] = 1'b0;
         assign BU34_D[3] = 1'b0;
         assign BU34_D[4] = 1'b0;
         assign BU34_D[5] = 1'b0;
         assign BU34_D[6] = 1'b0;
         assign BU34_D[7] = 1'b0;
         assign BU34_D[8] = 1'b0;
         assign BU34_D[9] = 1'b0;
         assign BU34_D[10] = 1'b0;
         assign BU34_D[11] = 1'b0;
         assign BU34_D[12] = 1'b0;
         assign BU34_D[13] = 1'b0;
         assign BU34_D[14] = 1'b0;
         assign BU34_D[15] = 1'b0;
         assign BU34_D[16] = 1'b0;
         assign BU34_D[17] = 1'b0;
         assign BU34_D[18] = 1'b0;
         assign BU34_D[19] = 1'b0;
         assign BU34_D[20] = 1'b0;
         assign BU34_D[21] = 1'b0;
      wire [21 : 0] BU34_Q;
         assign n934 = BU34_Q[0];
         assign n933 = BU34_Q[1];
         assign n932 = BU34_Q[2];
         assign n931 = BU34_Q[3];
         assign n930 = BU34_Q[4];
         assign n929 = BU34_Q[5];
         assign n928 = BU34_Q[6];
         assign n927 = BU34_Q[7];
         assign n926 = BU34_Q[8];
         assign n925 = BU34_Q[9];
         assign n924 = BU34_Q[10];
         assign n923 = BU34_Q[11];
         assign n922 = BU34_Q[12];
         assign n921 = BU34_Q[13];
         assign n920 = BU34_Q[14];
         assign n919 = BU34_Q[15];
         assign n918 = BU34_Q[16];
         assign n917 = BU34_Q[17];
         assign n916 = BU34_Q[18];
         assign n915 = BU34_Q[19];
         assign n914 = BU34_Q[20];
         assign n913 = BU34_Q[21];
      wire BU34_CLK;
         assign BU34_CLK = n906;
      C_REG_FD_V7_0 #(
         "0000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         22    /* c_width*/
      )
      BU34(
         .D(BU34_D),
         .Q(BU34_Q),
         .CLK(BU34_CLK)
      );

      wire [0 : 0] BU132_D;
         assign BU132_D[0] = 1'b0;
      wire [0 : 0] BU132_Q;
         assign n979 = BU132_Q[0];
      wire BU132_CLK;
         assign BU132_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU132(
         .D(BU132_D),
         .Q(BU132_Q),
         .CLK(BU132_CLK)
      );

      wire [21 : 0] BU83_D;
         assign BU83_D[0] = 1'b0;
         assign BU83_D[1] = 1'b0;
         assign BU83_D[2] = 1'b0;
         assign BU83_D[3] = 1'b0;
         assign BU83_D[4] = 1'b0;
         assign BU83_D[5] = 1'b0;
         assign BU83_D[6] = 1'b0;
         assign BU83_D[7] = 1'b0;
         assign BU83_D[8] = 1'b0;
         assign BU83_D[9] = 1'b0;
         assign BU83_D[10] = 1'b0;
         assign BU83_D[11] = 1'b0;
         assign BU83_D[12] = 1'b0;
         assign BU83_D[13] = 1'b0;
         assign BU83_D[14] = 1'b0;
         assign BU83_D[15] = 1'b0;
         assign BU83_D[16] = 1'b0;
         assign BU83_D[17] = 1'b0;
         assign BU83_D[18] = 1'b0;
         assign BU83_D[19] = 1'b0;
         assign BU83_D[20] = 1'b0;
         assign BU83_D[21] = 1'b0;
      wire [21 : 0] BU83_Q;
         assign n956 = BU83_Q[0];
         assign n955 = BU83_Q[1];
         assign n954 = BU83_Q[2];
         assign n953 = BU83_Q[3];
         assign n952 = BU83_Q[4];
         assign n951 = BU83_Q[5];
         assign n950 = BU83_Q[6];
         assign n949 = BU83_Q[7];
         assign n948 = BU83_Q[8];
         assign n947 = BU83_Q[9];
         assign n946 = BU83_Q[10];
         assign n945 = BU83_Q[11];
         assign n944 = BU83_Q[12];
         assign n943 = BU83_Q[13];
         assign n942 = BU83_Q[14];
         assign n941 = BU83_Q[15];
         assign n940 = BU83_Q[16];
         assign n939 = BU83_Q[17];
         assign n938 = BU83_Q[18];
         assign n937 = BU83_Q[19];
         assign n936 = BU83_Q[20];
         assign n935 = BU83_Q[21];
      wire BU83_CLK;
         assign BU83_CLK = n906;
      C_REG_FD_V7_0 #(
         "0000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         22    /* c_width*/
      )
      BU83(
         .D(BU83_D),
         .Q(BU83_Q),
         .CLK(BU83_CLK)
      );

      defparam BU526.INIT = 'hf690;
      wire BU526_I0;
         assign BU526_I0 = n1205;
      wire BU526_I1;
         assign BU526_I1 = n1228;
      wire BU526_I2;
         assign BU526_I2 = n1274;
      wire BU526_I3;
         assign BU526_I3 = n1296;
      wire BU526_O;
         assign n1340 = BU526_O;
      LUT4       BU526(
         .I0(BU526_I0),
         .I1(BU526_I1),
         .I2(BU526_I2),
         .I3(BU526_I3),
         .O(BU526_O)
      );

      defparam BU538.INIT = 'hf690;
      wire BU538_I0;
         assign BU538_I0 = n1205;
      wire BU538_I1;
         assign BU538_I1 = n1228;
      wire BU538_I2;
         assign BU538_I2 = n1273;
      wire BU538_I3;
         assign BU538_I3 = n1295;
      wire BU538_O;
         assign n1339 = BU538_O;
      LUT4       BU538(
         .I0(BU538_I0),
         .I1(BU538_I1),
         .I2(BU538_I2),
         .I3(BU538_I3),
         .O(BU538_O)
      );

      defparam BU550.INIT = 'hf690;
      wire BU550_I0;
         assign BU550_I0 = n1205;
      wire BU550_I1;
         assign BU550_I1 = n1228;
      wire BU550_I2;
         assign BU550_I2 = n1272;
      wire BU550_I3;
         assign BU550_I3 = n1294;
      wire BU550_O;
         assign n1338 = BU550_O;
      LUT4       BU550(
         .I0(BU550_I0),
         .I1(BU550_I1),
         .I2(BU550_I2),
         .I3(BU550_I3),
         .O(BU550_O)
      );

      defparam BU562.INIT = 'hf690;
      wire BU562_I0;
         assign BU562_I0 = n1205;
      wire BU562_I1;
         assign BU562_I1 = n1228;
      wire BU562_I2;
         assign BU562_I2 = n1271;
      wire BU562_I3;
         assign BU562_I3 = n1293;
      wire BU562_O;
         assign n1337 = BU562_O;
      LUT4       BU562(
         .I0(BU562_I0),
         .I1(BU562_I1),
         .I2(BU562_I2),
         .I3(BU562_I3),
         .O(BU562_O)
      );

      defparam BU574.INIT = 'hf690;
      wire BU574_I0;
         assign BU574_I0 = n1205;
      wire BU574_I1;
         assign BU574_I1 = n1228;
      wire BU574_I2;
         assign BU574_I2 = n1270;
      wire BU574_I3;
         assign BU574_I3 = n1292;
      wire BU574_O;
         assign n1336 = BU574_O;
      LUT4       BU574(
         .I0(BU574_I0),
         .I1(BU574_I1),
         .I2(BU574_I2),
         .I3(BU574_I3),
         .O(BU574_O)
      );

      defparam BU586.INIT = 'hf690;
      wire BU586_I0;
         assign BU586_I0 = n1205;
      wire BU586_I1;
         assign BU586_I1 = n1228;
      wire BU586_I2;
         assign BU586_I2 = n1269;
      wire BU586_I3;
         assign BU586_I3 = n1291;
      wire BU586_O;
         assign n1335 = BU586_O;
      LUT4       BU586(
         .I0(BU586_I0),
         .I1(BU586_I1),
         .I2(BU586_I2),
         .I3(BU586_I3),
         .O(BU586_O)
      );

      defparam BU598.INIT = 'hf690;
      wire BU598_I0;
         assign BU598_I0 = n1205;
      wire BU598_I1;
         assign BU598_I1 = n1228;
      wire BU598_I2;
         assign BU598_I2 = n1268;
      wire BU598_I3;
         assign BU598_I3 = n1290;
      wire BU598_O;
         assign n1334 = BU598_O;
      LUT4       BU598(
         .I0(BU598_I0),
         .I1(BU598_I1),
         .I2(BU598_I2),
         .I3(BU598_I3),
         .O(BU598_O)
      );

      defparam BU610.INIT = 'hf690;
      wire BU610_I0;
         assign BU610_I0 = n1205;
      wire BU610_I1;
         assign BU610_I1 = n1228;
      wire BU610_I2;
         assign BU610_I2 = n1267;
      wire BU610_I3;
         assign BU610_I3 = n1289;
      wire BU610_O;
         assign n1333 = BU610_O;
      LUT4       BU610(
         .I0(BU610_I0),
         .I1(BU610_I1),
         .I2(BU610_I2),
         .I3(BU610_I3),
         .O(BU610_O)
      );

      defparam BU622.INIT = 'hf690;
      wire BU622_I0;
         assign BU622_I0 = n1205;
      wire BU622_I1;
         assign BU622_I1 = n1228;
      wire BU622_I2;
         assign BU622_I2 = n1266;
      wire BU622_I3;
         assign BU622_I3 = n1288;
      wire BU622_O;
         assign n1332 = BU622_O;
      LUT4       BU622(
         .I0(BU622_I0),
         .I1(BU622_I1),
         .I2(BU622_I2),
         .I3(BU622_I3),
         .O(BU622_O)
      );

      defparam BU634.INIT = 'hf690;
      wire BU634_I0;
         assign BU634_I0 = n1205;
      wire BU634_I1;
         assign BU634_I1 = n1228;
      wire BU634_I2;
         assign BU634_I2 = n1265;
      wire BU634_I3;
         assign BU634_I3 = n1287;
      wire BU634_O;
         assign n1331 = BU634_O;
      LUT4       BU634(
         .I0(BU634_I0),
         .I1(BU634_I1),
         .I2(BU634_I2),
         .I3(BU634_I3),
         .O(BU634_O)
      );

      defparam BU646.INIT = 'hf690;
      wire BU646_I0;
         assign BU646_I0 = n1205;
      wire BU646_I1;
         assign BU646_I1 = n1228;
      wire BU646_I2;
         assign BU646_I2 = n1264;
      wire BU646_I3;
         assign BU646_I3 = n1286;
      wire BU646_O;
         assign n1330 = BU646_O;
      LUT4       BU646(
         .I0(BU646_I0),
         .I1(BU646_I1),
         .I2(BU646_I2),
         .I3(BU646_I3),
         .O(BU646_O)
      );

      defparam BU658.INIT = 'hf690;
      wire BU658_I0;
         assign BU658_I0 = n1205;
      wire BU658_I1;
         assign BU658_I1 = n1228;
      wire BU658_I2;
         assign BU658_I2 = n1263;
      wire BU658_I3;
         assign BU658_I3 = n1285;
      wire BU658_O;
         assign n1329 = BU658_O;
      LUT4       BU658(
         .I0(BU658_I0),
         .I1(BU658_I1),
         .I2(BU658_I2),
         .I3(BU658_I3),
         .O(BU658_O)
      );

      defparam BU670.INIT = 'hf690;
      wire BU670_I0;
         assign BU670_I0 = n1205;
      wire BU670_I1;
         assign BU670_I1 = n1228;
      wire BU670_I2;
         assign BU670_I2 = n1262;
      wire BU670_I3;
         assign BU670_I3 = n1284;
      wire BU670_O;
         assign n1328 = BU670_O;
      LUT4       BU670(
         .I0(BU670_I0),
         .I1(BU670_I1),
         .I2(BU670_I2),
         .I3(BU670_I3),
         .O(BU670_O)
      );

      defparam BU682.INIT = 'hf690;
      wire BU682_I0;
         assign BU682_I0 = n1205;
      wire BU682_I1;
         assign BU682_I1 = n1228;
      wire BU682_I2;
         assign BU682_I2 = n1261;
      wire BU682_I3;
         assign BU682_I3 = n1283;
      wire BU682_O;
         assign n1327 = BU682_O;
      LUT4       BU682(
         .I0(BU682_I0),
         .I1(BU682_I1),
         .I2(BU682_I2),
         .I3(BU682_I3),
         .O(BU682_O)
      );

      defparam BU694.INIT = 'hf690;
      wire BU694_I0;
         assign BU694_I0 = n1205;
      wire BU694_I1;
         assign BU694_I1 = n1228;
      wire BU694_I2;
         assign BU694_I2 = n1260;
      wire BU694_I3;
         assign BU694_I3 = n1282;
      wire BU694_O;
         assign n1326 = BU694_O;
      LUT4       BU694(
         .I0(BU694_I0),
         .I1(BU694_I1),
         .I2(BU694_I2),
         .I3(BU694_I3),
         .O(BU694_O)
      );

      defparam BU706.INIT = 'hf690;
      wire BU706_I0;
         assign BU706_I0 = n1205;
      wire BU706_I1;
         assign BU706_I1 = n1228;
      wire BU706_I2;
         assign BU706_I2 = n1259;
      wire BU706_I3;
         assign BU706_I3 = n1281;
      wire BU706_O;
         assign n1325 = BU706_O;
      LUT4       BU706(
         .I0(BU706_I0),
         .I1(BU706_I1),
         .I2(BU706_I2),
         .I3(BU706_I3),
         .O(BU706_O)
      );

      defparam BU718.INIT = 'hf690;
      wire BU718_I0;
         assign BU718_I0 = n1205;
      wire BU718_I1;
         assign BU718_I1 = n1228;
      wire BU718_I2;
         assign BU718_I2 = n1258;
      wire BU718_I3;
         assign BU718_I3 = n1280;
      wire BU718_O;
         assign n1324 = BU718_O;
      LUT4       BU718(
         .I0(BU718_I0),
         .I1(BU718_I1),
         .I2(BU718_I2),
         .I3(BU718_I3),
         .O(BU718_O)
      );

      defparam BU730.INIT = 'hf690;
      wire BU730_I0;
         assign BU730_I0 = n1205;
      wire BU730_I1;
         assign BU730_I1 = n1228;
      wire BU730_I2;
         assign BU730_I2 = n1257;
      wire BU730_I3;
         assign BU730_I3 = n1279;
      wire BU730_O;
         assign n1323 = BU730_O;
      LUT4       BU730(
         .I0(BU730_I0),
         .I1(BU730_I1),
         .I2(BU730_I2),
         .I3(BU730_I3),
         .O(BU730_O)
      );

      defparam BU742.INIT = 'hf690;
      wire BU742_I0;
         assign BU742_I0 = n1205;
      wire BU742_I1;
         assign BU742_I1 = n1228;
      wire BU742_I2;
         assign BU742_I2 = n1256;
      wire BU742_I3;
         assign BU742_I3 = n1278;
      wire BU742_O;
         assign n1322 = BU742_O;
      LUT4       BU742(
         .I0(BU742_I0),
         .I1(BU742_I1),
         .I2(BU742_I2),
         .I3(BU742_I3),
         .O(BU742_O)
      );

      defparam BU754.INIT = 'hf690;
      wire BU754_I0;
         assign BU754_I0 = n1205;
      wire BU754_I1;
         assign BU754_I1 = n1228;
      wire BU754_I2;
         assign BU754_I2 = n1255;
      wire BU754_I3;
         assign BU754_I3 = n1277;
      wire BU754_O;
         assign n1321 = BU754_O;
      LUT4       BU754(
         .I0(BU754_I0),
         .I1(BU754_I1),
         .I2(BU754_I2),
         .I3(BU754_I3),
         .O(BU754_O)
      );

      defparam BU766.INIT = 'hf690;
      wire BU766_I0;
         assign BU766_I0 = n1205;
      wire BU766_I1;
         assign BU766_I1 = n1228;
      wire BU766_I2;
         assign BU766_I2 = n1254;
      wire BU766_I3;
         assign BU766_I3 = n1276;
      wire BU766_O;
         assign n1320 = BU766_O;
      LUT4       BU766(
         .I0(BU766_I0),
         .I1(BU766_I1),
         .I2(BU766_I2),
         .I3(BU766_I3),
         .O(BU766_O)
      );

      defparam BU778.INIT = 'hf690;
      wire BU778_I0;
         assign BU778_I0 = n1205;
      wire BU778_I1;
         assign BU778_I1 = n1228;
      wire BU778_I2;
         assign BU778_I2 = n1253;
      wire BU778_I3;
         assign BU778_I3 = n1275;
      wire BU778_O;
         assign n1319 = BU778_O;
      LUT4       BU778(
         .I0(BU778_I0),
         .I1(BU778_I1),
         .I2(BU778_I2),
         .I3(BU778_I3),
         .O(BU778_O)
      );

      defparam BU1066.INIT = 'h5555;
      wire BU1066_I0;
         assign BU1066_I0 = n1205;
      wire BU1066_I1;
         assign BU1066_I1 = 1'b0;
      wire BU1066_I2;
         assign BU1066_I2 = 1'b0;
      wire BU1066_I3;
         assign BU1066_I3 = 1'b0;
      wire BU1066_O;
         assign n1363 = BU1066_O;
      LUT4       BU1066(
         .I0(BU1066_I0),
         .I1(BU1066_I1),
         .I2(BU1066_I2),
         .I3(BU1066_I3),
         .O(BU1066_O)
      );

      defparam BU1078.INIT = 'hca53;
      wire BU1078_I0;
         assign BU1078_I0 = 1'b1;
      wire BU1078_I1;
         assign BU1078_I1 = 1'b1;
      wire BU1078_I2;
         assign BU1078_I2 = n1364;
      wire BU1078_I3;
         assign BU1078_I3 = n1363;
      wire BU1078_O;
         assign n1507 = BU1078_O;
      LUT4       BU1078(
         .I0(BU1078_I0),
         .I1(BU1078_I1),
         .I2(BU1078_I2),
         .I3(BU1078_I3),
         .O(BU1078_O)
      );

      wire [21 : 0] BU427_D;
         assign BU427_D[0] = n934;
         assign BU427_D[1] = n933;
         assign BU427_D[2] = n932;
         assign BU427_D[3] = n931;
         assign BU427_D[4] = n930;
         assign BU427_D[5] = n929;
         assign BU427_D[6] = n928;
         assign BU427_D[7] = n927;
         assign BU427_D[8] = n926;
         assign BU427_D[9] = n925;
         assign BU427_D[10] = n924;
         assign BU427_D[11] = n923;
         assign BU427_D[12] = n922;
         assign BU427_D[13] = n921;
         assign BU427_D[14] = n920;
         assign BU427_D[15] = n919;
         assign BU427_D[16] = n918;
         assign BU427_D[17] = n917;
         assign BU427_D[18] = n916;
         assign BU427_D[19] = n915;
         assign BU427_D[20] = n914;
         assign BU427_D[21] = n913;
      wire [21 : 0] BU427_Q;
         assign n1274 = BU427_Q[0];
         assign n1273 = BU427_Q[1];
         assign n1272 = BU427_Q[2];
         assign n1271 = BU427_Q[3];
         assign n1270 = BU427_Q[4];
         assign n1269 = BU427_Q[5];
         assign n1268 = BU427_Q[6];
         assign n1267 = BU427_Q[7];
         assign n1266 = BU427_Q[8];
         assign n1265 = BU427_Q[9];
         assign n1264 = BU427_Q[10];
         assign n1263 = BU427_Q[11];
         assign n1262 = BU427_Q[12];
         assign n1261 = BU427_Q[13];
         assign n1260 = BU427_Q[14];
         assign n1259 = BU427_Q[15];
         assign n1258 = BU427_Q[16];
         assign n1257 = BU427_Q[17];
         assign n1256 = BU427_Q[18];
         assign n1255 = BU427_Q[19];
         assign n1254 = BU427_Q[20];
         assign n1253 = BU427_Q[21];
      wire BU427_CLK;
         assign BU427_CLK = n906;
      C_REG_FD_V7_0 #(
         "0000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         22    /* c_width*/
      )
      BU427(
         .D(BU427_D),
         .Q(BU427_Q),
         .CLK(BU427_CLK)
      );

      defparam BU1072.INIT = 'h5555;
      wire BU1072_I0;
         assign BU1072_I0 = n1228;
      wire BU1072_I1;
         assign BU1072_I1 = 1'b0;
      wire BU1072_I2;
         assign BU1072_I2 = 1'b0;
      wire BU1072_I3;
         assign BU1072_I3 = 1'b0;
      wire BU1072_O;
         assign n1364 = BU1072_O;
      LUT4       BU1072(
         .I0(BU1072_I0),
         .I1(BU1072_I1),
         .I2(BU1072_I2),
         .I3(BU1072_I3),
         .O(BU1072_O)
      );

      wire [0 : 0] BU1083_D;
         assign BU1083_D[0] = n1507;
      wire [0 : 0] BU1083_Q;
         assign n341 = BU1083_Q[0];
      wire BU1083_CLK;
         assign BU1083_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1083(
         .D(BU1083_D),
         .Q(BU1083_Q),
         .CLK(BU1083_CLK)
      );

      defparam BU532.INIT = 'hf690;
      wire BU532_I0;
         assign BU532_I0 = n1205;
      wire BU532_I1;
         assign BU532_I1 = n1228;
      wire BU532_I2;
         assign BU532_I2 = n1296;
      wire BU532_I3;
         assign BU532_I3 = n1274;
      wire BU532_O;
         assign n1362 = BU532_O;
      LUT4       BU532(
         .I0(BU532_I0),
         .I1(BU532_I1),
         .I2(BU532_I2),
         .I3(BU532_I3),
         .O(BU532_O)
      );

      defparam BU544.INIT = 'hf690;
      wire BU544_I0;
         assign BU544_I0 = n1205;
      wire BU544_I1;
         assign BU544_I1 = n1228;
      wire BU544_I2;
         assign BU544_I2 = n1295;
      wire BU544_I3;
         assign BU544_I3 = n1273;
      wire BU544_O;
         assign n1361 = BU544_O;
      LUT4       BU544(
         .I0(BU544_I0),
         .I1(BU544_I1),
         .I2(BU544_I2),
         .I3(BU544_I3),
         .O(BU544_O)
      );

      defparam BU556.INIT = 'hf690;
      wire BU556_I0;
         assign BU556_I0 = n1205;
      wire BU556_I1;
         assign BU556_I1 = n1228;
      wire BU556_I2;
         assign BU556_I2 = n1294;
      wire BU556_I3;
         assign BU556_I3 = n1272;
      wire BU556_O;
         assign n1360 = BU556_O;
      LUT4       BU556(
         .I0(BU556_I0),
         .I1(BU556_I1),
         .I2(BU556_I2),
         .I3(BU556_I3),
         .O(BU556_O)
      );

      defparam BU568.INIT = 'hf690;
      wire BU568_I0;
         assign BU568_I0 = n1205;
      wire BU568_I1;
         assign BU568_I1 = n1228;
      wire BU568_I2;
         assign BU568_I2 = n1293;
      wire BU568_I3;
         assign BU568_I3 = n1271;
      wire BU568_O;
         assign n1359 = BU568_O;
      LUT4       BU568(
         .I0(BU568_I0),
         .I1(BU568_I1),
         .I2(BU568_I2),
         .I3(BU568_I3),
         .O(BU568_O)
      );

      defparam BU580.INIT = 'hf690;
      wire BU580_I0;
         assign BU580_I0 = n1205;
      wire BU580_I1;
         assign BU580_I1 = n1228;
      wire BU580_I2;
         assign BU580_I2 = n1292;
      wire BU580_I3;
         assign BU580_I3 = n1270;
      wire BU580_O;
         assign n1358 = BU580_O;
      LUT4       BU580(
         .I0(BU580_I0),
         .I1(BU580_I1),
         .I2(BU580_I2),
         .I3(BU580_I3),
         .O(BU580_O)
      );

      defparam BU592.INIT = 'hf690;
      wire BU592_I0;
         assign BU592_I0 = n1205;
      wire BU592_I1;
         assign BU592_I1 = n1228;
      wire BU592_I2;
         assign BU592_I2 = n1291;
      wire BU592_I3;
         assign BU592_I3 = n1269;
      wire BU592_O;
         assign n1357 = BU592_O;
      LUT4       BU592(
         .I0(BU592_I0),
         .I1(BU592_I1),
         .I2(BU592_I2),
         .I3(BU592_I3),
         .O(BU592_O)
      );

      defparam BU604.INIT = 'hf690;
      wire BU604_I0;
         assign BU604_I0 = n1205;
      wire BU604_I1;
         assign BU604_I1 = n1228;
      wire BU604_I2;
         assign BU604_I2 = n1290;
      wire BU604_I3;
         assign BU604_I3 = n1268;
      wire BU604_O;
         assign n1356 = BU604_O;
      LUT4       BU604(
         .I0(BU604_I0),
         .I1(BU604_I1),
         .I2(BU604_I2),
         .I3(BU604_I3),
         .O(BU604_O)
      );

      defparam BU616.INIT = 'hf690;
      wire BU616_I0;
         assign BU616_I0 = n1205;
      wire BU616_I1;
         assign BU616_I1 = n1228;
      wire BU616_I2;
         assign BU616_I2 = n1289;
      wire BU616_I3;
         assign BU616_I3 = n1267;
      wire BU616_O;
         assign n1355 = BU616_O;
      LUT4       BU616(
         .I0(BU616_I0),
         .I1(BU616_I1),
         .I2(BU616_I2),
         .I3(BU616_I3),
         .O(BU616_O)
      );

      defparam BU628.INIT = 'hf690;
      wire BU628_I0;
         assign BU628_I0 = n1205;
      wire BU628_I1;
         assign BU628_I1 = n1228;
      wire BU628_I2;
         assign BU628_I2 = n1288;
      wire BU628_I3;
         assign BU628_I3 = n1266;
      wire BU628_O;
         assign n1354 = BU628_O;
      LUT4       BU628(
         .I0(BU628_I0),
         .I1(BU628_I1),
         .I2(BU628_I2),
         .I3(BU628_I3),
         .O(BU628_O)
      );

      defparam BU640.INIT = 'hf690;
      wire BU640_I0;
         assign BU640_I0 = n1205;
      wire BU640_I1;
         assign BU640_I1 = n1228;
      wire BU640_I2;
         assign BU640_I2 = n1287;
      wire BU640_I3;
         assign BU640_I3 = n1265;
      wire BU640_O;
         assign n1353 = BU640_O;
      LUT4       BU640(
         .I0(BU640_I0),
         .I1(BU640_I1),
         .I2(BU640_I2),
         .I3(BU640_I3),
         .O(BU640_O)
      );

      defparam BU652.INIT = 'hf690;
      wire BU652_I0;
         assign BU652_I0 = n1205;
      wire BU652_I1;
         assign BU652_I1 = n1228;
      wire BU652_I2;
         assign BU652_I2 = n1286;
      wire BU652_I3;
         assign BU652_I3 = n1264;
      wire BU652_O;
         assign n1352 = BU652_O;
      LUT4       BU652(
         .I0(BU652_I0),
         .I1(BU652_I1),
         .I2(BU652_I2),
         .I3(BU652_I3),
         .O(BU652_O)
      );

      defparam BU664.INIT = 'hf690;
      wire BU664_I0;
         assign BU664_I0 = n1205;
      wire BU664_I1;
         assign BU664_I1 = n1228;
      wire BU664_I2;
         assign BU664_I2 = n1285;
      wire BU664_I3;
         assign BU664_I3 = n1263;
      wire BU664_O;
         assign n1351 = BU664_O;
      LUT4       BU664(
         .I0(BU664_I0),
         .I1(BU664_I1),
         .I2(BU664_I2),
         .I3(BU664_I3),
         .O(BU664_O)
      );

      defparam BU676.INIT = 'hf690;
      wire BU676_I0;
         assign BU676_I0 = n1205;
      wire BU676_I1;
         assign BU676_I1 = n1228;
      wire BU676_I2;
         assign BU676_I2 = n1284;
      wire BU676_I3;
         assign BU676_I3 = n1262;
      wire BU676_O;
         assign n1350 = BU676_O;
      LUT4       BU676(
         .I0(BU676_I0),
         .I1(BU676_I1),
         .I2(BU676_I2),
         .I3(BU676_I3),
         .O(BU676_O)
      );

      defparam BU688.INIT = 'hf690;
      wire BU688_I0;
         assign BU688_I0 = n1205;
      wire BU688_I1;
         assign BU688_I1 = n1228;
      wire BU688_I2;
         assign BU688_I2 = n1283;
      wire BU688_I3;
         assign BU688_I3 = n1261;
      wire BU688_O;
         assign n1349 = BU688_O;
      LUT4       BU688(
         .I0(BU688_I0),
         .I1(BU688_I1),
         .I2(BU688_I2),
         .I3(BU688_I3),
         .O(BU688_O)
      );

      defparam BU700.INIT = 'hf690;
      wire BU700_I0;
         assign BU700_I0 = n1205;
      wire BU700_I1;
         assign BU700_I1 = n1228;
      wire BU700_I2;
         assign BU700_I2 = n1282;
      wire BU700_I3;
         assign BU700_I3 = n1260;
      wire BU700_O;
         assign n1348 = BU700_O;
      LUT4       BU700(
         .I0(BU700_I0),
         .I1(BU700_I1),
         .I2(BU700_I2),
         .I3(BU700_I3),
         .O(BU700_O)
      );

      defparam BU712.INIT = 'hf690;
      wire BU712_I0;
         assign BU712_I0 = n1205;
      wire BU712_I1;
         assign BU712_I1 = n1228;
      wire BU712_I2;
         assign BU712_I2 = n1281;
      wire BU712_I3;
         assign BU712_I3 = n1259;
      wire BU712_O;
         assign n1347 = BU712_O;
      LUT4       BU712(
         .I0(BU712_I0),
         .I1(BU712_I1),
         .I2(BU712_I2),
         .I3(BU712_I3),
         .O(BU712_O)
      );

      defparam BU724.INIT = 'hf690;
      wire BU724_I0;
         assign BU724_I0 = n1205;
      wire BU724_I1;
         assign BU724_I1 = n1228;
      wire BU724_I2;
         assign BU724_I2 = n1280;
      wire BU724_I3;
         assign BU724_I3 = n1258;
      wire BU724_O;
         assign n1346 = BU724_O;
      LUT4       BU724(
         .I0(BU724_I0),
         .I1(BU724_I1),
         .I2(BU724_I2),
         .I3(BU724_I3),
         .O(BU724_O)
      );

      defparam BU736.INIT = 'hf690;
      wire BU736_I0;
         assign BU736_I0 = n1205;
      wire BU736_I1;
         assign BU736_I1 = n1228;
      wire BU736_I2;
         assign BU736_I2 = n1279;
      wire BU736_I3;
         assign BU736_I3 = n1257;
      wire BU736_O;
         assign n1345 = BU736_O;
      LUT4       BU736(
         .I0(BU736_I0),
         .I1(BU736_I1),
         .I2(BU736_I2),
         .I3(BU736_I3),
         .O(BU736_O)
      );

      defparam BU748.INIT = 'hf690;
      wire BU748_I0;
         assign BU748_I0 = n1205;
      wire BU748_I1;
         assign BU748_I1 = n1228;
      wire BU748_I2;
         assign BU748_I2 = n1278;
      wire BU748_I3;
         assign BU748_I3 = n1256;
      wire BU748_O;
         assign n1344 = BU748_O;
      LUT4       BU748(
         .I0(BU748_I0),
         .I1(BU748_I1),
         .I2(BU748_I2),
         .I3(BU748_I3),
         .O(BU748_O)
      );

      defparam BU760.INIT = 'hf690;
      wire BU760_I0;
         assign BU760_I0 = n1205;
      wire BU760_I1;
         assign BU760_I1 = n1228;
      wire BU760_I2;
         assign BU760_I2 = n1277;
      wire BU760_I3;
         assign BU760_I3 = n1255;
      wire BU760_O;
         assign n1343 = BU760_O;
      LUT4       BU760(
         .I0(BU760_I0),
         .I1(BU760_I1),
         .I2(BU760_I2),
         .I3(BU760_I3),
         .O(BU760_O)
      );

      defparam BU772.INIT = 'hf690;
      wire BU772_I0;
         assign BU772_I0 = n1205;
      wire BU772_I1;
         assign BU772_I1 = n1228;
      wire BU772_I2;
         assign BU772_I2 = n1276;
      wire BU772_I3;
         assign BU772_I3 = n1254;
      wire BU772_O;
         assign n1342 = BU772_O;
      LUT4       BU772(
         .I0(BU772_I0),
         .I1(BU772_I1),
         .I2(BU772_I2),
         .I3(BU772_I3),
         .O(BU772_O)
      );

      defparam BU784.INIT = 'hf690;
      wire BU784_I0;
         assign BU784_I0 = n1205;
      wire BU784_I1;
         assign BU784_I1 = n1228;
      wire BU784_I2;
         assign BU784_I2 = n1275;
      wire BU784_I3;
         assign BU784_I3 = n1253;
      wire BU784_O;
         assign n1341 = BU784_O;
      LUT4       BU784(
         .I0(BU784_I0),
         .I1(BU784_I1),
         .I2(BU784_I2),
         .I3(BU784_I3),
         .O(BU784_O)
      );

      defparam BU1091.INIT = 'ha3c5;
      wire BU1091_I0;
         assign BU1091_I0 = 1'b1;
      wire BU1091_I1;
         assign BU1091_I1 = 1'b1;
      wire BU1091_I2;
         assign BU1091_I2 = n1364;
      wire BU1091_I3;
         assign BU1091_I3 = n1363;
      wire BU1091_O;
         assign n1508 = BU1091_O;
      LUT4       BU1091(
         .I0(BU1091_I0),
         .I1(BU1091_I1),
         .I2(BU1091_I2),
         .I3(BU1091_I3),
         .O(BU1091_O)
      );

      wire [21 : 0] BU476_D;
         assign BU476_D[0] = n956;
         assign BU476_D[1] = n955;
         assign BU476_D[2] = n954;
         assign BU476_D[3] = n953;
         assign BU476_D[4] = n952;
         assign BU476_D[5] = n951;
         assign BU476_D[6] = n950;
         assign BU476_D[7] = n949;
         assign BU476_D[8] = n948;
         assign BU476_D[9] = n947;
         assign BU476_D[10] = n946;
         assign BU476_D[11] = n945;
         assign BU476_D[12] = n944;
         assign BU476_D[13] = n943;
         assign BU476_D[14] = n942;
         assign BU476_D[15] = n941;
         assign BU476_D[16] = n940;
         assign BU476_D[17] = n939;
         assign BU476_D[18] = n938;
         assign BU476_D[19] = n937;
         assign BU476_D[20] = n936;
         assign BU476_D[21] = n935;
      wire [21 : 0] BU476_Q;
         assign n1296 = BU476_Q[0];
         assign n1295 = BU476_Q[1];
         assign n1294 = BU476_Q[2];
         assign n1293 = BU476_Q[3];
         assign n1292 = BU476_Q[4];
         assign n1291 = BU476_Q[5];
         assign n1290 = BU476_Q[6];
         assign n1289 = BU476_Q[7];
         assign n1288 = BU476_Q[8];
         assign n1287 = BU476_Q[9];
         assign n1286 = BU476_Q[10];
         assign n1285 = BU476_Q[11];
         assign n1284 = BU476_Q[12];
         assign n1283 = BU476_Q[13];
         assign n1282 = BU476_Q[14];
         assign n1281 = BU476_Q[15];
         assign n1280 = BU476_Q[16];
         assign n1279 = BU476_Q[17];
         assign n1278 = BU476_Q[18];
         assign n1277 = BU476_Q[19];
         assign n1276 = BU476_Q[20];
         assign n1275 = BU476_Q[21];
      wire BU476_CLK;
         assign BU476_CLK = n906;
      C_REG_FD_V7_0 #(
         "0000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         22    /* c_width*/
      )
      BU476(
         .D(BU476_D),
         .Q(BU476_Q),
         .CLK(BU476_CLK)
      );

      wire [0 : 0] BU1096_D;
         assign BU1096_D[0] = n1508;
      wire [0 : 0] BU1096_Q;
         assign n342 = BU1096_Q[0];
      wire BU1096_CLK;
         assign BU1096_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1096(
         .D(BU1096_D),
         .Q(BU1096_Q),
         .CLK(BU1096_CLK)
      );

      wire [22 : 0] BU139_A;
         assign BU139_A[0] = n934;
         assign BU139_A[1] = n933;
         assign BU139_A[2] = n932;
         assign BU139_A[3] = n931;
         assign BU139_A[4] = n930;
         assign BU139_A[5] = n929;
         assign BU139_A[6] = n928;
         assign BU139_A[7] = n927;
         assign BU139_A[8] = n926;
         assign BU139_A[9] = n925;
         assign BU139_A[10] = n924;
         assign BU139_A[11] = n923;
         assign BU139_A[12] = n922;
         assign BU139_A[13] = n921;
         assign BU139_A[14] = n920;
         assign BU139_A[15] = n919;
         assign BU139_A[16] = n918;
         assign BU139_A[17] = n917;
         assign BU139_A[18] = n916;
         assign BU139_A[19] = n915;
         assign BU139_A[20] = n914;
         assign BU139_A[21] = n913;
         assign BU139_A[22] = n913;
      wire [22 : 0] BU139_B;
         assign BU139_B[0] = n956;
         assign BU139_B[1] = n955;
         assign BU139_B[2] = n954;
         assign BU139_B[3] = n953;
         assign BU139_B[4] = n952;
         assign BU139_B[5] = n951;
         assign BU139_B[6] = n950;
         assign BU139_B[7] = n949;
         assign BU139_B[8] = n948;
         assign BU139_B[9] = n947;
         assign BU139_B[10] = n946;
         assign BU139_B[11] = n945;
         assign BU139_B[12] = n944;
         assign BU139_B[13] = n943;
         assign BU139_B[14] = n942;
         assign BU139_B[15] = n941;
         assign BU139_B[16] = n940;
         assign BU139_B[17] = n939;
         assign BU139_B[18] = n938;
         assign BU139_B[19] = n937;
         assign BU139_B[20] = n936;
         assign BU139_B[21] = n935;
         assign BU139_B[22] = n935;
      wire BU139_ADD;
         assign BU139_ADD = 1'b0;
      wire [22 : 0] BU139_Q;
         assign n1205 = BU139_Q[22];
      wire BU139_CLK;
         assign BU139_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "00000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         23    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "00000000000000000000000"    /* c_b_value*/,
         23    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         22    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         23    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "00000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU139(
         .A(BU139_A),
         .B(BU139_B),
         .ADD(BU139_ADD),
         .Q(BU139_Q),
         .CLK(BU139_CLK)
      );

      wire [22 : 0] BU283_A;
         assign BU283_A[0] = n934;
         assign BU283_A[1] = n933;
         assign BU283_A[2] = n932;
         assign BU283_A[3] = n931;
         assign BU283_A[4] = n930;
         assign BU283_A[5] = n929;
         assign BU283_A[6] = n928;
         assign BU283_A[7] = n927;
         assign BU283_A[8] = n926;
         assign BU283_A[9] = n925;
         assign BU283_A[10] = n924;
         assign BU283_A[11] = n923;
         assign BU283_A[12] = n922;
         assign BU283_A[13] = n921;
         assign BU283_A[14] = n920;
         assign BU283_A[15] = n919;
         assign BU283_A[16] = n918;
         assign BU283_A[17] = n917;
         assign BU283_A[18] = n916;
         assign BU283_A[19] = n915;
         assign BU283_A[20] = n914;
         assign BU283_A[21] = n913;
         assign BU283_A[22] = n913;
      wire [22 : 0] BU283_B;
         assign BU283_B[0] = n956;
         assign BU283_B[1] = n955;
         assign BU283_B[2] = n954;
         assign BU283_B[3] = n953;
         assign BU283_B[4] = n952;
         assign BU283_B[5] = n951;
         assign BU283_B[6] = n950;
         assign BU283_B[7] = n949;
         assign BU283_B[8] = n948;
         assign BU283_B[9] = n947;
         assign BU283_B[10] = n946;
         assign BU283_B[11] = n945;
         assign BU283_B[12] = n944;
         assign BU283_B[13] = n943;
         assign BU283_B[14] = n942;
         assign BU283_B[15] = n941;
         assign BU283_B[16] = n940;
         assign BU283_B[17] = n939;
         assign BU283_B[18] = n938;
         assign BU283_B[19] = n937;
         assign BU283_B[20] = n936;
         assign BU283_B[21] = n935;
         assign BU283_B[22] = n935;
      wire BU283_ADD;
         assign BU283_ADD = 1'b1;
      wire [22 : 0] BU283_Q;
         assign n1228 = BU283_Q[22];
      wire BU283_CLK;
         assign BU283_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "00000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         23    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "00000000000000000000000"    /* c_b_value*/,
         23    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         22    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         23    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "00000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU283(
         .A(BU283_A),
         .B(BU283_B),
         .ADD(BU283_ADD),
         .Q(BU283_Q),
         .CLK(BU283_CLK)
      );

      wire [0 : 0] BU1103_D;
         assign BU1103_D[0] = n979;
      wire [0 : 0] BU1103_Q;
         assign n1509 = BU1103_Q[0];
      wire BU1103_CLK;
         assign BU1103_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1103(
         .D(BU1103_D),
         .Q(BU1103_Q),
         .CLK(BU1103_CLK)
      );

      wire [0 : 0] BU1110_D;
         assign BU1110_D[0] = n1509;
      wire [0 : 0] BU1110_Q;
         assign n343 = BU1110_Q[0];
      wire BU1110_CLK;
         assign BU1110_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1110(
         .D(BU1110_D),
         .Q(BU1110_Q),
         .CLK(BU1110_CLK)
      );

      wire [21 : 0] BU789_A;
         assign BU789_A[0] = 1'b0;
         assign BU789_A[1] = 1'b0;
         assign BU789_A[2] = 1'b0;
         assign BU789_A[3] = 1'b0;
         assign BU789_A[4] = 1'b0;
         assign BU789_A[5] = 1'b0;
         assign BU789_A[6] = 1'b0;
         assign BU789_A[7] = 1'b0;
         assign BU789_A[8] = 1'b0;
         assign BU789_A[9] = 1'b0;
         assign BU789_A[10] = 1'b0;
         assign BU789_A[11] = 1'b0;
         assign BU789_A[12] = 1'b0;
         assign BU789_A[13] = 1'b0;
         assign BU789_A[14] = 1'b0;
         assign BU789_A[15] = 1'b0;
         assign BU789_A[16] = 1'b0;
         assign BU789_A[17] = 1'b0;
         assign BU789_A[18] = 1'b0;
         assign BU789_A[19] = 1'b0;
         assign BU789_A[20] = 1'b0;
         assign BU789_A[21] = 1'b0;
      wire [21 : 0] BU789_B;
         assign BU789_B[0] = n1340;
         assign BU789_B[1] = n1339;
         assign BU789_B[2] = n1338;
         assign BU789_B[3] = n1337;
         assign BU789_B[4] = n1336;
         assign BU789_B[5] = n1335;
         assign BU789_B[6] = n1334;
         assign BU789_B[7] = n1333;
         assign BU789_B[8] = n1332;
         assign BU789_B[9] = n1331;
         assign BU789_B[10] = n1330;
         assign BU789_B[11] = n1329;
         assign BU789_B[12] = n1328;
         assign BU789_B[13] = n1327;
         assign BU789_B[14] = n1326;
         assign BU789_B[15] = n1325;
         assign BU789_B[16] = n1324;
         assign BU789_B[17] = n1323;
         assign BU789_B[18] = n1322;
         assign BU789_B[19] = n1321;
         assign BU789_B[20] = n1320;
         assign BU789_B[21] = n1319;
      wire BU789_ADD;
         assign BU789_ADD = n1364;
      wire [21 : 0] BU789_Q;
         assign n296 = BU789_Q[0];
         assign n295 = BU789_Q[1];
         assign n294 = BU789_Q[2];
         assign n293 = BU789_Q[3];
         assign n292 = BU789_Q[4];
         assign n291 = BU789_Q[5];
         assign n290 = BU789_Q[6];
         assign n289 = BU789_Q[7];
         assign n288 = BU789_Q[8];
         assign n287 = BU789_Q[9];
         assign n286 = BU789_Q[10];
         assign n285 = BU789_Q[11];
         assign n284 = BU789_Q[12];
         assign n283 = BU789_Q[13];
         assign n282 = BU789_Q[14];
         assign n281 = BU789_Q[15];
         assign n280 = BU789_Q[16];
         assign n279 = BU789_Q[17];
         assign n278 = BU789_Q[18];
         assign n277 = BU789_Q[19];
         assign n276 = BU789_Q[20];
         assign n275 = BU789_Q[21];
      wire BU789_CLK;
         assign BU789_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU789(
         .A(BU789_A),
         .B(BU789_B),
         .ADD(BU789_ADD),
         .Q(BU789_Q),
         .CLK(BU789_CLK)
      );

      wire [21 : 0] BU927_A;
         assign BU927_A[0] = 1'b0;
         assign BU927_A[1] = 1'b0;
         assign BU927_A[2] = 1'b0;
         assign BU927_A[3] = 1'b0;
         assign BU927_A[4] = 1'b0;
         assign BU927_A[5] = 1'b0;
         assign BU927_A[6] = 1'b0;
         assign BU927_A[7] = 1'b0;
         assign BU927_A[8] = 1'b0;
         assign BU927_A[9] = 1'b0;
         assign BU927_A[10] = 1'b0;
         assign BU927_A[11] = 1'b0;
         assign BU927_A[12] = 1'b0;
         assign BU927_A[13] = 1'b0;
         assign BU927_A[14] = 1'b0;
         assign BU927_A[15] = 1'b0;
         assign BU927_A[16] = 1'b0;
         assign BU927_A[17] = 1'b0;
         assign BU927_A[18] = 1'b0;
         assign BU927_A[19] = 1'b0;
         assign BU927_A[20] = 1'b0;
         assign BU927_A[21] = 1'b0;
      wire [21 : 0] BU927_B;
         assign BU927_B[0] = n1362;
         assign BU927_B[1] = n1361;
         assign BU927_B[2] = n1360;
         assign BU927_B[3] = n1359;
         assign BU927_B[4] = n1358;
         assign BU927_B[5] = n1357;
         assign BU927_B[6] = n1356;
         assign BU927_B[7] = n1355;
         assign BU927_B[8] = n1354;
         assign BU927_B[9] = n1353;
         assign BU927_B[10] = n1352;
         assign BU927_B[11] = n1351;
         assign BU927_B[12] = n1350;
         assign BU927_B[13] = n1349;
         assign BU927_B[14] = n1348;
         assign BU927_B[15] = n1347;
         assign BU927_B[16] = n1346;
         assign BU927_B[17] = n1345;
         assign BU927_B[18] = n1344;
         assign BU927_B[19] = n1343;
         assign BU927_B[20] = n1342;
         assign BU927_B[21] = n1341;
      wire BU927_ADD;
         assign BU927_ADD = n1363;
      wire [21 : 0] BU927_Q;
         assign n318 = BU927_Q[0];
         assign n317 = BU927_Q[1];
         assign n316 = BU927_Q[2];
         assign n315 = BU927_Q[3];
         assign n314 = BU927_Q[4];
         assign n313 = BU927_Q[5];
         assign n312 = BU927_Q[6];
         assign n311 = BU927_Q[7];
         assign n310 = BU927_Q[8];
         assign n309 = BU927_Q[9];
         assign n308 = BU927_Q[10];
         assign n307 = BU927_Q[11];
         assign n306 = BU927_Q[12];
         assign n305 = BU927_Q[13];
         assign n304 = BU927_Q[14];
         assign n303 = BU927_Q[15];
         assign n302 = BU927_Q[16];
         assign n301 = BU927_Q[17];
         assign n300 = BU927_Q[18];
         assign n299 = BU927_Q[19];
         assign n298 = BU927_Q[20];
         assign n297 = BU927_Q[21];
      wire BU927_CLK;
         assign BU927_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU927(
         .A(BU927_A),
         .B(BU927_B),
         .ADD(BU927_ADD),
         .Q(BU927_Q),
         .CLK(BU927_CLK)
      );

      wire [21 : 0] BU1129_A;
         assign BU1129_A[0] = n296;
         assign BU1129_A[1] = n295;
         assign BU1129_A[2] = n294;
         assign BU1129_A[3] = n293;
         assign BU1129_A[4] = n292;
         assign BU1129_A[5] = n291;
         assign BU1129_A[6] = n290;
         assign BU1129_A[7] = n289;
         assign BU1129_A[8] = n288;
         assign BU1129_A[9] = n287;
         assign BU1129_A[10] = n286;
         assign BU1129_A[11] = n285;
         assign BU1129_A[12] = n284;
         assign BU1129_A[13] = n283;
         assign BU1129_A[14] = n282;
         assign BU1129_A[15] = n281;
         assign BU1129_A[16] = n280;
         assign BU1129_A[17] = n279;
         assign BU1129_A[18] = n278;
         assign BU1129_A[19] = n277;
         assign BU1129_A[20] = n276;
         assign BU1129_A[21] = n275;
      wire [21 : 0] BU1129_B;
         assign BU1129_B[0] = n317;
         assign BU1129_B[1] = n316;
         assign BU1129_B[2] = n315;
         assign BU1129_B[3] = n314;
         assign BU1129_B[4] = n313;
         assign BU1129_B[5] = n312;
         assign BU1129_B[6] = n311;
         assign BU1129_B[7] = n310;
         assign BU1129_B[8] = n309;
         assign BU1129_B[9] = n308;
         assign BU1129_B[10] = n307;
         assign BU1129_B[11] = n306;
         assign BU1129_B[12] = n305;
         assign BU1129_B[13] = n304;
         assign BU1129_B[14] = n303;
         assign BU1129_B[15] = n302;
         assign BU1129_B[16] = n301;
         assign BU1129_B[17] = n300;
         assign BU1129_B[18] = n299;
         assign BU1129_B[19] = n298;
         assign BU1129_B[20] = n297;
         assign BU1129_B[21] = n297;
      wire BU1129_ADD;
         assign BU1129_ADD = n8818;
      wire [21 : 0] BU1129_Q;
         assign n6171 = BU1129_Q[0];
         assign n6170 = BU1129_Q[1];
         assign n6169 = BU1129_Q[2];
         assign n6168 = BU1129_Q[3];
         assign n6167 = BU1129_Q[4];
         assign n6166 = BU1129_Q[5];
         assign n6165 = BU1129_Q[6];
         assign n6164 = BU1129_Q[7];
         assign n6163 = BU1129_Q[8];
         assign n6162 = BU1129_Q[9];
         assign n6161 = BU1129_Q[10];
         assign n6160 = BU1129_Q[11];
         assign n6159 = BU1129_Q[12];
         assign n6158 = BU1129_Q[13];
         assign n6157 = BU1129_Q[14];
         assign n6156 = BU1129_Q[15];
         assign n6155 = BU1129_Q[16];
         assign n6154 = BU1129_Q[17];
         assign n6153 = BU1129_Q[18];
         assign n6152 = BU1129_Q[19];
         assign n6151 = BU1129_Q[20];
         assign n6150 = BU1129_Q[21];
      wire BU1129_CLK;
         assign BU1129_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1129(
         .A(BU1129_A),
         .B(BU1129_B),
         .ADD(BU1129_ADD),
         .Q(BU1129_Q),
         .CLK(BU1129_CLK)
      );

      defparam BU1268.INIT = 'ha53c;
      wire BU1268_I0;
         assign BU1268_I0 = n297;
      wire BU1268_I1;
         assign BU1268_I1 = 1'b0;
      wire BU1268_I2;
         assign BU1268_I2 = 1'b0;
      wire BU1268_I3;
         assign BU1268_I3 = 1'b1;
      wire BU1268_O;
         assign n8818 = BU1268_O;
      LUT4       BU1268(
         .I0(BU1268_I0),
         .I1(BU1268_I1),
         .I2(BU1268_I2),
         .I3(BU1268_I3),
         .O(BU1268_O)
      );

      wire [21 : 0] BU1273_A;
         assign BU1273_A[0] = n318;
         assign BU1273_A[1] = n317;
         assign BU1273_A[2] = n316;
         assign BU1273_A[3] = n315;
         assign BU1273_A[4] = n314;
         assign BU1273_A[5] = n313;
         assign BU1273_A[6] = n312;
         assign BU1273_A[7] = n311;
         assign BU1273_A[8] = n310;
         assign BU1273_A[9] = n309;
         assign BU1273_A[10] = n308;
         assign BU1273_A[11] = n307;
         assign BU1273_A[12] = n306;
         assign BU1273_A[13] = n305;
         assign BU1273_A[14] = n304;
         assign BU1273_A[15] = n303;
         assign BU1273_A[16] = n302;
         assign BU1273_A[17] = n301;
         assign BU1273_A[18] = n300;
         assign BU1273_A[19] = n299;
         assign BU1273_A[20] = n298;
         assign BU1273_A[21] = n297;
      wire [21 : 0] BU1273_B;
         assign BU1273_B[0] = n295;
         assign BU1273_B[1] = n294;
         assign BU1273_B[2] = n293;
         assign BU1273_B[3] = n292;
         assign BU1273_B[4] = n291;
         assign BU1273_B[5] = n290;
         assign BU1273_B[6] = n289;
         assign BU1273_B[7] = n288;
         assign BU1273_B[8] = n287;
         assign BU1273_B[9] = n286;
         assign BU1273_B[10] = n285;
         assign BU1273_B[11] = n284;
         assign BU1273_B[12] = n283;
         assign BU1273_B[13] = n282;
         assign BU1273_B[14] = n281;
         assign BU1273_B[15] = n280;
         assign BU1273_B[16] = n279;
         assign BU1273_B[17] = n278;
         assign BU1273_B[18] = n277;
         assign BU1273_B[19] = n276;
         assign BU1273_B[20] = n275;
         assign BU1273_B[21] = n275;
      wire BU1273_ADD;
         assign BU1273_ADD = n8819;
      wire [21 : 0] BU1273_Q;
         assign n6919 = BU1273_Q[0];
         assign n6918 = BU1273_Q[1];
         assign n6917 = BU1273_Q[2];
         assign n6916 = BU1273_Q[3];
         assign n6915 = BU1273_Q[4];
         assign n6914 = BU1273_Q[5];
         assign n6913 = BU1273_Q[6];
         assign n6912 = BU1273_Q[7];
         assign n6911 = BU1273_Q[8];
         assign n6910 = BU1273_Q[9];
         assign n6909 = BU1273_Q[10];
         assign n6908 = BU1273_Q[11];
         assign n6907 = BU1273_Q[12];
         assign n6906 = BU1273_Q[13];
         assign n6905 = BU1273_Q[14];
         assign n6904 = BU1273_Q[15];
         assign n6903 = BU1273_Q[16];
         assign n6902 = BU1273_Q[17];
         assign n6901 = BU1273_Q[18];
         assign n6900 = BU1273_Q[19];
         assign n6899 = BU1273_Q[20];
         assign n6898 = BU1273_Q[21];
      wire BU1273_CLK;
         assign BU1273_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1273(
         .A(BU1273_A),
         .B(BU1273_B),
         .ADD(BU1273_ADD),
         .Q(BU1273_Q),
         .CLK(BU1273_CLK)
      );

      defparam BU1412.INIT = 'ha3a3;
      wire BU1412_I0;
         assign BU1412_I0 = n297;
      wire BU1412_I1;
         assign BU1412_I1 = 1'b0;
      wire BU1412_I2;
         assign BU1412_I2 = 1'b1;
      wire BU1412_I3;
         assign BU1412_I3 = 1'b0;
      wire BU1412_O;
         assign n8819 = BU1412_O;
      LUT4       BU1412(
         .I0(BU1412_I0),
         .I1(BU1412_I1),
         .I2(BU1412_I2),
         .I3(BU1412_I3),
         .O(BU1412_O)
      );

      wire [21 : 0] BU1419_A;
         assign BU1419_A[0] = 1'b0;
         assign BU1419_A[1] = 1'b0;
         assign BU1419_A[2] = 1'b0;
         assign BU1419_A[3] = 1'b0;
         assign BU1419_A[4] = 1'b0;
         assign BU1419_A[5] = 1'b0;
         assign BU1419_A[6] = 1'b0;
         assign BU1419_A[7] = 1'b0;
         assign BU1419_A[8] = 1'b0;
         assign BU1419_A[9] = 1'b0;
         assign BU1419_A[10] = 1'b0;
         assign BU1419_A[11] = 1'b0;
         assign BU1419_A[12] = 1'b0;
         assign BU1419_A[13] = 1'b0;
         assign BU1419_A[14] = 1'b0;
         assign BU1419_A[15] = 1'b0;
         assign BU1419_A[16] = 1'b0;
         assign BU1419_A[17] = 1'b0;
         assign BU1419_A[18] = 1'b0;
         assign BU1419_A[19] = 1'b0;
         assign BU1419_A[20] = 1'b0;
         assign BU1419_A[21] = 1'b0;
      wire [21 : 0] BU1419_B;
         assign BU1419_B[0] = 1'b0;
         assign BU1419_B[1] = 1'b0;
         assign BU1419_B[2] = 1'b0;
         assign BU1419_B[3] = 1'b0;
         assign BU1419_B[4] = 1'b0;
         assign BU1419_B[5] = 1'b0;
         assign BU1419_B[6] = 1'b1;
         assign BU1419_B[7] = 1'b0;
         assign BU1419_B[8] = 1'b0;
         assign BU1419_B[9] = 1'b1;
         assign BU1419_B[10] = 1'b1;
         assign BU1419_B[11] = 1'b1;
         assign BU1419_B[12] = 1'b0;
         assign BU1419_B[13] = 1'b1;
         assign BU1419_B[14] = 1'b0;
         assign BU1419_B[15] = 1'b0;
         assign BU1419_B[16] = 1'b1;
         assign BU1419_B[17] = 1'b0;
         assign BU1419_B[18] = 1'b0;
         assign BU1419_B[19] = 1'b0;
         assign BU1419_B[20] = 1'b0;
         assign BU1419_B[21] = 1'b0;
      wire BU1419_ADD;
         assign BU1419_ADD = n10234;
      wire [21 : 0] BU1419_S;
         assign n10211 = BU1419_S[21];
      wire [21 : 0] BU1419_Q;
         assign n7667 = BU1419_Q[0];
         assign n7666 = BU1419_Q[1];
         assign n7665 = BU1419_Q[2];
         assign n7664 = BU1419_Q[3];
         assign n7663 = BU1419_Q[4];
         assign n7662 = BU1419_Q[5];
         assign n7661 = BU1419_Q[6];
         assign n7660 = BU1419_Q[7];
         assign n7659 = BU1419_Q[8];
         assign n7658 = BU1419_Q[9];
         assign n7657 = BU1419_Q[10];
         assign n7656 = BU1419_Q[11];
         assign n7655 = BU1419_Q[12];
         assign n7654 = BU1419_Q[13];
         assign n7653 = BU1419_Q[14];
         assign n7652 = BU1419_Q[15];
         assign n7651 = BU1419_Q[16];
         assign n7650 = BU1419_Q[17];
         assign n7649 = BU1419_Q[18];
         assign n7648 = BU1419_Q[19];
         assign n7647 = BU1419_Q[20];
         assign n7646 = BU1419_Q[21];
      wire BU1419_CLK;
         assign BU1419_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1419(
         .A(BU1419_A),
         .B(BU1419_B),
         .ADD(BU1419_ADD),
         .S(BU1419_S),
         .Q(BU1419_Q),
         .CLK(BU1419_CLK)
      );

      defparam BU1558.INIT = 'h5c5c;
      wire BU1558_I0;
         assign BU1558_I0 = n297;
      wire BU1558_I1;
         assign BU1558_I1 = 1'b0;
      wire BU1558_I2;
         assign BU1558_I2 = 1'b1;
      wire BU1558_I3;
         assign BU1558_I3 = 1'b0;
      wire BU1558_O;
         assign n10234 = BU1558_O;
      LUT4       BU1558(
         .I0(BU1558_I0),
         .I1(BU1558_I1),
         .I2(BU1558_I2),
         .I3(BU1558_I3),
         .O(BU1558_O)
      );

      wire [0 : 0] BU1563_D;
         assign BU1563_D[0] = n10211;
      wire [0 : 0] BU1563_Q;
         assign n8212 = BU1563_Q[0];
      wire BU1563_CLK;
         assign BU1563_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1563(
         .D(BU1563_D),
         .Q(BU1563_Q),
         .CLK(BU1563_CLK)
      );

      wire [0 : 0] BU1572_D;
         assign BU1572_D[0] = n343;
      wire [0 : 0] BU1572_Q;
         assign n8111 = BU1572_Q[0];
      wire BU1572_CLK;
         assign BU1572_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1572(
         .D(BU1572_D),
         .Q(BU1572_Q),
         .CLK(BU1572_CLK)
      );

      wire [0 : 0] BU1579_D;
         assign BU1579_D[0] = n342;
      wire [0 : 0] BU1579_Q;
         assign n8110 = BU1579_Q[0];
      wire BU1579_CLK;
         assign BU1579_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1579(
         .D(BU1579_D),
         .Q(BU1579_Q),
         .CLK(BU1579_CLK)
      );

      wire [0 : 0] BU1586_D;
         assign BU1586_D[0] = n341;
      wire [0 : 0] BU1586_Q;
         assign n8109 = BU1586_Q[0];
      wire BU1586_CLK;
         assign BU1586_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1586(
         .D(BU1586_D),
         .Q(BU1586_Q),
         .CLK(BU1586_CLK)
      );

      wire [0 : 0] BU1593_D;
         assign BU1593_D[0] = 1'b1;
      wire [0 : 0] BU1593_Q;
         assign n8211 = BU1593_Q[0];
      wire BU1593_CLK;
         assign BU1593_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU1593(
         .D(BU1593_D),
         .Q(BU1593_Q),
         .CLK(BU1593_CLK)
      );

      wire [21 : 0] BU1609_A;
         assign BU1609_A[0] = n6171;
         assign BU1609_A[1] = n6170;
         assign BU1609_A[2] = n6169;
         assign BU1609_A[3] = n6168;
         assign BU1609_A[4] = n6167;
         assign BU1609_A[5] = n6166;
         assign BU1609_A[6] = n6165;
         assign BU1609_A[7] = n6164;
         assign BU1609_A[8] = n6163;
         assign BU1609_A[9] = n6162;
         assign BU1609_A[10] = n6161;
         assign BU1609_A[11] = n6160;
         assign BU1609_A[12] = n6159;
         assign BU1609_A[13] = n6158;
         assign BU1609_A[14] = n6157;
         assign BU1609_A[15] = n6156;
         assign BU1609_A[16] = n6155;
         assign BU1609_A[17] = n6154;
         assign BU1609_A[18] = n6153;
         assign BU1609_A[19] = n6152;
         assign BU1609_A[20] = n6151;
         assign BU1609_A[21] = n6150;
      wire [21 : 0] BU1609_B;
         assign BU1609_B[0] = n6917;
         assign BU1609_B[1] = n6916;
         assign BU1609_B[2] = n6915;
         assign BU1609_B[3] = n6914;
         assign BU1609_B[4] = n6913;
         assign BU1609_B[5] = n6912;
         assign BU1609_B[6] = n6911;
         assign BU1609_B[7] = n6910;
         assign BU1609_B[8] = n6909;
         assign BU1609_B[9] = n6908;
         assign BU1609_B[10] = n6907;
         assign BU1609_B[11] = n6906;
         assign BU1609_B[12] = n6905;
         assign BU1609_B[13] = n6904;
         assign BU1609_B[14] = n6903;
         assign BU1609_B[15] = n6902;
         assign BU1609_B[16] = n6901;
         assign BU1609_B[17] = n6900;
         assign BU1609_B[18] = n6899;
         assign BU1609_B[19] = n6898;
         assign BU1609_B[20] = n6898;
         assign BU1609_B[21] = n6898;
      wire BU1609_ADD;
         assign BU1609_ADD = n11392;
      wire [21 : 0] BU1609_Q;
         assign n6149 = BU1609_Q[0];
         assign n6148 = BU1609_Q[1];
         assign n6147 = BU1609_Q[2];
         assign n6146 = BU1609_Q[3];
         assign n6145 = BU1609_Q[4];
         assign n6144 = BU1609_Q[5];
         assign n6143 = BU1609_Q[6];
         assign n6142 = BU1609_Q[7];
         assign n6141 = BU1609_Q[8];
         assign n6140 = BU1609_Q[9];
         assign n6139 = BU1609_Q[10];
         assign n6138 = BU1609_Q[11];
         assign n6137 = BU1609_Q[12];
         assign n6136 = BU1609_Q[13];
         assign n6135 = BU1609_Q[14];
         assign n6134 = BU1609_Q[15];
         assign n6133 = BU1609_Q[16];
         assign n6132 = BU1609_Q[17];
         assign n6131 = BU1609_Q[18];
         assign n6130 = BU1609_Q[19];
         assign n6129 = BU1609_Q[20];
         assign n6128 = BU1609_Q[21];
      wire BU1609_CLK;
         assign BU1609_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1609(
         .A(BU1609_A),
         .B(BU1609_B),
         .ADD(BU1609_ADD),
         .Q(BU1609_Q),
         .CLK(BU1609_CLK)
      );

      defparam BU1748.INIT = 'ha53c;
      wire BU1748_I0;
         assign BU1748_I0 = n6898;
      wire BU1748_I1;
         assign BU1748_I1 = n8212;
      wire BU1748_I2;
         assign BU1748_I2 = 1'b0;
      wire BU1748_I3;
         assign BU1748_I3 = n8211;
      wire BU1748_O;
         assign n11392 = BU1748_O;
      LUT4       BU1748(
         .I0(BU1748_I0),
         .I1(BU1748_I1),
         .I2(BU1748_I2),
         .I3(BU1748_I3),
         .O(BU1748_O)
      );

      wire [21 : 0] BU1753_A;
         assign BU1753_A[0] = n6919;
         assign BU1753_A[1] = n6918;
         assign BU1753_A[2] = n6917;
         assign BU1753_A[3] = n6916;
         assign BU1753_A[4] = n6915;
         assign BU1753_A[5] = n6914;
         assign BU1753_A[6] = n6913;
         assign BU1753_A[7] = n6912;
         assign BU1753_A[8] = n6911;
         assign BU1753_A[9] = n6910;
         assign BU1753_A[10] = n6909;
         assign BU1753_A[11] = n6908;
         assign BU1753_A[12] = n6907;
         assign BU1753_A[13] = n6906;
         assign BU1753_A[14] = n6905;
         assign BU1753_A[15] = n6904;
         assign BU1753_A[16] = n6903;
         assign BU1753_A[17] = n6902;
         assign BU1753_A[18] = n6901;
         assign BU1753_A[19] = n6900;
         assign BU1753_A[20] = n6899;
         assign BU1753_A[21] = n6898;
      wire [21 : 0] BU1753_B;
         assign BU1753_B[0] = n6169;
         assign BU1753_B[1] = n6168;
         assign BU1753_B[2] = n6167;
         assign BU1753_B[3] = n6166;
         assign BU1753_B[4] = n6165;
         assign BU1753_B[5] = n6164;
         assign BU1753_B[6] = n6163;
         assign BU1753_B[7] = n6162;
         assign BU1753_B[8] = n6161;
         assign BU1753_B[9] = n6160;
         assign BU1753_B[10] = n6159;
         assign BU1753_B[11] = n6158;
         assign BU1753_B[12] = n6157;
         assign BU1753_B[13] = n6156;
         assign BU1753_B[14] = n6155;
         assign BU1753_B[15] = n6154;
         assign BU1753_B[16] = n6153;
         assign BU1753_B[17] = n6152;
         assign BU1753_B[18] = n6151;
         assign BU1753_B[19] = n6150;
         assign BU1753_B[20] = n6150;
         assign BU1753_B[21] = n6150;
      wire BU1753_ADD;
         assign BU1753_ADD = n11393;
      wire [21 : 0] BU1753_Q;
         assign n6897 = BU1753_Q[0];
         assign n6896 = BU1753_Q[1];
         assign n6895 = BU1753_Q[2];
         assign n6894 = BU1753_Q[3];
         assign n6893 = BU1753_Q[4];
         assign n6892 = BU1753_Q[5];
         assign n6891 = BU1753_Q[6];
         assign n6890 = BU1753_Q[7];
         assign n6889 = BU1753_Q[8];
         assign n6888 = BU1753_Q[9];
         assign n6887 = BU1753_Q[10];
         assign n6886 = BU1753_Q[11];
         assign n6885 = BU1753_Q[12];
         assign n6884 = BU1753_Q[13];
         assign n6883 = BU1753_Q[14];
         assign n6882 = BU1753_Q[15];
         assign n6881 = BU1753_Q[16];
         assign n6880 = BU1753_Q[17];
         assign n6879 = BU1753_Q[18];
         assign n6878 = BU1753_Q[19];
         assign n6877 = BU1753_Q[20];
         assign n6876 = BU1753_Q[21];
      wire BU1753_CLK;
         assign BU1753_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1753(
         .A(BU1753_A),
         .B(BU1753_B),
         .ADD(BU1753_ADD),
         .Q(BU1753_Q),
         .CLK(BU1753_CLK)
      );

      defparam BU1892.INIT = 'ha3a3;
      wire BU1892_I0;
         assign BU1892_I0 = n6898;
      wire BU1892_I1;
         assign BU1892_I1 = n8212;
      wire BU1892_I2;
         assign BU1892_I2 = n8211;
      wire BU1892_I3;
         assign BU1892_I3 = 1'b0;
      wire BU1892_O;
         assign n11393 = BU1892_O;
      LUT4       BU1892(
         .I0(BU1892_I0),
         .I1(BU1892_I1),
         .I2(BU1892_I2),
         .I3(BU1892_I3),
         .O(BU1892_O)
      );

      wire [21 : 0] BU1899_A;
         assign BU1899_A[0] = n7667;
         assign BU1899_A[1] = n7666;
         assign BU1899_A[2] = n7665;
         assign BU1899_A[3] = n7664;
         assign BU1899_A[4] = n7663;
         assign BU1899_A[5] = n7662;
         assign BU1899_A[6] = n7661;
         assign BU1899_A[7] = n7660;
         assign BU1899_A[8] = n7659;
         assign BU1899_A[9] = n7658;
         assign BU1899_A[10] = n7657;
         assign BU1899_A[11] = n7656;
         assign BU1899_A[12] = n7655;
         assign BU1899_A[13] = n7654;
         assign BU1899_A[14] = n7653;
         assign BU1899_A[15] = n7652;
         assign BU1899_A[16] = n7651;
         assign BU1899_A[17] = n7650;
         assign BU1899_A[18] = n7649;
         assign BU1899_A[19] = n7648;
         assign BU1899_A[20] = n7647;
         assign BU1899_A[21] = n7646;
      wire [21 : 0] BU1899_B;
         assign BU1899_B[0] = 1'b0;
         assign BU1899_B[1] = 1'b0;
         assign BU1899_B[2] = 1'b1;
         assign BU1899_B[3] = 1'b0;
         assign BU1899_B[4] = 1'b1;
         assign BU1899_B[5] = 1'b1;
         assign BU1899_B[6] = 1'b0;
         assign BU1899_B[7] = 1'b1;
         assign BU1899_B[8] = 1'b1;
         assign BU1899_B[9] = 1'b1;
         assign BU1899_B[10] = 1'b1;
         assign BU1899_B[11] = 1'b1;
         assign BU1899_B[12] = 1'b1;
         assign BU1899_B[13] = 1'b0;
         assign BU1899_B[14] = 1'b0;
         assign BU1899_B[15] = 1'b1;
         assign BU1899_B[16] = 1'b0;
         assign BU1899_B[17] = 1'b0;
         assign BU1899_B[18] = 1'b0;
         assign BU1899_B[19] = 1'b0;
         assign BU1899_B[20] = 1'b0;
         assign BU1899_B[21] = 1'b0;
      wire BU1899_ADD;
         assign BU1899_ADD = n12808;
      wire [21 : 0] BU1899_S;
         assign n12785 = BU1899_S[21];
      wire [21 : 0] BU1899_Q;
         assign n7645 = BU1899_Q[0];
         assign n7644 = BU1899_Q[1];
         assign n7643 = BU1899_Q[2];
         assign n7642 = BU1899_Q[3];
         assign n7641 = BU1899_Q[4];
         assign n7640 = BU1899_Q[5];
         assign n7639 = BU1899_Q[6];
         assign n7638 = BU1899_Q[7];
         assign n7637 = BU1899_Q[8];
         assign n7636 = BU1899_Q[9];
         assign n7635 = BU1899_Q[10];
         assign n7634 = BU1899_Q[11];
         assign n7633 = BU1899_Q[12];
         assign n7632 = BU1899_Q[13];
         assign n7631 = BU1899_Q[14];
         assign n7630 = BU1899_Q[15];
         assign n7629 = BU1899_Q[16];
         assign n7628 = BU1899_Q[17];
         assign n7627 = BU1899_Q[18];
         assign n7626 = BU1899_Q[19];
         assign n7625 = BU1899_Q[20];
         assign n7624 = BU1899_Q[21];
      wire BU1899_CLK;
         assign BU1899_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1899(
         .A(BU1899_A),
         .B(BU1899_B),
         .ADD(BU1899_ADD),
         .S(BU1899_S),
         .Q(BU1899_Q),
         .CLK(BU1899_CLK)
      );

      defparam BU2038.INIT = 'h5c5c;
      wire BU2038_I0;
         assign BU2038_I0 = n6898;
      wire BU2038_I1;
         assign BU2038_I1 = n8212;
      wire BU2038_I2;
         assign BU2038_I2 = n8211;
      wire BU2038_I3;
         assign BU2038_I3 = 1'b0;
      wire BU2038_O;
         assign n12808 = BU2038_O;
      LUT4       BU2038(
         .I0(BU2038_I0),
         .I1(BU2038_I1),
         .I2(BU2038_I2),
         .I3(BU2038_I3),
         .O(BU2038_O)
      );

      wire [0 : 0] BU2043_D;
         assign BU2043_D[0] = n12785;
      wire [0 : 0] BU2043_Q;
         assign n8209 = BU2043_Q[0];
      wire BU2043_CLK;
         assign BU2043_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2043(
         .D(BU2043_D),
         .Q(BU2043_Q),
         .CLK(BU2043_CLK)
      );

      wire [0 : 0] BU2052_D;
         assign BU2052_D[0] = n8111;
      wire [0 : 0] BU2052_Q;
         assign n8108 = BU2052_Q[0];
      wire BU2052_CLK;
         assign BU2052_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2052(
         .D(BU2052_D),
         .Q(BU2052_Q),
         .CLK(BU2052_CLK)
      );

      wire [0 : 0] BU2059_D;
         assign BU2059_D[0] = n8110;
      wire [0 : 0] BU2059_Q;
         assign n8107 = BU2059_Q[0];
      wire BU2059_CLK;
         assign BU2059_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2059(
         .D(BU2059_D),
         .Q(BU2059_Q),
         .CLK(BU2059_CLK)
      );

      wire [0 : 0] BU2066_D;
         assign BU2066_D[0] = n8109;
      wire [0 : 0] BU2066_Q;
         assign n8106 = BU2066_Q[0];
      wire BU2066_CLK;
         assign BU2066_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2066(
         .D(BU2066_D),
         .Q(BU2066_Q),
         .CLK(BU2066_CLK)
      );

      wire [0 : 0] BU2073_D;
         assign BU2073_D[0] = n8211;
      wire [0 : 0] BU2073_Q;
         assign n8208 = BU2073_Q[0];
      wire BU2073_CLK;
         assign BU2073_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2073(
         .D(BU2073_D),
         .Q(BU2073_Q),
         .CLK(BU2073_CLK)
      );

      wire [21 : 0] BU2089_A;
         assign BU2089_A[0] = n6149;
         assign BU2089_A[1] = n6148;
         assign BU2089_A[2] = n6147;
         assign BU2089_A[3] = n6146;
         assign BU2089_A[4] = n6145;
         assign BU2089_A[5] = n6144;
         assign BU2089_A[6] = n6143;
         assign BU2089_A[7] = n6142;
         assign BU2089_A[8] = n6141;
         assign BU2089_A[9] = n6140;
         assign BU2089_A[10] = n6139;
         assign BU2089_A[11] = n6138;
         assign BU2089_A[12] = n6137;
         assign BU2089_A[13] = n6136;
         assign BU2089_A[14] = n6135;
         assign BU2089_A[15] = n6134;
         assign BU2089_A[16] = n6133;
         assign BU2089_A[17] = n6132;
         assign BU2089_A[18] = n6131;
         assign BU2089_A[19] = n6130;
         assign BU2089_A[20] = n6129;
         assign BU2089_A[21] = n6128;
      wire [21 : 0] BU2089_B;
         assign BU2089_B[0] = n6894;
         assign BU2089_B[1] = n6893;
         assign BU2089_B[2] = n6892;
         assign BU2089_B[3] = n6891;
         assign BU2089_B[4] = n6890;
         assign BU2089_B[5] = n6889;
         assign BU2089_B[6] = n6888;
         assign BU2089_B[7] = n6887;
         assign BU2089_B[8] = n6886;
         assign BU2089_B[9] = n6885;
         assign BU2089_B[10] = n6884;
         assign BU2089_B[11] = n6883;
         assign BU2089_B[12] = n6882;
         assign BU2089_B[13] = n6881;
         assign BU2089_B[14] = n6880;
         assign BU2089_B[15] = n6879;
         assign BU2089_B[16] = n6878;
         assign BU2089_B[17] = n6877;
         assign BU2089_B[18] = n6876;
         assign BU2089_B[19] = n6876;
         assign BU2089_B[20] = n6876;
         assign BU2089_B[21] = n6876;
      wire BU2089_ADD;
         assign BU2089_ADD = n13966;
      wire [21 : 0] BU2089_Q;
         assign n6127 = BU2089_Q[0];
         assign n6126 = BU2089_Q[1];
         assign n6125 = BU2089_Q[2];
         assign n6124 = BU2089_Q[3];
         assign n6123 = BU2089_Q[4];
         assign n6122 = BU2089_Q[5];
         assign n6121 = BU2089_Q[6];
         assign n6120 = BU2089_Q[7];
         assign n6119 = BU2089_Q[8];
         assign n6118 = BU2089_Q[9];
         assign n6117 = BU2089_Q[10];
         assign n6116 = BU2089_Q[11];
         assign n6115 = BU2089_Q[12];
         assign n6114 = BU2089_Q[13];
         assign n6113 = BU2089_Q[14];
         assign n6112 = BU2089_Q[15];
         assign n6111 = BU2089_Q[16];
         assign n6110 = BU2089_Q[17];
         assign n6109 = BU2089_Q[18];
         assign n6108 = BU2089_Q[19];
         assign n6107 = BU2089_Q[20];
         assign n6106 = BU2089_Q[21];
      wire BU2089_CLK;
         assign BU2089_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2089(
         .A(BU2089_A),
         .B(BU2089_B),
         .ADD(BU2089_ADD),
         .Q(BU2089_Q),
         .CLK(BU2089_CLK)
      );

      defparam BU2228.INIT = 'ha53c;
      wire BU2228_I0;
         assign BU2228_I0 = n6876;
      wire BU2228_I1;
         assign BU2228_I1 = n8209;
      wire BU2228_I2;
         assign BU2228_I2 = 1'b0;
      wire BU2228_I3;
         assign BU2228_I3 = n8208;
      wire BU2228_O;
         assign n13966 = BU2228_O;
      LUT4       BU2228(
         .I0(BU2228_I0),
         .I1(BU2228_I1),
         .I2(BU2228_I2),
         .I3(BU2228_I3),
         .O(BU2228_O)
      );

      wire [21 : 0] BU2233_A;
         assign BU2233_A[0] = n6897;
         assign BU2233_A[1] = n6896;
         assign BU2233_A[2] = n6895;
         assign BU2233_A[3] = n6894;
         assign BU2233_A[4] = n6893;
         assign BU2233_A[5] = n6892;
         assign BU2233_A[6] = n6891;
         assign BU2233_A[7] = n6890;
         assign BU2233_A[8] = n6889;
         assign BU2233_A[9] = n6888;
         assign BU2233_A[10] = n6887;
         assign BU2233_A[11] = n6886;
         assign BU2233_A[12] = n6885;
         assign BU2233_A[13] = n6884;
         assign BU2233_A[14] = n6883;
         assign BU2233_A[15] = n6882;
         assign BU2233_A[16] = n6881;
         assign BU2233_A[17] = n6880;
         assign BU2233_A[18] = n6879;
         assign BU2233_A[19] = n6878;
         assign BU2233_A[20] = n6877;
         assign BU2233_A[21] = n6876;
      wire [21 : 0] BU2233_B;
         assign BU2233_B[0] = n6146;
         assign BU2233_B[1] = n6145;
         assign BU2233_B[2] = n6144;
         assign BU2233_B[3] = n6143;
         assign BU2233_B[4] = n6142;
         assign BU2233_B[5] = n6141;
         assign BU2233_B[6] = n6140;
         assign BU2233_B[7] = n6139;
         assign BU2233_B[8] = n6138;
         assign BU2233_B[9] = n6137;
         assign BU2233_B[10] = n6136;
         assign BU2233_B[11] = n6135;
         assign BU2233_B[12] = n6134;
         assign BU2233_B[13] = n6133;
         assign BU2233_B[14] = n6132;
         assign BU2233_B[15] = n6131;
         assign BU2233_B[16] = n6130;
         assign BU2233_B[17] = n6129;
         assign BU2233_B[18] = n6128;
         assign BU2233_B[19] = n6128;
         assign BU2233_B[20] = n6128;
         assign BU2233_B[21] = n6128;
      wire BU2233_ADD;
         assign BU2233_ADD = n13967;
      wire [21 : 0] BU2233_Q;
         assign n6875 = BU2233_Q[0];
         assign n6874 = BU2233_Q[1];
         assign n6873 = BU2233_Q[2];
         assign n6872 = BU2233_Q[3];
         assign n6871 = BU2233_Q[4];
         assign n6870 = BU2233_Q[5];
         assign n6869 = BU2233_Q[6];
         assign n6868 = BU2233_Q[7];
         assign n6867 = BU2233_Q[8];
         assign n6866 = BU2233_Q[9];
         assign n6865 = BU2233_Q[10];
         assign n6864 = BU2233_Q[11];
         assign n6863 = BU2233_Q[12];
         assign n6862 = BU2233_Q[13];
         assign n6861 = BU2233_Q[14];
         assign n6860 = BU2233_Q[15];
         assign n6859 = BU2233_Q[16];
         assign n6858 = BU2233_Q[17];
         assign n6857 = BU2233_Q[18];
         assign n6856 = BU2233_Q[19];
         assign n6855 = BU2233_Q[20];
         assign n6854 = BU2233_Q[21];
      wire BU2233_CLK;
         assign BU2233_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2233(
         .A(BU2233_A),
         .B(BU2233_B),
         .ADD(BU2233_ADD),
         .Q(BU2233_Q),
         .CLK(BU2233_CLK)
      );

      defparam BU2372.INIT = 'ha3a3;
      wire BU2372_I0;
         assign BU2372_I0 = n6876;
      wire BU2372_I1;
         assign BU2372_I1 = n8209;
      wire BU2372_I2;
         assign BU2372_I2 = n8208;
      wire BU2372_I3;
         assign BU2372_I3 = 1'b0;
      wire BU2372_O;
         assign n13967 = BU2372_O;
      LUT4       BU2372(
         .I0(BU2372_I0),
         .I1(BU2372_I1),
         .I2(BU2372_I2),
         .I3(BU2372_I3),
         .O(BU2372_O)
      );

      wire [21 : 0] BU2379_A;
         assign BU2379_A[0] = n7645;
         assign BU2379_A[1] = n7644;
         assign BU2379_A[2] = n7643;
         assign BU2379_A[3] = n7642;
         assign BU2379_A[4] = n7641;
         assign BU2379_A[5] = n7640;
         assign BU2379_A[6] = n7639;
         assign BU2379_A[7] = n7638;
         assign BU2379_A[8] = n7637;
         assign BU2379_A[9] = n7636;
         assign BU2379_A[10] = n7635;
         assign BU2379_A[11] = n7634;
         assign BU2379_A[12] = n7633;
         assign BU2379_A[13] = n7632;
         assign BU2379_A[14] = n7631;
         assign BU2379_A[15] = n7630;
         assign BU2379_A[16] = n7629;
         assign BU2379_A[17] = n7628;
         assign BU2379_A[18] = n7627;
         assign BU2379_A[19] = n7626;
         assign BU2379_A[20] = n7625;
         assign BU2379_A[21] = n7624;
      wire [21 : 0] BU2379_B;
         assign BU2379_B[0] = 1'b1;
         assign BU2379_B[1] = 1'b0;
         assign BU2379_B[2] = 1'b0;
         assign BU2379_B[3] = 1'b0;
         assign BU2379_B[4] = 1'b1;
         assign BU2379_B[5] = 1'b0;
         assign BU2379_B[6] = 1'b0;
         assign BU2379_B[7] = 1'b0;
         assign BU2379_B[8] = 1'b1;
         assign BU2379_B[9] = 1'b0;
         assign BU2379_B[10] = 1'b0;
         assign BU2379_B[11] = 1'b0;
         assign BU2379_B[12] = 1'b1;
         assign BU2379_B[13] = 1'b0;
         assign BU2379_B[14] = 1'b1;
         assign BU2379_B[15] = 1'b0;
         assign BU2379_B[16] = 1'b0;
         assign BU2379_B[17] = 1'b0;
         assign BU2379_B[18] = 1'b0;
         assign BU2379_B[19] = 1'b0;
         assign BU2379_B[20] = 1'b0;
         assign BU2379_B[21] = 1'b0;
      wire BU2379_ADD;
         assign BU2379_ADD = n15382;
      wire [21 : 0] BU2379_S;
         assign n15359 = BU2379_S[21];
      wire [21 : 0] BU2379_Q;
         assign n7623 = BU2379_Q[0];
         assign n7622 = BU2379_Q[1];
         assign n7621 = BU2379_Q[2];
         assign n7620 = BU2379_Q[3];
         assign n7619 = BU2379_Q[4];
         assign n7618 = BU2379_Q[5];
         assign n7617 = BU2379_Q[6];
         assign n7616 = BU2379_Q[7];
         assign n7615 = BU2379_Q[8];
         assign n7614 = BU2379_Q[9];
         assign n7613 = BU2379_Q[10];
         assign n7612 = BU2379_Q[11];
         assign n7611 = BU2379_Q[12];
         assign n7610 = BU2379_Q[13];
         assign n7609 = BU2379_Q[14];
         assign n7608 = BU2379_Q[15];
         assign n7607 = BU2379_Q[16];
         assign n7606 = BU2379_Q[17];
         assign n7605 = BU2379_Q[18];
         assign n7604 = BU2379_Q[19];
         assign n7603 = BU2379_Q[20];
         assign n7602 = BU2379_Q[21];
      wire BU2379_CLK;
         assign BU2379_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2379(
         .A(BU2379_A),
         .B(BU2379_B),
         .ADD(BU2379_ADD),
         .S(BU2379_S),
         .Q(BU2379_Q),
         .CLK(BU2379_CLK)
      );

      defparam BU2518.INIT = 'h5c5c;
      wire BU2518_I0;
         assign BU2518_I0 = n6876;
      wire BU2518_I1;
         assign BU2518_I1 = n8209;
      wire BU2518_I2;
         assign BU2518_I2 = n8208;
      wire BU2518_I3;
         assign BU2518_I3 = 1'b0;
      wire BU2518_O;
         assign n15382 = BU2518_O;
      LUT4       BU2518(
         .I0(BU2518_I0),
         .I1(BU2518_I1),
         .I2(BU2518_I2),
         .I3(BU2518_I3),
         .O(BU2518_O)
      );

      wire [0 : 0] BU2523_D;
         assign BU2523_D[0] = n15359;
      wire [0 : 0] BU2523_Q;
         assign n8206 = BU2523_Q[0];
      wire BU2523_CLK;
         assign BU2523_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2523(
         .D(BU2523_D),
         .Q(BU2523_Q),
         .CLK(BU2523_CLK)
      );

      wire [0 : 0] BU2532_D;
         assign BU2532_D[0] = n8108;
      wire [0 : 0] BU2532_Q;
         assign n8105 = BU2532_Q[0];
      wire BU2532_CLK;
         assign BU2532_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2532(
         .D(BU2532_D),
         .Q(BU2532_Q),
         .CLK(BU2532_CLK)
      );

      wire [0 : 0] BU2539_D;
         assign BU2539_D[0] = n8107;
      wire [0 : 0] BU2539_Q;
         assign n8104 = BU2539_Q[0];
      wire BU2539_CLK;
         assign BU2539_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2539(
         .D(BU2539_D),
         .Q(BU2539_Q),
         .CLK(BU2539_CLK)
      );

      wire [0 : 0] BU2546_D;
         assign BU2546_D[0] = n8106;
      wire [0 : 0] BU2546_Q;
         assign n8103 = BU2546_Q[0];
      wire BU2546_CLK;
         assign BU2546_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2546(
         .D(BU2546_D),
         .Q(BU2546_Q),
         .CLK(BU2546_CLK)
      );

      wire [0 : 0] BU2553_D;
         assign BU2553_D[0] = n8208;
      wire [0 : 0] BU2553_Q;
         assign n8205 = BU2553_Q[0];
      wire BU2553_CLK;
         assign BU2553_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU2553(
         .D(BU2553_D),
         .Q(BU2553_Q),
         .CLK(BU2553_CLK)
      );

      wire [21 : 0] BU2569_A;
         assign BU2569_A[0] = n6127;
         assign BU2569_A[1] = n6126;
         assign BU2569_A[2] = n6125;
         assign BU2569_A[3] = n6124;
         assign BU2569_A[4] = n6123;
         assign BU2569_A[5] = n6122;
         assign BU2569_A[6] = n6121;
         assign BU2569_A[7] = n6120;
         assign BU2569_A[8] = n6119;
         assign BU2569_A[9] = n6118;
         assign BU2569_A[10] = n6117;
         assign BU2569_A[11] = n6116;
         assign BU2569_A[12] = n6115;
         assign BU2569_A[13] = n6114;
         assign BU2569_A[14] = n6113;
         assign BU2569_A[15] = n6112;
         assign BU2569_A[16] = n6111;
         assign BU2569_A[17] = n6110;
         assign BU2569_A[18] = n6109;
         assign BU2569_A[19] = n6108;
         assign BU2569_A[20] = n6107;
         assign BU2569_A[21] = n6106;
      wire [21 : 0] BU2569_B;
         assign BU2569_B[0] = n6871;
         assign BU2569_B[1] = n6870;
         assign BU2569_B[2] = n6869;
         assign BU2569_B[3] = n6868;
         assign BU2569_B[4] = n6867;
         assign BU2569_B[5] = n6866;
         assign BU2569_B[6] = n6865;
         assign BU2569_B[7] = n6864;
         assign BU2569_B[8] = n6863;
         assign BU2569_B[9] = n6862;
         assign BU2569_B[10] = n6861;
         assign BU2569_B[11] = n6860;
         assign BU2569_B[12] = n6859;
         assign BU2569_B[13] = n6858;
         assign BU2569_B[14] = n6857;
         assign BU2569_B[15] = n6856;
         assign BU2569_B[16] = n6855;
         assign BU2569_B[17] = n6854;
         assign BU2569_B[18] = n6854;
         assign BU2569_B[19] = n6854;
         assign BU2569_B[20] = n6854;
         assign BU2569_B[21] = n6854;
      wire BU2569_ADD;
         assign BU2569_ADD = n16540;
      wire [21 : 0] BU2569_Q;
         assign n6105 = BU2569_Q[0];
         assign n6104 = BU2569_Q[1];
         assign n6103 = BU2569_Q[2];
         assign n6102 = BU2569_Q[3];
         assign n6101 = BU2569_Q[4];
         assign n6100 = BU2569_Q[5];
         assign n6099 = BU2569_Q[6];
         assign n6098 = BU2569_Q[7];
         assign n6097 = BU2569_Q[8];
         assign n6096 = BU2569_Q[9];
         assign n6095 = BU2569_Q[10];
         assign n6094 = BU2569_Q[11];
         assign n6093 = BU2569_Q[12];
         assign n6092 = BU2569_Q[13];
         assign n6091 = BU2569_Q[14];
         assign n6090 = BU2569_Q[15];
         assign n6089 = BU2569_Q[16];
         assign n6088 = BU2569_Q[17];
         assign n6087 = BU2569_Q[18];
         assign n6086 = BU2569_Q[19];
         assign n6085 = BU2569_Q[20];
         assign n6084 = BU2569_Q[21];
      wire BU2569_CLK;
         assign BU2569_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2569(
         .A(BU2569_A),
         .B(BU2569_B),
         .ADD(BU2569_ADD),
         .Q(BU2569_Q),
         .CLK(BU2569_CLK)
      );

      defparam BU2708.INIT = 'ha53c;
      wire BU2708_I0;
         assign BU2708_I0 = n6854;
      wire BU2708_I1;
         assign BU2708_I1 = n8206;
      wire BU2708_I2;
         assign BU2708_I2 = 1'b0;
      wire BU2708_I3;
         assign BU2708_I3 = n8205;
      wire BU2708_O;
         assign n16540 = BU2708_O;
      LUT4       BU2708(
         .I0(BU2708_I0),
         .I1(BU2708_I1),
         .I2(BU2708_I2),
         .I3(BU2708_I3),
         .O(BU2708_O)
      );

      wire [21 : 0] BU2713_A;
         assign BU2713_A[0] = n6875;
         assign BU2713_A[1] = n6874;
         assign BU2713_A[2] = n6873;
         assign BU2713_A[3] = n6872;
         assign BU2713_A[4] = n6871;
         assign BU2713_A[5] = n6870;
         assign BU2713_A[6] = n6869;
         assign BU2713_A[7] = n6868;
         assign BU2713_A[8] = n6867;
         assign BU2713_A[9] = n6866;
         assign BU2713_A[10] = n6865;
         assign BU2713_A[11] = n6864;
         assign BU2713_A[12] = n6863;
         assign BU2713_A[13] = n6862;
         assign BU2713_A[14] = n6861;
         assign BU2713_A[15] = n6860;
         assign BU2713_A[16] = n6859;
         assign BU2713_A[17] = n6858;
         assign BU2713_A[18] = n6857;
         assign BU2713_A[19] = n6856;
         assign BU2713_A[20] = n6855;
         assign BU2713_A[21] = n6854;
      wire [21 : 0] BU2713_B;
         assign BU2713_B[0] = n6123;
         assign BU2713_B[1] = n6122;
         assign BU2713_B[2] = n6121;
         assign BU2713_B[3] = n6120;
         assign BU2713_B[4] = n6119;
         assign BU2713_B[5] = n6118;
         assign BU2713_B[6] = n6117;
         assign BU2713_B[7] = n6116;
         assign BU2713_B[8] = n6115;
         assign BU2713_B[9] = n6114;
         assign BU2713_B[10] = n6113;
         assign BU2713_B[11] = n6112;
         assign BU2713_B[12] = n6111;
         assign BU2713_B[13] = n6110;
         assign BU2713_B[14] = n6109;
         assign BU2713_B[15] = n6108;
         assign BU2713_B[16] = n6107;
         assign BU2713_B[17] = n6106;
         assign BU2713_B[18] = n6106;
         assign BU2713_B[19] = n6106;
         assign BU2713_B[20] = n6106;
         assign BU2713_B[21] = n6106;
      wire BU2713_ADD;
         assign BU2713_ADD = n16541;
      wire [21 : 0] BU2713_Q;
         assign n6853 = BU2713_Q[0];
         assign n6852 = BU2713_Q[1];
         assign n6851 = BU2713_Q[2];
         assign n6850 = BU2713_Q[3];
         assign n6849 = BU2713_Q[4];
         assign n6848 = BU2713_Q[5];
         assign n6847 = BU2713_Q[6];
         assign n6846 = BU2713_Q[7];
         assign n6845 = BU2713_Q[8];
         assign n6844 = BU2713_Q[9];
         assign n6843 = BU2713_Q[10];
         assign n6842 = BU2713_Q[11];
         assign n6841 = BU2713_Q[12];
         assign n6840 = BU2713_Q[13];
         assign n6839 = BU2713_Q[14];
         assign n6838 = BU2713_Q[15];
         assign n6837 = BU2713_Q[16];
         assign n6836 = BU2713_Q[17];
         assign n6835 = BU2713_Q[18];
         assign n6834 = BU2713_Q[19];
         assign n6833 = BU2713_Q[20];
         assign n6832 = BU2713_Q[21];
      wire BU2713_CLK;
         assign BU2713_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2713(
         .A(BU2713_A),
         .B(BU2713_B),
         .ADD(BU2713_ADD),
         .Q(BU2713_Q),
         .CLK(BU2713_CLK)
      );

      defparam BU2852.INIT = 'ha3a3;
      wire BU2852_I0;
         assign BU2852_I0 = n6854;
      wire BU2852_I1;
         assign BU2852_I1 = n8206;
      wire BU2852_I2;
         assign BU2852_I2 = n8205;
      wire BU2852_I3;
         assign BU2852_I3 = 1'b0;
      wire BU2852_O;
         assign n16541 = BU2852_O;
      LUT4       BU2852(
         .I0(BU2852_I0),
         .I1(BU2852_I1),
         .I2(BU2852_I2),
         .I3(BU2852_I3),
         .O(BU2852_O)
      );

      wire [21 : 0] BU2859_A;
         assign BU2859_A[0] = n7623;
         assign BU2859_A[1] = n7622;
         assign BU2859_A[2] = n7621;
         assign BU2859_A[3] = n7620;
         assign BU2859_A[4] = n7619;
         assign BU2859_A[5] = n7618;
         assign BU2859_A[6] = n7617;
         assign BU2859_A[7] = n7616;
         assign BU2859_A[8] = n7615;
         assign BU2859_A[9] = n7614;
         assign BU2859_A[10] = n7613;
         assign BU2859_A[11] = n7612;
         assign BU2859_A[12] = n7611;
         assign BU2859_A[13] = n7610;
         assign BU2859_A[14] = n7609;
         assign BU2859_A[15] = n7608;
         assign BU2859_A[16] = n7607;
         assign BU2859_A[17] = n7606;
         assign BU2859_A[18] = n7605;
         assign BU2859_A[19] = n7604;
         assign BU2859_A[20] = n7603;
         assign BU2859_A[21] = n7602;
      wire [21 : 0] BU2859_B;
         assign BU2859_B[0] = 1'b1;
         assign BU2859_B[1] = 1'b0;
         assign BU2859_B[2] = 1'b0;
         assign BU2859_B[3] = 1'b0;
         assign BU2859_B[4] = 1'b1;
         assign BU2859_B[5] = 1'b1;
         assign BU2859_B[6] = 1'b0;
         assign BU2859_B[7] = 1'b1;
         assign BU2859_B[8] = 1'b0;
         assign BU2859_B[9] = 1'b0;
         assign BU2859_B[10] = 1'b0;
         assign BU2859_B[11] = 1'b1;
         assign BU2859_B[12] = 1'b0;
         assign BU2859_B[13] = 1'b1;
         assign BU2859_B[14] = 1'b0;
         assign BU2859_B[15] = 1'b0;
         assign BU2859_B[16] = 1'b0;
         assign BU2859_B[17] = 1'b0;
         assign BU2859_B[18] = 1'b0;
         assign BU2859_B[19] = 1'b0;
         assign BU2859_B[20] = 1'b0;
         assign BU2859_B[21] = 1'b0;
      wire BU2859_ADD;
         assign BU2859_ADD = n17956;
      wire [21 : 0] BU2859_S;
         assign n17933 = BU2859_S[21];
      wire [21 : 0] BU2859_Q;
         assign n7601 = BU2859_Q[0];
         assign n7600 = BU2859_Q[1];
         assign n7599 = BU2859_Q[2];
         assign n7598 = BU2859_Q[3];
         assign n7597 = BU2859_Q[4];
         assign n7596 = BU2859_Q[5];
         assign n7595 = BU2859_Q[6];
         assign n7594 = BU2859_Q[7];
         assign n7593 = BU2859_Q[8];
         assign n7592 = BU2859_Q[9];
         assign n7591 = BU2859_Q[10];
         assign n7590 = BU2859_Q[11];
         assign n7589 = BU2859_Q[12];
         assign n7588 = BU2859_Q[13];
         assign n7587 = BU2859_Q[14];
         assign n7586 = BU2859_Q[15];
         assign n7585 = BU2859_Q[16];
         assign n7584 = BU2859_Q[17];
         assign n7583 = BU2859_Q[18];
         assign n7582 = BU2859_Q[19];
         assign n7581 = BU2859_Q[20];
         assign n7580 = BU2859_Q[21];
      wire BU2859_CLK;
         assign BU2859_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2859(
         .A(BU2859_A),
         .B(BU2859_B),
         .ADD(BU2859_ADD),
         .S(BU2859_S),
         .Q(BU2859_Q),
         .CLK(BU2859_CLK)
      );

      defparam BU2998.INIT = 'h5c5c;
      wire BU2998_I0;
         assign BU2998_I0 = n6854;
      wire BU2998_I1;
         assign BU2998_I1 = n8206;
      wire BU2998_I2;
         assign BU2998_I2 = n8205;
      wire BU2998_I3;
         assign BU2998_I3 = 1'b0;
      wire BU2998_O;
         assign n17956 = BU2998_O;
      LUT4       BU2998(
         .I0(BU2998_I0),
         .I1(BU2998_I1),
         .I2(BU2998_I2),
         .I3(BU2998_I3),
         .O(BU2998_O)
      );

      wire [0 : 0] BU3003_D;
         assign BU3003_D[0] = n17933;
      wire [0 : 0] BU3003_Q;
         assign n8203 = BU3003_Q[0];
      wire BU3003_CLK;
         assign BU3003_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3003(
         .D(BU3003_D),
         .Q(BU3003_Q),
         .CLK(BU3003_CLK)
      );

      wire [0 : 0] BU3012_D;
         assign BU3012_D[0] = n8105;
      wire [0 : 0] BU3012_Q;
         assign n8102 = BU3012_Q[0];
      wire BU3012_CLK;
         assign BU3012_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3012(
         .D(BU3012_D),
         .Q(BU3012_Q),
         .CLK(BU3012_CLK)
      );

      wire [0 : 0] BU3019_D;
         assign BU3019_D[0] = n8104;
      wire [0 : 0] BU3019_Q;
         assign n8101 = BU3019_Q[0];
      wire BU3019_CLK;
         assign BU3019_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3019(
         .D(BU3019_D),
         .Q(BU3019_Q),
         .CLK(BU3019_CLK)
      );

      wire [0 : 0] BU3026_D;
         assign BU3026_D[0] = n8103;
      wire [0 : 0] BU3026_Q;
         assign n8100 = BU3026_Q[0];
      wire BU3026_CLK;
         assign BU3026_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3026(
         .D(BU3026_D),
         .Q(BU3026_Q),
         .CLK(BU3026_CLK)
      );

      wire [0 : 0] BU3033_D;
         assign BU3033_D[0] = n8205;
      wire [0 : 0] BU3033_Q;
         assign n8202 = BU3033_Q[0];
      wire BU3033_CLK;
         assign BU3033_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3033(
         .D(BU3033_D),
         .Q(BU3033_Q),
         .CLK(BU3033_CLK)
      );

      wire [21 : 0] BU3049_A;
         assign BU3049_A[0] = n6105;
         assign BU3049_A[1] = n6104;
         assign BU3049_A[2] = n6103;
         assign BU3049_A[3] = n6102;
         assign BU3049_A[4] = n6101;
         assign BU3049_A[5] = n6100;
         assign BU3049_A[6] = n6099;
         assign BU3049_A[7] = n6098;
         assign BU3049_A[8] = n6097;
         assign BU3049_A[9] = n6096;
         assign BU3049_A[10] = n6095;
         assign BU3049_A[11] = n6094;
         assign BU3049_A[12] = n6093;
         assign BU3049_A[13] = n6092;
         assign BU3049_A[14] = n6091;
         assign BU3049_A[15] = n6090;
         assign BU3049_A[16] = n6089;
         assign BU3049_A[17] = n6088;
         assign BU3049_A[18] = n6087;
         assign BU3049_A[19] = n6086;
         assign BU3049_A[20] = n6085;
         assign BU3049_A[21] = n6084;
      wire [21 : 0] BU3049_B;
         assign BU3049_B[0] = n6848;
         assign BU3049_B[1] = n6847;
         assign BU3049_B[2] = n6846;
         assign BU3049_B[3] = n6845;
         assign BU3049_B[4] = n6844;
         assign BU3049_B[5] = n6843;
         assign BU3049_B[6] = n6842;
         assign BU3049_B[7] = n6841;
         assign BU3049_B[8] = n6840;
         assign BU3049_B[9] = n6839;
         assign BU3049_B[10] = n6838;
         assign BU3049_B[11] = n6837;
         assign BU3049_B[12] = n6836;
         assign BU3049_B[13] = n6835;
         assign BU3049_B[14] = n6834;
         assign BU3049_B[15] = n6833;
         assign BU3049_B[16] = n6832;
         assign BU3049_B[17] = n6832;
         assign BU3049_B[18] = n6832;
         assign BU3049_B[19] = n6832;
         assign BU3049_B[20] = n6832;
         assign BU3049_B[21] = n6832;
      wire BU3049_ADD;
         assign BU3049_ADD = n19114;
      wire [21 : 0] BU3049_Q;
         assign n6083 = BU3049_Q[0];
         assign n6082 = BU3049_Q[1];
         assign n6081 = BU3049_Q[2];
         assign n6080 = BU3049_Q[3];
         assign n6079 = BU3049_Q[4];
         assign n6078 = BU3049_Q[5];
         assign n6077 = BU3049_Q[6];
         assign n6076 = BU3049_Q[7];
         assign n6075 = BU3049_Q[8];
         assign n6074 = BU3049_Q[9];
         assign n6073 = BU3049_Q[10];
         assign n6072 = BU3049_Q[11];
         assign n6071 = BU3049_Q[12];
         assign n6070 = BU3049_Q[13];
         assign n6069 = BU3049_Q[14];
         assign n6068 = BU3049_Q[15];
         assign n6067 = BU3049_Q[16];
         assign n6066 = BU3049_Q[17];
         assign n6065 = BU3049_Q[18];
         assign n6064 = BU3049_Q[19];
         assign n6063 = BU3049_Q[20];
         assign n6062 = BU3049_Q[21];
      wire BU3049_CLK;
         assign BU3049_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3049(
         .A(BU3049_A),
         .B(BU3049_B),
         .ADD(BU3049_ADD),
         .Q(BU3049_Q),
         .CLK(BU3049_CLK)
      );

      defparam BU3188.INIT = 'ha53c;
      wire BU3188_I0;
         assign BU3188_I0 = n6832;
      wire BU3188_I1;
         assign BU3188_I1 = n8203;
      wire BU3188_I2;
         assign BU3188_I2 = 1'b0;
      wire BU3188_I3;
         assign BU3188_I3 = n8202;
      wire BU3188_O;
         assign n19114 = BU3188_O;
      LUT4       BU3188(
         .I0(BU3188_I0),
         .I1(BU3188_I1),
         .I2(BU3188_I2),
         .I3(BU3188_I3),
         .O(BU3188_O)
      );

      wire [21 : 0] BU3193_A;
         assign BU3193_A[0] = n6853;
         assign BU3193_A[1] = n6852;
         assign BU3193_A[2] = n6851;
         assign BU3193_A[3] = n6850;
         assign BU3193_A[4] = n6849;
         assign BU3193_A[5] = n6848;
         assign BU3193_A[6] = n6847;
         assign BU3193_A[7] = n6846;
         assign BU3193_A[8] = n6845;
         assign BU3193_A[9] = n6844;
         assign BU3193_A[10] = n6843;
         assign BU3193_A[11] = n6842;
         assign BU3193_A[12] = n6841;
         assign BU3193_A[13] = n6840;
         assign BU3193_A[14] = n6839;
         assign BU3193_A[15] = n6838;
         assign BU3193_A[16] = n6837;
         assign BU3193_A[17] = n6836;
         assign BU3193_A[18] = n6835;
         assign BU3193_A[19] = n6834;
         assign BU3193_A[20] = n6833;
         assign BU3193_A[21] = n6832;
      wire [21 : 0] BU3193_B;
         assign BU3193_B[0] = n6100;
         assign BU3193_B[1] = n6099;
         assign BU3193_B[2] = n6098;
         assign BU3193_B[3] = n6097;
         assign BU3193_B[4] = n6096;
         assign BU3193_B[5] = n6095;
         assign BU3193_B[6] = n6094;
         assign BU3193_B[7] = n6093;
         assign BU3193_B[8] = n6092;
         assign BU3193_B[9] = n6091;
         assign BU3193_B[10] = n6090;
         assign BU3193_B[11] = n6089;
         assign BU3193_B[12] = n6088;
         assign BU3193_B[13] = n6087;
         assign BU3193_B[14] = n6086;
         assign BU3193_B[15] = n6085;
         assign BU3193_B[16] = n6084;
         assign BU3193_B[17] = n6084;
         assign BU3193_B[18] = n6084;
         assign BU3193_B[19] = n6084;
         assign BU3193_B[20] = n6084;
         assign BU3193_B[21] = n6084;
      wire BU3193_ADD;
         assign BU3193_ADD = n19115;
      wire [21 : 0] BU3193_Q;
         assign n6831 = BU3193_Q[0];
         assign n6830 = BU3193_Q[1];
         assign n6829 = BU3193_Q[2];
         assign n6828 = BU3193_Q[3];
         assign n6827 = BU3193_Q[4];
         assign n6826 = BU3193_Q[5];
         assign n6825 = BU3193_Q[6];
         assign n6824 = BU3193_Q[7];
         assign n6823 = BU3193_Q[8];
         assign n6822 = BU3193_Q[9];
         assign n6821 = BU3193_Q[10];
         assign n6820 = BU3193_Q[11];
         assign n6819 = BU3193_Q[12];
         assign n6818 = BU3193_Q[13];
         assign n6817 = BU3193_Q[14];
         assign n6816 = BU3193_Q[15];
         assign n6815 = BU3193_Q[16];
         assign n6814 = BU3193_Q[17];
         assign n6813 = BU3193_Q[18];
         assign n6812 = BU3193_Q[19];
         assign n6811 = BU3193_Q[20];
         assign n6810 = BU3193_Q[21];
      wire BU3193_CLK;
         assign BU3193_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3193(
         .A(BU3193_A),
         .B(BU3193_B),
         .ADD(BU3193_ADD),
         .Q(BU3193_Q),
         .CLK(BU3193_CLK)
      );

      defparam BU3332.INIT = 'ha3a3;
      wire BU3332_I0;
         assign BU3332_I0 = n6832;
      wire BU3332_I1;
         assign BU3332_I1 = n8203;
      wire BU3332_I2;
         assign BU3332_I2 = n8202;
      wire BU3332_I3;
         assign BU3332_I3 = 1'b0;
      wire BU3332_O;
         assign n19115 = BU3332_O;
      LUT4       BU3332(
         .I0(BU3332_I0),
         .I1(BU3332_I1),
         .I2(BU3332_I2),
         .I3(BU3332_I3),
         .O(BU3332_O)
      );

      wire [21 : 0] BU3339_A;
         assign BU3339_A[0] = n7601;
         assign BU3339_A[1] = n7600;
         assign BU3339_A[2] = n7599;
         assign BU3339_A[3] = n7598;
         assign BU3339_A[4] = n7597;
         assign BU3339_A[5] = n7596;
         assign BU3339_A[6] = n7595;
         assign BU3339_A[7] = n7594;
         assign BU3339_A[8] = n7593;
         assign BU3339_A[9] = n7592;
         assign BU3339_A[10] = n7591;
         assign BU3339_A[11] = n7590;
         assign BU3339_A[12] = n7589;
         assign BU3339_A[13] = n7588;
         assign BU3339_A[14] = n7587;
         assign BU3339_A[15] = n7586;
         assign BU3339_A[16] = n7585;
         assign BU3339_A[17] = n7584;
         assign BU3339_A[18] = n7583;
         assign BU3339_A[19] = n7582;
         assign BU3339_A[20] = n7581;
         assign BU3339_A[21] = n7580;
      wire [21 : 0] BU3339_B;
         assign BU3339_B[0] = 1'b1;
         assign BU3339_B[1] = 1'b0;
         assign BU3339_B[2] = 1'b1;
         assign BU3339_B[3] = 1'b1;
         assign BU3339_B[4] = 1'b1;
         assign BU3339_B[5] = 1'b0;
         assign BU3339_B[6] = 1'b1;
         assign BU3339_B[7] = 1'b0;
         assign BU3339_B[8] = 1'b0;
         assign BU3339_B[9] = 1'b0;
         assign BU3339_B[10] = 1'b1;
         assign BU3339_B[11] = 1'b0;
         assign BU3339_B[12] = 1'b1;
         assign BU3339_B[13] = 1'b0;
         assign BU3339_B[14] = 1'b0;
         assign BU3339_B[15] = 1'b0;
         assign BU3339_B[16] = 1'b0;
         assign BU3339_B[17] = 1'b0;
         assign BU3339_B[18] = 1'b0;
         assign BU3339_B[19] = 1'b0;
         assign BU3339_B[20] = 1'b0;
         assign BU3339_B[21] = 1'b0;
      wire BU3339_ADD;
         assign BU3339_ADD = n20530;
      wire [21 : 0] BU3339_S;
         assign n20507 = BU3339_S[21];
      wire [21 : 0] BU3339_Q;
         assign n7579 = BU3339_Q[0];
         assign n7578 = BU3339_Q[1];
         assign n7577 = BU3339_Q[2];
         assign n7576 = BU3339_Q[3];
         assign n7575 = BU3339_Q[4];
         assign n7574 = BU3339_Q[5];
         assign n7573 = BU3339_Q[6];
         assign n7572 = BU3339_Q[7];
         assign n7571 = BU3339_Q[8];
         assign n7570 = BU3339_Q[9];
         assign n7569 = BU3339_Q[10];
         assign n7568 = BU3339_Q[11];
         assign n7567 = BU3339_Q[12];
         assign n7566 = BU3339_Q[13];
         assign n7565 = BU3339_Q[14];
         assign n7564 = BU3339_Q[15];
         assign n7563 = BU3339_Q[16];
         assign n7562 = BU3339_Q[17];
         assign n7561 = BU3339_Q[18];
         assign n7560 = BU3339_Q[19];
         assign n7559 = BU3339_Q[20];
         assign n7558 = BU3339_Q[21];
      wire BU3339_CLK;
         assign BU3339_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3339(
         .A(BU3339_A),
         .B(BU3339_B),
         .ADD(BU3339_ADD),
         .S(BU3339_S),
         .Q(BU3339_Q),
         .CLK(BU3339_CLK)
      );

      defparam BU3478.INIT = 'h5c5c;
      wire BU3478_I0;
         assign BU3478_I0 = n6832;
      wire BU3478_I1;
         assign BU3478_I1 = n8203;
      wire BU3478_I2;
         assign BU3478_I2 = n8202;
      wire BU3478_I3;
         assign BU3478_I3 = 1'b0;
      wire BU3478_O;
         assign n20530 = BU3478_O;
      LUT4       BU3478(
         .I0(BU3478_I0),
         .I1(BU3478_I1),
         .I2(BU3478_I2),
         .I3(BU3478_I3),
         .O(BU3478_O)
      );

      wire [0 : 0] BU3483_D;
         assign BU3483_D[0] = n20507;
      wire [0 : 0] BU3483_Q;
         assign n8200 = BU3483_Q[0];
      wire BU3483_CLK;
         assign BU3483_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3483(
         .D(BU3483_D),
         .Q(BU3483_Q),
         .CLK(BU3483_CLK)
      );

      wire [0 : 0] BU3492_D;
         assign BU3492_D[0] = n8102;
      wire [0 : 0] BU3492_Q;
         assign n8099 = BU3492_Q[0];
      wire BU3492_CLK;
         assign BU3492_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3492(
         .D(BU3492_D),
         .Q(BU3492_Q),
         .CLK(BU3492_CLK)
      );

      wire [0 : 0] BU3499_D;
         assign BU3499_D[0] = n8101;
      wire [0 : 0] BU3499_Q;
         assign n8098 = BU3499_Q[0];
      wire BU3499_CLK;
         assign BU3499_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3499(
         .D(BU3499_D),
         .Q(BU3499_Q),
         .CLK(BU3499_CLK)
      );

      wire [0 : 0] BU3506_D;
         assign BU3506_D[0] = n8100;
      wire [0 : 0] BU3506_Q;
         assign n8097 = BU3506_Q[0];
      wire BU3506_CLK;
         assign BU3506_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3506(
         .D(BU3506_D),
         .Q(BU3506_Q),
         .CLK(BU3506_CLK)
      );

      wire [0 : 0] BU3513_D;
         assign BU3513_D[0] = n8202;
      wire [0 : 0] BU3513_Q;
         assign n8199 = BU3513_Q[0];
      wire BU3513_CLK;
         assign BU3513_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3513(
         .D(BU3513_D),
         .Q(BU3513_Q),
         .CLK(BU3513_CLK)
      );

      wire [21 : 0] BU3529_A;
         assign BU3529_A[0] = n6083;
         assign BU3529_A[1] = n6082;
         assign BU3529_A[2] = n6081;
         assign BU3529_A[3] = n6080;
         assign BU3529_A[4] = n6079;
         assign BU3529_A[5] = n6078;
         assign BU3529_A[6] = n6077;
         assign BU3529_A[7] = n6076;
         assign BU3529_A[8] = n6075;
         assign BU3529_A[9] = n6074;
         assign BU3529_A[10] = n6073;
         assign BU3529_A[11] = n6072;
         assign BU3529_A[12] = n6071;
         assign BU3529_A[13] = n6070;
         assign BU3529_A[14] = n6069;
         assign BU3529_A[15] = n6068;
         assign BU3529_A[16] = n6067;
         assign BU3529_A[17] = n6066;
         assign BU3529_A[18] = n6065;
         assign BU3529_A[19] = n6064;
         assign BU3529_A[20] = n6063;
         assign BU3529_A[21] = n6062;
      wire [21 : 0] BU3529_B;
         assign BU3529_B[0] = n6825;
         assign BU3529_B[1] = n6824;
         assign BU3529_B[2] = n6823;
         assign BU3529_B[3] = n6822;
         assign BU3529_B[4] = n6821;
         assign BU3529_B[5] = n6820;
         assign BU3529_B[6] = n6819;
         assign BU3529_B[7] = n6818;
         assign BU3529_B[8] = n6817;
         assign BU3529_B[9] = n6816;
         assign BU3529_B[10] = n6815;
         assign BU3529_B[11] = n6814;
         assign BU3529_B[12] = n6813;
         assign BU3529_B[13] = n6812;
         assign BU3529_B[14] = n6811;
         assign BU3529_B[15] = n6810;
         assign BU3529_B[16] = n6810;
         assign BU3529_B[17] = n6810;
         assign BU3529_B[18] = n6810;
         assign BU3529_B[19] = n6810;
         assign BU3529_B[20] = n6810;
         assign BU3529_B[21] = n6810;
      wire BU3529_ADD;
         assign BU3529_ADD = n21688;
      wire [21 : 0] BU3529_Q;
         assign n6061 = BU3529_Q[0];
         assign n6060 = BU3529_Q[1];
         assign n6059 = BU3529_Q[2];
         assign n6058 = BU3529_Q[3];
         assign n6057 = BU3529_Q[4];
         assign n6056 = BU3529_Q[5];
         assign n6055 = BU3529_Q[6];
         assign n6054 = BU3529_Q[7];
         assign n6053 = BU3529_Q[8];
         assign n6052 = BU3529_Q[9];
         assign n6051 = BU3529_Q[10];
         assign n6050 = BU3529_Q[11];
         assign n6049 = BU3529_Q[12];
         assign n6048 = BU3529_Q[13];
         assign n6047 = BU3529_Q[14];
         assign n6046 = BU3529_Q[15];
         assign n6045 = BU3529_Q[16];
         assign n6044 = BU3529_Q[17];
         assign n6043 = BU3529_Q[18];
         assign n6042 = BU3529_Q[19];
         assign n6041 = BU3529_Q[20];
         assign n6040 = BU3529_Q[21];
      wire BU3529_CLK;
         assign BU3529_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3529(
         .A(BU3529_A),
         .B(BU3529_B),
         .ADD(BU3529_ADD),
         .Q(BU3529_Q),
         .CLK(BU3529_CLK)
      );

      defparam BU3668.INIT = 'ha53c;
      wire BU3668_I0;
         assign BU3668_I0 = n6810;
      wire BU3668_I1;
         assign BU3668_I1 = n8200;
      wire BU3668_I2;
         assign BU3668_I2 = 1'b0;
      wire BU3668_I3;
         assign BU3668_I3 = n8199;
      wire BU3668_O;
         assign n21688 = BU3668_O;
      LUT4       BU3668(
         .I0(BU3668_I0),
         .I1(BU3668_I1),
         .I2(BU3668_I2),
         .I3(BU3668_I3),
         .O(BU3668_O)
      );

      wire [21 : 0] BU3673_A;
         assign BU3673_A[0] = n6831;
         assign BU3673_A[1] = n6830;
         assign BU3673_A[2] = n6829;
         assign BU3673_A[3] = n6828;
         assign BU3673_A[4] = n6827;
         assign BU3673_A[5] = n6826;
         assign BU3673_A[6] = n6825;
         assign BU3673_A[7] = n6824;
         assign BU3673_A[8] = n6823;
         assign BU3673_A[9] = n6822;
         assign BU3673_A[10] = n6821;
         assign BU3673_A[11] = n6820;
         assign BU3673_A[12] = n6819;
         assign BU3673_A[13] = n6818;
         assign BU3673_A[14] = n6817;
         assign BU3673_A[15] = n6816;
         assign BU3673_A[16] = n6815;
         assign BU3673_A[17] = n6814;
         assign BU3673_A[18] = n6813;
         assign BU3673_A[19] = n6812;
         assign BU3673_A[20] = n6811;
         assign BU3673_A[21] = n6810;
      wire [21 : 0] BU3673_B;
         assign BU3673_B[0] = n6077;
         assign BU3673_B[1] = n6076;
         assign BU3673_B[2] = n6075;
         assign BU3673_B[3] = n6074;
         assign BU3673_B[4] = n6073;
         assign BU3673_B[5] = n6072;
         assign BU3673_B[6] = n6071;
         assign BU3673_B[7] = n6070;
         assign BU3673_B[8] = n6069;
         assign BU3673_B[9] = n6068;
         assign BU3673_B[10] = n6067;
         assign BU3673_B[11] = n6066;
         assign BU3673_B[12] = n6065;
         assign BU3673_B[13] = n6064;
         assign BU3673_B[14] = n6063;
         assign BU3673_B[15] = n6062;
         assign BU3673_B[16] = n6062;
         assign BU3673_B[17] = n6062;
         assign BU3673_B[18] = n6062;
         assign BU3673_B[19] = n6062;
         assign BU3673_B[20] = n6062;
         assign BU3673_B[21] = n6062;
      wire BU3673_ADD;
         assign BU3673_ADD = n21689;
      wire [21 : 0] BU3673_Q;
         assign n6809 = BU3673_Q[0];
         assign n6808 = BU3673_Q[1];
         assign n6807 = BU3673_Q[2];
         assign n6806 = BU3673_Q[3];
         assign n6805 = BU3673_Q[4];
         assign n6804 = BU3673_Q[5];
         assign n6803 = BU3673_Q[6];
         assign n6802 = BU3673_Q[7];
         assign n6801 = BU3673_Q[8];
         assign n6800 = BU3673_Q[9];
         assign n6799 = BU3673_Q[10];
         assign n6798 = BU3673_Q[11];
         assign n6797 = BU3673_Q[12];
         assign n6796 = BU3673_Q[13];
         assign n6795 = BU3673_Q[14];
         assign n6794 = BU3673_Q[15];
         assign n6793 = BU3673_Q[16];
         assign n6792 = BU3673_Q[17];
         assign n6791 = BU3673_Q[18];
         assign n6790 = BU3673_Q[19];
         assign n6789 = BU3673_Q[20];
         assign n6788 = BU3673_Q[21];
      wire BU3673_CLK;
         assign BU3673_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3673(
         .A(BU3673_A),
         .B(BU3673_B),
         .ADD(BU3673_ADD),
         .Q(BU3673_Q),
         .CLK(BU3673_CLK)
      );

      defparam BU3812.INIT = 'ha3a3;
      wire BU3812_I0;
         assign BU3812_I0 = n6810;
      wire BU3812_I1;
         assign BU3812_I1 = n8200;
      wire BU3812_I2;
         assign BU3812_I2 = n8199;
      wire BU3812_I3;
         assign BU3812_I3 = 1'b0;
      wire BU3812_O;
         assign n21689 = BU3812_O;
      LUT4       BU3812(
         .I0(BU3812_I0),
         .I1(BU3812_I1),
         .I2(BU3812_I2),
         .I3(BU3812_I3),
         .O(BU3812_O)
      );

      wire [21 : 0] BU3819_A;
         assign BU3819_A[0] = n7579;
         assign BU3819_A[1] = n7578;
         assign BU3819_A[2] = n7577;
         assign BU3819_A[3] = n7576;
         assign BU3819_A[4] = n7575;
         assign BU3819_A[5] = n7574;
         assign BU3819_A[6] = n7573;
         assign BU3819_A[7] = n7572;
         assign BU3819_A[8] = n7571;
         assign BU3819_A[9] = n7570;
         assign BU3819_A[10] = n7569;
         assign BU3819_A[11] = n7568;
         assign BU3819_A[12] = n7567;
         assign BU3819_A[13] = n7566;
         assign BU3819_A[14] = n7565;
         assign BU3819_A[15] = n7564;
         assign BU3819_A[16] = n7563;
         assign BU3819_A[17] = n7562;
         assign BU3819_A[18] = n7561;
         assign BU3819_A[19] = n7560;
         assign BU3819_A[20] = n7559;
         assign BU3819_A[21] = n7558;
      wire [21 : 0] BU3819_B;
         assign BU3819_B[0] = 1'b1;
         assign BU3819_B[1] = 1'b1;
         assign BU3819_B[2] = 1'b1;
         assign BU3819_B[3] = 1'b1;
         assign BU3819_B[4] = 1'b0;
         assign BU3819_B[5] = 1'b1;
         assign BU3819_B[6] = 1'b0;
         assign BU3819_B[7] = 1'b0;
         assign BU3819_B[8] = 1'b0;
         assign BU3819_B[9] = 1'b1;
         assign BU3819_B[10] = 1'b0;
         assign BU3819_B[11] = 1'b1;
         assign BU3819_B[12] = 1'b0;
         assign BU3819_B[13] = 1'b0;
         assign BU3819_B[14] = 1'b0;
         assign BU3819_B[15] = 1'b0;
         assign BU3819_B[16] = 1'b0;
         assign BU3819_B[17] = 1'b0;
         assign BU3819_B[18] = 1'b0;
         assign BU3819_B[19] = 1'b0;
         assign BU3819_B[20] = 1'b0;
         assign BU3819_B[21] = 1'b0;
      wire BU3819_ADD;
         assign BU3819_ADD = n23104;
      wire [21 : 0] BU3819_S;
         assign n23081 = BU3819_S[21];
      wire [21 : 0] BU3819_Q;
         assign n7557 = BU3819_Q[0];
         assign n7556 = BU3819_Q[1];
         assign n7555 = BU3819_Q[2];
         assign n7554 = BU3819_Q[3];
         assign n7553 = BU3819_Q[4];
         assign n7552 = BU3819_Q[5];
         assign n7551 = BU3819_Q[6];
         assign n7550 = BU3819_Q[7];
         assign n7549 = BU3819_Q[8];
         assign n7548 = BU3819_Q[9];
         assign n7547 = BU3819_Q[10];
         assign n7546 = BU3819_Q[11];
         assign n7545 = BU3819_Q[12];
         assign n7544 = BU3819_Q[13];
         assign n7543 = BU3819_Q[14];
         assign n7542 = BU3819_Q[15];
         assign n7541 = BU3819_Q[16];
         assign n7540 = BU3819_Q[17];
         assign n7539 = BU3819_Q[18];
         assign n7538 = BU3819_Q[19];
         assign n7537 = BU3819_Q[20];
         assign n7536 = BU3819_Q[21];
      wire BU3819_CLK;
         assign BU3819_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3819(
         .A(BU3819_A),
         .B(BU3819_B),
         .ADD(BU3819_ADD),
         .S(BU3819_S),
         .Q(BU3819_Q),
         .CLK(BU3819_CLK)
      );

      defparam BU3958.INIT = 'h5c5c;
      wire BU3958_I0;
         assign BU3958_I0 = n6810;
      wire BU3958_I1;
         assign BU3958_I1 = n8200;
      wire BU3958_I2;
         assign BU3958_I2 = n8199;
      wire BU3958_I3;
         assign BU3958_I3 = 1'b0;
      wire BU3958_O;
         assign n23104 = BU3958_O;
      LUT4       BU3958(
         .I0(BU3958_I0),
         .I1(BU3958_I1),
         .I2(BU3958_I2),
         .I3(BU3958_I3),
         .O(BU3958_O)
      );

      wire [0 : 0] BU3963_D;
         assign BU3963_D[0] = n23081;
      wire [0 : 0] BU3963_Q;
         assign n8197 = BU3963_Q[0];
      wire BU3963_CLK;
         assign BU3963_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3963(
         .D(BU3963_D),
         .Q(BU3963_Q),
         .CLK(BU3963_CLK)
      );

      wire [0 : 0] BU3972_D;
         assign BU3972_D[0] = n8099;
      wire [0 : 0] BU3972_Q;
         assign n8096 = BU3972_Q[0];
      wire BU3972_CLK;
         assign BU3972_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3972(
         .D(BU3972_D),
         .Q(BU3972_Q),
         .CLK(BU3972_CLK)
      );

      wire [0 : 0] BU3979_D;
         assign BU3979_D[0] = n8098;
      wire [0 : 0] BU3979_Q;
         assign n8095 = BU3979_Q[0];
      wire BU3979_CLK;
         assign BU3979_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3979(
         .D(BU3979_D),
         .Q(BU3979_Q),
         .CLK(BU3979_CLK)
      );

      wire [0 : 0] BU3986_D;
         assign BU3986_D[0] = n8097;
      wire [0 : 0] BU3986_Q;
         assign n8094 = BU3986_Q[0];
      wire BU3986_CLK;
         assign BU3986_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3986(
         .D(BU3986_D),
         .Q(BU3986_Q),
         .CLK(BU3986_CLK)
      );

      wire [0 : 0] BU3993_D;
         assign BU3993_D[0] = n8199;
      wire [0 : 0] BU3993_Q;
         assign n8196 = BU3993_Q[0];
      wire BU3993_CLK;
         assign BU3993_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU3993(
         .D(BU3993_D),
         .Q(BU3993_Q),
         .CLK(BU3993_CLK)
      );

      wire [21 : 0] BU4009_A;
         assign BU4009_A[0] = n6061;
         assign BU4009_A[1] = n6060;
         assign BU4009_A[2] = n6059;
         assign BU4009_A[3] = n6058;
         assign BU4009_A[4] = n6057;
         assign BU4009_A[5] = n6056;
         assign BU4009_A[6] = n6055;
         assign BU4009_A[7] = n6054;
         assign BU4009_A[8] = n6053;
         assign BU4009_A[9] = n6052;
         assign BU4009_A[10] = n6051;
         assign BU4009_A[11] = n6050;
         assign BU4009_A[12] = n6049;
         assign BU4009_A[13] = n6048;
         assign BU4009_A[14] = n6047;
         assign BU4009_A[15] = n6046;
         assign BU4009_A[16] = n6045;
         assign BU4009_A[17] = n6044;
         assign BU4009_A[18] = n6043;
         assign BU4009_A[19] = n6042;
         assign BU4009_A[20] = n6041;
         assign BU4009_A[21] = n6040;
      wire [21 : 0] BU4009_B;
         assign BU4009_B[0] = n6802;
         assign BU4009_B[1] = n6801;
         assign BU4009_B[2] = n6800;
         assign BU4009_B[3] = n6799;
         assign BU4009_B[4] = n6798;
         assign BU4009_B[5] = n6797;
         assign BU4009_B[6] = n6796;
         assign BU4009_B[7] = n6795;
         assign BU4009_B[8] = n6794;
         assign BU4009_B[9] = n6793;
         assign BU4009_B[10] = n6792;
         assign BU4009_B[11] = n6791;
         assign BU4009_B[12] = n6790;
         assign BU4009_B[13] = n6789;
         assign BU4009_B[14] = n6788;
         assign BU4009_B[15] = n6788;
         assign BU4009_B[16] = n6788;
         assign BU4009_B[17] = n6788;
         assign BU4009_B[18] = n6788;
         assign BU4009_B[19] = n6788;
         assign BU4009_B[20] = n6788;
         assign BU4009_B[21] = n6788;
      wire BU4009_ADD;
         assign BU4009_ADD = n24262;
      wire [21 : 0] BU4009_Q;
         assign n6039 = BU4009_Q[0];
         assign n6038 = BU4009_Q[1];
         assign n6037 = BU4009_Q[2];
         assign n6036 = BU4009_Q[3];
         assign n6035 = BU4009_Q[4];
         assign n6034 = BU4009_Q[5];
         assign n6033 = BU4009_Q[6];
         assign n6032 = BU4009_Q[7];
         assign n6031 = BU4009_Q[8];
         assign n6030 = BU4009_Q[9];
         assign n6029 = BU4009_Q[10];
         assign n6028 = BU4009_Q[11];
         assign n6027 = BU4009_Q[12];
         assign n6026 = BU4009_Q[13];
         assign n6025 = BU4009_Q[14];
         assign n6024 = BU4009_Q[15];
         assign n6023 = BU4009_Q[16];
         assign n6022 = BU4009_Q[17];
         assign n6021 = BU4009_Q[18];
         assign n6020 = BU4009_Q[19];
         assign n6019 = BU4009_Q[20];
         assign n6018 = BU4009_Q[21];
      wire BU4009_CLK;
         assign BU4009_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4009(
         .A(BU4009_A),
         .B(BU4009_B),
         .ADD(BU4009_ADD),
         .Q(BU4009_Q),
         .CLK(BU4009_CLK)
      );

      defparam BU4148.INIT = 'ha53c;
      wire BU4148_I0;
         assign BU4148_I0 = n6788;
      wire BU4148_I1;
         assign BU4148_I1 = n8197;
      wire BU4148_I2;
         assign BU4148_I2 = 1'b0;
      wire BU4148_I3;
         assign BU4148_I3 = n8196;
      wire BU4148_O;
         assign n24262 = BU4148_O;
      LUT4       BU4148(
         .I0(BU4148_I0),
         .I1(BU4148_I1),
         .I2(BU4148_I2),
         .I3(BU4148_I3),
         .O(BU4148_O)
      );

      wire [21 : 0] BU4153_A;
         assign BU4153_A[0] = n6809;
         assign BU4153_A[1] = n6808;
         assign BU4153_A[2] = n6807;
         assign BU4153_A[3] = n6806;
         assign BU4153_A[4] = n6805;
         assign BU4153_A[5] = n6804;
         assign BU4153_A[6] = n6803;
         assign BU4153_A[7] = n6802;
         assign BU4153_A[8] = n6801;
         assign BU4153_A[9] = n6800;
         assign BU4153_A[10] = n6799;
         assign BU4153_A[11] = n6798;
         assign BU4153_A[12] = n6797;
         assign BU4153_A[13] = n6796;
         assign BU4153_A[14] = n6795;
         assign BU4153_A[15] = n6794;
         assign BU4153_A[16] = n6793;
         assign BU4153_A[17] = n6792;
         assign BU4153_A[18] = n6791;
         assign BU4153_A[19] = n6790;
         assign BU4153_A[20] = n6789;
         assign BU4153_A[21] = n6788;
      wire [21 : 0] BU4153_B;
         assign BU4153_B[0] = n6054;
         assign BU4153_B[1] = n6053;
         assign BU4153_B[2] = n6052;
         assign BU4153_B[3] = n6051;
         assign BU4153_B[4] = n6050;
         assign BU4153_B[5] = n6049;
         assign BU4153_B[6] = n6048;
         assign BU4153_B[7] = n6047;
         assign BU4153_B[8] = n6046;
         assign BU4153_B[9] = n6045;
         assign BU4153_B[10] = n6044;
         assign BU4153_B[11] = n6043;
         assign BU4153_B[12] = n6042;
         assign BU4153_B[13] = n6041;
         assign BU4153_B[14] = n6040;
         assign BU4153_B[15] = n6040;
         assign BU4153_B[16] = n6040;
         assign BU4153_B[17] = n6040;
         assign BU4153_B[18] = n6040;
         assign BU4153_B[19] = n6040;
         assign BU4153_B[20] = n6040;
         assign BU4153_B[21] = n6040;
      wire BU4153_ADD;
         assign BU4153_ADD = n24263;
      wire [21 : 0] BU4153_Q;
         assign n6787 = BU4153_Q[0];
         assign n6786 = BU4153_Q[1];
         assign n6785 = BU4153_Q[2];
         assign n6784 = BU4153_Q[3];
         assign n6783 = BU4153_Q[4];
         assign n6782 = BU4153_Q[5];
         assign n6781 = BU4153_Q[6];
         assign n6780 = BU4153_Q[7];
         assign n6779 = BU4153_Q[8];
         assign n6778 = BU4153_Q[9];
         assign n6777 = BU4153_Q[10];
         assign n6776 = BU4153_Q[11];
         assign n6775 = BU4153_Q[12];
         assign n6774 = BU4153_Q[13];
         assign n6773 = BU4153_Q[14];
         assign n6772 = BU4153_Q[15];
         assign n6771 = BU4153_Q[16];
         assign n6770 = BU4153_Q[17];
         assign n6769 = BU4153_Q[18];
         assign n6768 = BU4153_Q[19];
         assign n6767 = BU4153_Q[20];
         assign n6766 = BU4153_Q[21];
      wire BU4153_CLK;
         assign BU4153_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4153(
         .A(BU4153_A),
         .B(BU4153_B),
         .ADD(BU4153_ADD),
         .Q(BU4153_Q),
         .CLK(BU4153_CLK)
      );

      defparam BU4292.INIT = 'ha3a3;
      wire BU4292_I0;
         assign BU4292_I0 = n6788;
      wire BU4292_I1;
         assign BU4292_I1 = n8197;
      wire BU4292_I2;
         assign BU4292_I2 = n8196;
      wire BU4292_I3;
         assign BU4292_I3 = 1'b0;
      wire BU4292_O;
         assign n24263 = BU4292_O;
      LUT4       BU4292(
         .I0(BU4292_I0),
         .I1(BU4292_I1),
         .I2(BU4292_I2),
         .I3(BU4292_I3),
         .O(BU4292_O)
      );

      wire [21 : 0] BU4299_A;
         assign BU4299_A[0] = n7557;
         assign BU4299_A[1] = n7556;
         assign BU4299_A[2] = n7555;
         assign BU4299_A[3] = n7554;
         assign BU4299_A[4] = n7553;
         assign BU4299_A[5] = n7552;
         assign BU4299_A[6] = n7551;
         assign BU4299_A[7] = n7550;
         assign BU4299_A[8] = n7549;
         assign BU4299_A[9] = n7548;
         assign BU4299_A[10] = n7547;
         assign BU4299_A[11] = n7546;
         assign BU4299_A[12] = n7545;
         assign BU4299_A[13] = n7544;
         assign BU4299_A[14] = n7543;
         assign BU4299_A[15] = n7542;
         assign BU4299_A[16] = n7541;
         assign BU4299_A[17] = n7540;
         assign BU4299_A[18] = n7539;
         assign BU4299_A[19] = n7538;
         assign BU4299_A[20] = n7537;
         assign BU4299_A[21] = n7536;
      wire [21 : 0] BU4299_B;
         assign BU4299_B[0] = 1'b0;
         assign BU4299_B[1] = 1'b0;
         assign BU4299_B[2] = 1'b0;
         assign BU4299_B[3] = 1'b1;
         assign BU4299_B[4] = 1'b1;
         assign BU4299_B[5] = 1'b0;
         assign BU4299_B[6] = 1'b0;
         assign BU4299_B[7] = 1'b0;
         assign BU4299_B[8] = 1'b1;
         assign BU4299_B[9] = 1'b0;
         assign BU4299_B[10] = 1'b1;
         assign BU4299_B[11] = 1'b0;
         assign BU4299_B[12] = 1'b0;
         assign BU4299_B[13] = 1'b0;
         assign BU4299_B[14] = 1'b0;
         assign BU4299_B[15] = 1'b0;
         assign BU4299_B[16] = 1'b0;
         assign BU4299_B[17] = 1'b0;
         assign BU4299_B[18] = 1'b0;
         assign BU4299_B[19] = 1'b0;
         assign BU4299_B[20] = 1'b0;
         assign BU4299_B[21] = 1'b0;
      wire BU4299_ADD;
         assign BU4299_ADD = n25678;
      wire [21 : 0] BU4299_S;
         assign n25655 = BU4299_S[21];
      wire [21 : 0] BU4299_Q;
         assign n7535 = BU4299_Q[0];
         assign n7534 = BU4299_Q[1];
         assign n7533 = BU4299_Q[2];
         assign n7532 = BU4299_Q[3];
         assign n7531 = BU4299_Q[4];
         assign n7530 = BU4299_Q[5];
         assign n7529 = BU4299_Q[6];
         assign n7528 = BU4299_Q[7];
         assign n7527 = BU4299_Q[8];
         assign n7526 = BU4299_Q[9];
         assign n7525 = BU4299_Q[10];
         assign n7524 = BU4299_Q[11];
         assign n7523 = BU4299_Q[12];
         assign n7522 = BU4299_Q[13];
         assign n7521 = BU4299_Q[14];
         assign n7520 = BU4299_Q[15];
         assign n7519 = BU4299_Q[16];
         assign n7518 = BU4299_Q[17];
         assign n7517 = BU4299_Q[18];
         assign n7516 = BU4299_Q[19];
         assign n7515 = BU4299_Q[20];
         assign n7514 = BU4299_Q[21];
      wire BU4299_CLK;
         assign BU4299_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4299(
         .A(BU4299_A),
         .B(BU4299_B),
         .ADD(BU4299_ADD),
         .S(BU4299_S),
         .Q(BU4299_Q),
         .CLK(BU4299_CLK)
      );

      defparam BU4438.INIT = 'h5c5c;
      wire BU4438_I0;
         assign BU4438_I0 = n6788;
      wire BU4438_I1;
         assign BU4438_I1 = n8197;
      wire BU4438_I2;
         assign BU4438_I2 = n8196;
      wire BU4438_I3;
         assign BU4438_I3 = 1'b0;
      wire BU4438_O;
         assign n25678 = BU4438_O;
      LUT4       BU4438(
         .I0(BU4438_I0),
         .I1(BU4438_I1),
         .I2(BU4438_I2),
         .I3(BU4438_I3),
         .O(BU4438_O)
      );

      wire [0 : 0] BU4443_D;
         assign BU4443_D[0] = n25655;
      wire [0 : 0] BU4443_Q;
         assign n8194 = BU4443_Q[0];
      wire BU4443_CLK;
         assign BU4443_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4443(
         .D(BU4443_D),
         .Q(BU4443_Q),
         .CLK(BU4443_CLK)
      );

      wire [0 : 0] BU4452_D;
         assign BU4452_D[0] = n8096;
      wire [0 : 0] BU4452_Q;
         assign n8093 = BU4452_Q[0];
      wire BU4452_CLK;
         assign BU4452_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4452(
         .D(BU4452_D),
         .Q(BU4452_Q),
         .CLK(BU4452_CLK)
      );

      wire [0 : 0] BU4459_D;
         assign BU4459_D[0] = n8095;
      wire [0 : 0] BU4459_Q;
         assign n8092 = BU4459_Q[0];
      wire BU4459_CLK;
         assign BU4459_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4459(
         .D(BU4459_D),
         .Q(BU4459_Q),
         .CLK(BU4459_CLK)
      );

      wire [0 : 0] BU4466_D;
         assign BU4466_D[0] = n8094;
      wire [0 : 0] BU4466_Q;
         assign n8091 = BU4466_Q[0];
      wire BU4466_CLK;
         assign BU4466_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4466(
         .D(BU4466_D),
         .Q(BU4466_Q),
         .CLK(BU4466_CLK)
      );

      wire [0 : 0] BU4473_D;
         assign BU4473_D[0] = n8196;
      wire [0 : 0] BU4473_Q;
         assign n8193 = BU4473_Q[0];
      wire BU4473_CLK;
         assign BU4473_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4473(
         .D(BU4473_D),
         .Q(BU4473_Q),
         .CLK(BU4473_CLK)
      );

      wire [21 : 0] BU4489_A;
         assign BU4489_A[0] = n6039;
         assign BU4489_A[1] = n6038;
         assign BU4489_A[2] = n6037;
         assign BU4489_A[3] = n6036;
         assign BU4489_A[4] = n6035;
         assign BU4489_A[5] = n6034;
         assign BU4489_A[6] = n6033;
         assign BU4489_A[7] = n6032;
         assign BU4489_A[8] = n6031;
         assign BU4489_A[9] = n6030;
         assign BU4489_A[10] = n6029;
         assign BU4489_A[11] = n6028;
         assign BU4489_A[12] = n6027;
         assign BU4489_A[13] = n6026;
         assign BU4489_A[14] = n6025;
         assign BU4489_A[15] = n6024;
         assign BU4489_A[16] = n6023;
         assign BU4489_A[17] = n6022;
         assign BU4489_A[18] = n6021;
         assign BU4489_A[19] = n6020;
         assign BU4489_A[20] = n6019;
         assign BU4489_A[21] = n6018;
      wire [21 : 0] BU4489_B;
         assign BU4489_B[0] = n6779;
         assign BU4489_B[1] = n6778;
         assign BU4489_B[2] = n6777;
         assign BU4489_B[3] = n6776;
         assign BU4489_B[4] = n6775;
         assign BU4489_B[5] = n6774;
         assign BU4489_B[6] = n6773;
         assign BU4489_B[7] = n6772;
         assign BU4489_B[8] = n6771;
         assign BU4489_B[9] = n6770;
         assign BU4489_B[10] = n6769;
         assign BU4489_B[11] = n6768;
         assign BU4489_B[12] = n6767;
         assign BU4489_B[13] = n6766;
         assign BU4489_B[14] = n6766;
         assign BU4489_B[15] = n6766;
         assign BU4489_B[16] = n6766;
         assign BU4489_B[17] = n6766;
         assign BU4489_B[18] = n6766;
         assign BU4489_B[19] = n6766;
         assign BU4489_B[20] = n6766;
         assign BU4489_B[21] = n6766;
      wire BU4489_ADD;
         assign BU4489_ADD = n26836;
      wire [21 : 0] BU4489_Q;
         assign n6017 = BU4489_Q[0];
         assign n6016 = BU4489_Q[1];
         assign n6015 = BU4489_Q[2];
         assign n6014 = BU4489_Q[3];
         assign n6013 = BU4489_Q[4];
         assign n6012 = BU4489_Q[5];
         assign n6011 = BU4489_Q[6];
         assign n6010 = BU4489_Q[7];
         assign n6009 = BU4489_Q[8];
         assign n6008 = BU4489_Q[9];
         assign n6007 = BU4489_Q[10];
         assign n6006 = BU4489_Q[11];
         assign n6005 = BU4489_Q[12];
         assign n6004 = BU4489_Q[13];
         assign n6003 = BU4489_Q[14];
         assign n6002 = BU4489_Q[15];
         assign n6001 = BU4489_Q[16];
         assign n6000 = BU4489_Q[17];
         assign n5999 = BU4489_Q[18];
         assign n5998 = BU4489_Q[19];
         assign n5997 = BU4489_Q[20];
         assign n5996 = BU4489_Q[21];
      wire BU4489_CLK;
         assign BU4489_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4489(
         .A(BU4489_A),
         .B(BU4489_B),
         .ADD(BU4489_ADD),
         .Q(BU4489_Q),
         .CLK(BU4489_CLK)
      );

      defparam BU4628.INIT = 'ha53c;
      wire BU4628_I0;
         assign BU4628_I0 = n6766;
      wire BU4628_I1;
         assign BU4628_I1 = n8194;
      wire BU4628_I2;
         assign BU4628_I2 = 1'b0;
      wire BU4628_I3;
         assign BU4628_I3 = n8193;
      wire BU4628_O;
         assign n26836 = BU4628_O;
      LUT4       BU4628(
         .I0(BU4628_I0),
         .I1(BU4628_I1),
         .I2(BU4628_I2),
         .I3(BU4628_I3),
         .O(BU4628_O)
      );

      wire [21 : 0] BU4633_A;
         assign BU4633_A[0] = n6787;
         assign BU4633_A[1] = n6786;
         assign BU4633_A[2] = n6785;
         assign BU4633_A[3] = n6784;
         assign BU4633_A[4] = n6783;
         assign BU4633_A[5] = n6782;
         assign BU4633_A[6] = n6781;
         assign BU4633_A[7] = n6780;
         assign BU4633_A[8] = n6779;
         assign BU4633_A[9] = n6778;
         assign BU4633_A[10] = n6777;
         assign BU4633_A[11] = n6776;
         assign BU4633_A[12] = n6775;
         assign BU4633_A[13] = n6774;
         assign BU4633_A[14] = n6773;
         assign BU4633_A[15] = n6772;
         assign BU4633_A[16] = n6771;
         assign BU4633_A[17] = n6770;
         assign BU4633_A[18] = n6769;
         assign BU4633_A[19] = n6768;
         assign BU4633_A[20] = n6767;
         assign BU4633_A[21] = n6766;
      wire [21 : 0] BU4633_B;
         assign BU4633_B[0] = n6031;
         assign BU4633_B[1] = n6030;
         assign BU4633_B[2] = n6029;
         assign BU4633_B[3] = n6028;
         assign BU4633_B[4] = n6027;
         assign BU4633_B[5] = n6026;
         assign BU4633_B[6] = n6025;
         assign BU4633_B[7] = n6024;
         assign BU4633_B[8] = n6023;
         assign BU4633_B[9] = n6022;
         assign BU4633_B[10] = n6021;
         assign BU4633_B[11] = n6020;
         assign BU4633_B[12] = n6019;
         assign BU4633_B[13] = n6018;
         assign BU4633_B[14] = n6018;
         assign BU4633_B[15] = n6018;
         assign BU4633_B[16] = n6018;
         assign BU4633_B[17] = n6018;
         assign BU4633_B[18] = n6018;
         assign BU4633_B[19] = n6018;
         assign BU4633_B[20] = n6018;
         assign BU4633_B[21] = n6018;
      wire BU4633_ADD;
         assign BU4633_ADD = n26837;
      wire [21 : 0] BU4633_Q;
         assign n6765 = BU4633_Q[0];
         assign n6764 = BU4633_Q[1];
         assign n6763 = BU4633_Q[2];
         assign n6762 = BU4633_Q[3];
         assign n6761 = BU4633_Q[4];
         assign n6760 = BU4633_Q[5];
         assign n6759 = BU4633_Q[6];
         assign n6758 = BU4633_Q[7];
         assign n6757 = BU4633_Q[8];
         assign n6756 = BU4633_Q[9];
         assign n6755 = BU4633_Q[10];
         assign n6754 = BU4633_Q[11];
         assign n6753 = BU4633_Q[12];
         assign n6752 = BU4633_Q[13];
         assign n6751 = BU4633_Q[14];
         assign n6750 = BU4633_Q[15];
         assign n6749 = BU4633_Q[16];
         assign n6748 = BU4633_Q[17];
         assign n6747 = BU4633_Q[18];
         assign n6746 = BU4633_Q[19];
         assign n6745 = BU4633_Q[20];
         assign n6744 = BU4633_Q[21];
      wire BU4633_CLK;
         assign BU4633_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4633(
         .A(BU4633_A),
         .B(BU4633_B),
         .ADD(BU4633_ADD),
         .Q(BU4633_Q),
         .CLK(BU4633_CLK)
      );

      defparam BU4772.INIT = 'ha3a3;
      wire BU4772_I0;
         assign BU4772_I0 = n6766;
      wire BU4772_I1;
         assign BU4772_I1 = n8194;
      wire BU4772_I2;
         assign BU4772_I2 = n8193;
      wire BU4772_I3;
         assign BU4772_I3 = 1'b0;
      wire BU4772_O;
         assign n26837 = BU4772_O;
      LUT4       BU4772(
         .I0(BU4772_I0),
         .I1(BU4772_I1),
         .I2(BU4772_I2),
         .I3(BU4772_I3),
         .O(BU4772_O)
      );

      wire [21 : 0] BU4779_A;
         assign BU4779_A[0] = n7535;
         assign BU4779_A[1] = n7534;
         assign BU4779_A[2] = n7533;
         assign BU4779_A[3] = n7532;
         assign BU4779_A[4] = n7531;
         assign BU4779_A[5] = n7530;
         assign BU4779_A[6] = n7529;
         assign BU4779_A[7] = n7528;
         assign BU4779_A[8] = n7527;
         assign BU4779_A[9] = n7526;
         assign BU4779_A[10] = n7525;
         assign BU4779_A[11] = n7524;
         assign BU4779_A[12] = n7523;
         assign BU4779_A[13] = n7522;
         assign BU4779_A[14] = n7521;
         assign BU4779_A[15] = n7520;
         assign BU4779_A[16] = n7519;
         assign BU4779_A[17] = n7518;
         assign BU4779_A[18] = n7517;
         assign BU4779_A[19] = n7516;
         assign BU4779_A[20] = n7515;
         assign BU4779_A[21] = n7514;
      wire [21 : 0] BU4779_B;
         assign BU4779_B[0] = 1'b0;
         assign BU4779_B[1] = 1'b0;
         assign BU4779_B[2] = 1'b1;
         assign BU4779_B[3] = 1'b1;
         assign BU4779_B[4] = 1'b0;
         assign BU4779_B[5] = 1'b0;
         assign BU4779_B[6] = 1'b0;
         assign BU4779_B[7] = 1'b1;
         assign BU4779_B[8] = 1'b0;
         assign BU4779_B[9] = 1'b1;
         assign BU4779_B[10] = 1'b0;
         assign BU4779_B[11] = 1'b0;
         assign BU4779_B[12] = 1'b0;
         assign BU4779_B[13] = 1'b0;
         assign BU4779_B[14] = 1'b0;
         assign BU4779_B[15] = 1'b0;
         assign BU4779_B[16] = 1'b0;
         assign BU4779_B[17] = 1'b0;
         assign BU4779_B[18] = 1'b0;
         assign BU4779_B[19] = 1'b0;
         assign BU4779_B[20] = 1'b0;
         assign BU4779_B[21] = 1'b0;
      wire BU4779_ADD;
         assign BU4779_ADD = n28252;
      wire [21 : 0] BU4779_S;
         assign n28229 = BU4779_S[21];
      wire [21 : 0] BU4779_Q;
         assign n7513 = BU4779_Q[0];
         assign n7512 = BU4779_Q[1];
         assign n7511 = BU4779_Q[2];
         assign n7510 = BU4779_Q[3];
         assign n7509 = BU4779_Q[4];
         assign n7508 = BU4779_Q[5];
         assign n7507 = BU4779_Q[6];
         assign n7506 = BU4779_Q[7];
         assign n7505 = BU4779_Q[8];
         assign n7504 = BU4779_Q[9];
         assign n7503 = BU4779_Q[10];
         assign n7502 = BU4779_Q[11];
         assign n7501 = BU4779_Q[12];
         assign n7500 = BU4779_Q[13];
         assign n7499 = BU4779_Q[14];
         assign n7498 = BU4779_Q[15];
         assign n7497 = BU4779_Q[16];
         assign n7496 = BU4779_Q[17];
         assign n7495 = BU4779_Q[18];
         assign n7494 = BU4779_Q[19];
         assign n7493 = BU4779_Q[20];
         assign n7492 = BU4779_Q[21];
      wire BU4779_CLK;
         assign BU4779_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4779(
         .A(BU4779_A),
         .B(BU4779_B),
         .ADD(BU4779_ADD),
         .S(BU4779_S),
         .Q(BU4779_Q),
         .CLK(BU4779_CLK)
      );

      defparam BU4918.INIT = 'h5c5c;
      wire BU4918_I0;
         assign BU4918_I0 = n6766;
      wire BU4918_I1;
         assign BU4918_I1 = n8194;
      wire BU4918_I2;
         assign BU4918_I2 = n8193;
      wire BU4918_I3;
         assign BU4918_I3 = 1'b0;
      wire BU4918_O;
         assign n28252 = BU4918_O;
      LUT4       BU4918(
         .I0(BU4918_I0),
         .I1(BU4918_I1),
         .I2(BU4918_I2),
         .I3(BU4918_I3),
         .O(BU4918_O)
      );

      wire [0 : 0] BU4923_D;
         assign BU4923_D[0] = n28229;
      wire [0 : 0] BU4923_Q;
         assign n8191 = BU4923_Q[0];
      wire BU4923_CLK;
         assign BU4923_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4923(
         .D(BU4923_D),
         .Q(BU4923_Q),
         .CLK(BU4923_CLK)
      );

      wire [0 : 0] BU4932_D;
         assign BU4932_D[0] = n8093;
      wire [0 : 0] BU4932_Q;
         assign n8090 = BU4932_Q[0];
      wire BU4932_CLK;
         assign BU4932_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4932(
         .D(BU4932_D),
         .Q(BU4932_Q),
         .CLK(BU4932_CLK)
      );

      wire [0 : 0] BU4939_D;
         assign BU4939_D[0] = n8092;
      wire [0 : 0] BU4939_Q;
         assign n8089 = BU4939_Q[0];
      wire BU4939_CLK;
         assign BU4939_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4939(
         .D(BU4939_D),
         .Q(BU4939_Q),
         .CLK(BU4939_CLK)
      );

      wire [0 : 0] BU4946_D;
         assign BU4946_D[0] = n8091;
      wire [0 : 0] BU4946_Q;
         assign n8088 = BU4946_Q[0];
      wire BU4946_CLK;
         assign BU4946_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4946(
         .D(BU4946_D),
         .Q(BU4946_Q),
         .CLK(BU4946_CLK)
      );

      wire [0 : 0] BU4953_D;
         assign BU4953_D[0] = n8193;
      wire [0 : 0] BU4953_Q;
         assign n8190 = BU4953_Q[0];
      wire BU4953_CLK;
         assign BU4953_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU4953(
         .D(BU4953_D),
         .Q(BU4953_Q),
         .CLK(BU4953_CLK)
      );

      wire [21 : 0] BU4969_A;
         assign BU4969_A[0] = n6017;
         assign BU4969_A[1] = n6016;
         assign BU4969_A[2] = n6015;
         assign BU4969_A[3] = n6014;
         assign BU4969_A[4] = n6013;
         assign BU4969_A[5] = n6012;
         assign BU4969_A[6] = n6011;
         assign BU4969_A[7] = n6010;
         assign BU4969_A[8] = n6009;
         assign BU4969_A[9] = n6008;
         assign BU4969_A[10] = n6007;
         assign BU4969_A[11] = n6006;
         assign BU4969_A[12] = n6005;
         assign BU4969_A[13] = n6004;
         assign BU4969_A[14] = n6003;
         assign BU4969_A[15] = n6002;
         assign BU4969_A[16] = n6001;
         assign BU4969_A[17] = n6000;
         assign BU4969_A[18] = n5999;
         assign BU4969_A[19] = n5998;
         assign BU4969_A[20] = n5997;
         assign BU4969_A[21] = n5996;
      wire [21 : 0] BU4969_B;
         assign BU4969_B[0] = n6756;
         assign BU4969_B[1] = n6755;
         assign BU4969_B[2] = n6754;
         assign BU4969_B[3] = n6753;
         assign BU4969_B[4] = n6752;
         assign BU4969_B[5] = n6751;
         assign BU4969_B[6] = n6750;
         assign BU4969_B[7] = n6749;
         assign BU4969_B[8] = n6748;
         assign BU4969_B[9] = n6747;
         assign BU4969_B[10] = n6746;
         assign BU4969_B[11] = n6745;
         assign BU4969_B[12] = n6744;
         assign BU4969_B[13] = n6744;
         assign BU4969_B[14] = n6744;
         assign BU4969_B[15] = n6744;
         assign BU4969_B[16] = n6744;
         assign BU4969_B[17] = n6744;
         assign BU4969_B[18] = n6744;
         assign BU4969_B[19] = n6744;
         assign BU4969_B[20] = n6744;
         assign BU4969_B[21] = n6744;
      wire BU4969_ADD;
         assign BU4969_ADD = n29410;
      wire [21 : 0] BU4969_Q;
         assign n5995 = BU4969_Q[0];
         assign n5994 = BU4969_Q[1];
         assign n5993 = BU4969_Q[2];
         assign n5992 = BU4969_Q[3];
         assign n5991 = BU4969_Q[4];
         assign n5990 = BU4969_Q[5];
         assign n5989 = BU4969_Q[6];
         assign n5988 = BU4969_Q[7];
         assign n5987 = BU4969_Q[8];
         assign n5986 = BU4969_Q[9];
         assign n5985 = BU4969_Q[10];
         assign n5984 = BU4969_Q[11];
         assign n5983 = BU4969_Q[12];
         assign n5982 = BU4969_Q[13];
         assign n5981 = BU4969_Q[14];
         assign n5980 = BU4969_Q[15];
         assign n5979 = BU4969_Q[16];
         assign n5978 = BU4969_Q[17];
         assign n5977 = BU4969_Q[18];
         assign n5976 = BU4969_Q[19];
         assign n5975 = BU4969_Q[20];
         assign n5974 = BU4969_Q[21];
      wire BU4969_CLK;
         assign BU4969_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4969(
         .A(BU4969_A),
         .B(BU4969_B),
         .ADD(BU4969_ADD),
         .Q(BU4969_Q),
         .CLK(BU4969_CLK)
      );

      defparam BU5108.INIT = 'ha53c;
      wire BU5108_I0;
         assign BU5108_I0 = n6744;
      wire BU5108_I1;
         assign BU5108_I1 = n8191;
      wire BU5108_I2;
         assign BU5108_I2 = 1'b0;
      wire BU5108_I3;
         assign BU5108_I3 = n8190;
      wire BU5108_O;
         assign n29410 = BU5108_O;
      LUT4       BU5108(
         .I0(BU5108_I0),
         .I1(BU5108_I1),
         .I2(BU5108_I2),
         .I3(BU5108_I3),
         .O(BU5108_O)
      );

      wire [21 : 0] BU5113_A;
         assign BU5113_A[0] = n6765;
         assign BU5113_A[1] = n6764;
         assign BU5113_A[2] = n6763;
         assign BU5113_A[3] = n6762;
         assign BU5113_A[4] = n6761;
         assign BU5113_A[5] = n6760;
         assign BU5113_A[6] = n6759;
         assign BU5113_A[7] = n6758;
         assign BU5113_A[8] = n6757;
         assign BU5113_A[9] = n6756;
         assign BU5113_A[10] = n6755;
         assign BU5113_A[11] = n6754;
         assign BU5113_A[12] = n6753;
         assign BU5113_A[13] = n6752;
         assign BU5113_A[14] = n6751;
         assign BU5113_A[15] = n6750;
         assign BU5113_A[16] = n6749;
         assign BU5113_A[17] = n6748;
         assign BU5113_A[18] = n6747;
         assign BU5113_A[19] = n6746;
         assign BU5113_A[20] = n6745;
         assign BU5113_A[21] = n6744;
      wire [21 : 0] BU5113_B;
         assign BU5113_B[0] = n6008;
         assign BU5113_B[1] = n6007;
         assign BU5113_B[2] = n6006;
         assign BU5113_B[3] = n6005;
         assign BU5113_B[4] = n6004;
         assign BU5113_B[5] = n6003;
         assign BU5113_B[6] = n6002;
         assign BU5113_B[7] = n6001;
         assign BU5113_B[8] = n6000;
         assign BU5113_B[9] = n5999;
         assign BU5113_B[10] = n5998;
         assign BU5113_B[11] = n5997;
         assign BU5113_B[12] = n5996;
         assign BU5113_B[13] = n5996;
         assign BU5113_B[14] = n5996;
         assign BU5113_B[15] = n5996;
         assign BU5113_B[16] = n5996;
         assign BU5113_B[17] = n5996;
         assign BU5113_B[18] = n5996;
         assign BU5113_B[19] = n5996;
         assign BU5113_B[20] = n5996;
         assign BU5113_B[21] = n5996;
      wire BU5113_ADD;
         assign BU5113_ADD = n29411;
      wire [21 : 0] BU5113_Q;
         assign n6743 = BU5113_Q[0];
         assign n6742 = BU5113_Q[1];
         assign n6741 = BU5113_Q[2];
         assign n6740 = BU5113_Q[3];
         assign n6739 = BU5113_Q[4];
         assign n6738 = BU5113_Q[5];
         assign n6737 = BU5113_Q[6];
         assign n6736 = BU5113_Q[7];
         assign n6735 = BU5113_Q[8];
         assign n6734 = BU5113_Q[9];
         assign n6733 = BU5113_Q[10];
         assign n6732 = BU5113_Q[11];
         assign n6731 = BU5113_Q[12];
         assign n6730 = BU5113_Q[13];
         assign n6729 = BU5113_Q[14];
         assign n6728 = BU5113_Q[15];
         assign n6727 = BU5113_Q[16];
         assign n6726 = BU5113_Q[17];
         assign n6725 = BU5113_Q[18];
         assign n6724 = BU5113_Q[19];
         assign n6723 = BU5113_Q[20];
         assign n6722 = BU5113_Q[21];
      wire BU5113_CLK;
         assign BU5113_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5113(
         .A(BU5113_A),
         .B(BU5113_B),
         .ADD(BU5113_ADD),
         .Q(BU5113_Q),
         .CLK(BU5113_CLK)
      );

      defparam BU5252.INIT = 'ha3a3;
      wire BU5252_I0;
         assign BU5252_I0 = n6744;
      wire BU5252_I1;
         assign BU5252_I1 = n8191;
      wire BU5252_I2;
         assign BU5252_I2 = n8190;
      wire BU5252_I3;
         assign BU5252_I3 = 1'b0;
      wire BU5252_O;
         assign n29411 = BU5252_O;
      LUT4       BU5252(
         .I0(BU5252_I0),
         .I1(BU5252_I1),
         .I2(BU5252_I2),
         .I3(BU5252_I3),
         .O(BU5252_O)
      );

      wire [21 : 0] BU5259_A;
         assign BU5259_A[0] = n7513;
         assign BU5259_A[1] = n7512;
         assign BU5259_A[2] = n7511;
         assign BU5259_A[3] = n7510;
         assign BU5259_A[4] = n7509;
         assign BU5259_A[5] = n7508;
         assign BU5259_A[6] = n7507;
         assign BU5259_A[7] = n7506;
         assign BU5259_A[8] = n7505;
         assign BU5259_A[9] = n7504;
         assign BU5259_A[10] = n7503;
         assign BU5259_A[11] = n7502;
         assign BU5259_A[12] = n7501;
         assign BU5259_A[13] = n7500;
         assign BU5259_A[14] = n7499;
         assign BU5259_A[15] = n7498;
         assign BU5259_A[16] = n7497;
         assign BU5259_A[17] = n7496;
         assign BU5259_A[18] = n7495;
         assign BU5259_A[19] = n7494;
         assign BU5259_A[20] = n7493;
         assign BU5259_A[21] = n7492;
      wire [21 : 0] BU5259_B;
         assign BU5259_B[0] = 1'b0;
         assign BU5259_B[1] = 1'b1;
         assign BU5259_B[2] = 1'b1;
         assign BU5259_B[3] = 1'b0;
         assign BU5259_B[4] = 1'b0;
         assign BU5259_B[5] = 1'b0;
         assign BU5259_B[6] = 1'b1;
         assign BU5259_B[7] = 1'b0;
         assign BU5259_B[8] = 1'b1;
         assign BU5259_B[9] = 1'b0;
         assign BU5259_B[10] = 1'b0;
         assign BU5259_B[11] = 1'b0;
         assign BU5259_B[12] = 1'b0;
         assign BU5259_B[13] = 1'b0;
         assign BU5259_B[14] = 1'b0;
         assign BU5259_B[15] = 1'b0;
         assign BU5259_B[16] = 1'b0;
         assign BU5259_B[17] = 1'b0;
         assign BU5259_B[18] = 1'b0;
         assign BU5259_B[19] = 1'b0;
         assign BU5259_B[20] = 1'b0;
         assign BU5259_B[21] = 1'b0;
      wire BU5259_ADD;
         assign BU5259_ADD = n30826;
      wire [21 : 0] BU5259_S;
         assign n30803 = BU5259_S[21];
      wire [21 : 0] BU5259_Q;
         assign n7491 = BU5259_Q[0];
         assign n7490 = BU5259_Q[1];
         assign n7489 = BU5259_Q[2];
         assign n7488 = BU5259_Q[3];
         assign n7487 = BU5259_Q[4];
         assign n7486 = BU5259_Q[5];
         assign n7485 = BU5259_Q[6];
         assign n7484 = BU5259_Q[7];
         assign n7483 = BU5259_Q[8];
         assign n7482 = BU5259_Q[9];
         assign n7481 = BU5259_Q[10];
         assign n7480 = BU5259_Q[11];
         assign n7479 = BU5259_Q[12];
         assign n7478 = BU5259_Q[13];
         assign n7477 = BU5259_Q[14];
         assign n7476 = BU5259_Q[15];
         assign n7475 = BU5259_Q[16];
         assign n7474 = BU5259_Q[17];
         assign n7473 = BU5259_Q[18];
         assign n7472 = BU5259_Q[19];
         assign n7471 = BU5259_Q[20];
         assign n7470 = BU5259_Q[21];
      wire BU5259_CLK;
         assign BU5259_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5259(
         .A(BU5259_A),
         .B(BU5259_B),
         .ADD(BU5259_ADD),
         .S(BU5259_S),
         .Q(BU5259_Q),
         .CLK(BU5259_CLK)
      );

      defparam BU5398.INIT = 'h5c5c;
      wire BU5398_I0;
         assign BU5398_I0 = n6744;
      wire BU5398_I1;
         assign BU5398_I1 = n8191;
      wire BU5398_I2;
         assign BU5398_I2 = n8190;
      wire BU5398_I3;
         assign BU5398_I3 = 1'b0;
      wire BU5398_O;
         assign n30826 = BU5398_O;
      LUT4       BU5398(
         .I0(BU5398_I0),
         .I1(BU5398_I1),
         .I2(BU5398_I2),
         .I3(BU5398_I3),
         .O(BU5398_O)
      );

      wire [0 : 0] BU5403_D;
         assign BU5403_D[0] = n30803;
      wire [0 : 0] BU5403_Q;
         assign n8188 = BU5403_Q[0];
      wire BU5403_CLK;
         assign BU5403_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5403(
         .D(BU5403_D),
         .Q(BU5403_Q),
         .CLK(BU5403_CLK)
      );

      wire [0 : 0] BU5412_D;
         assign BU5412_D[0] = n8090;
      wire [0 : 0] BU5412_Q;
         assign n8087 = BU5412_Q[0];
      wire BU5412_CLK;
         assign BU5412_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5412(
         .D(BU5412_D),
         .Q(BU5412_Q),
         .CLK(BU5412_CLK)
      );

      wire [0 : 0] BU5419_D;
         assign BU5419_D[0] = n8089;
      wire [0 : 0] BU5419_Q;
         assign n8086 = BU5419_Q[0];
      wire BU5419_CLK;
         assign BU5419_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5419(
         .D(BU5419_D),
         .Q(BU5419_Q),
         .CLK(BU5419_CLK)
      );

      wire [0 : 0] BU5426_D;
         assign BU5426_D[0] = n8088;
      wire [0 : 0] BU5426_Q;
         assign n8085 = BU5426_Q[0];
      wire BU5426_CLK;
         assign BU5426_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5426(
         .D(BU5426_D),
         .Q(BU5426_Q),
         .CLK(BU5426_CLK)
      );

      wire [0 : 0] BU5433_D;
         assign BU5433_D[0] = n8190;
      wire [0 : 0] BU5433_Q;
         assign n8187 = BU5433_Q[0];
      wire BU5433_CLK;
         assign BU5433_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5433(
         .D(BU5433_D),
         .Q(BU5433_Q),
         .CLK(BU5433_CLK)
      );

      wire [21 : 0] BU5449_A;
         assign BU5449_A[0] = n5995;
         assign BU5449_A[1] = n5994;
         assign BU5449_A[2] = n5993;
         assign BU5449_A[3] = n5992;
         assign BU5449_A[4] = n5991;
         assign BU5449_A[5] = n5990;
         assign BU5449_A[6] = n5989;
         assign BU5449_A[7] = n5988;
         assign BU5449_A[8] = n5987;
         assign BU5449_A[9] = n5986;
         assign BU5449_A[10] = n5985;
         assign BU5449_A[11] = n5984;
         assign BU5449_A[12] = n5983;
         assign BU5449_A[13] = n5982;
         assign BU5449_A[14] = n5981;
         assign BU5449_A[15] = n5980;
         assign BU5449_A[16] = n5979;
         assign BU5449_A[17] = n5978;
         assign BU5449_A[18] = n5977;
         assign BU5449_A[19] = n5976;
         assign BU5449_A[20] = n5975;
         assign BU5449_A[21] = n5974;
      wire [21 : 0] BU5449_B;
         assign BU5449_B[0] = n6733;
         assign BU5449_B[1] = n6732;
         assign BU5449_B[2] = n6731;
         assign BU5449_B[3] = n6730;
         assign BU5449_B[4] = n6729;
         assign BU5449_B[5] = n6728;
         assign BU5449_B[6] = n6727;
         assign BU5449_B[7] = n6726;
         assign BU5449_B[8] = n6725;
         assign BU5449_B[9] = n6724;
         assign BU5449_B[10] = n6723;
         assign BU5449_B[11] = n6722;
         assign BU5449_B[12] = n6722;
         assign BU5449_B[13] = n6722;
         assign BU5449_B[14] = n6722;
         assign BU5449_B[15] = n6722;
         assign BU5449_B[16] = n6722;
         assign BU5449_B[17] = n6722;
         assign BU5449_B[18] = n6722;
         assign BU5449_B[19] = n6722;
         assign BU5449_B[20] = n6722;
         assign BU5449_B[21] = n6722;
      wire BU5449_ADD;
         assign BU5449_ADD = n31984;
      wire [21 : 0] BU5449_Q;
         assign n5973 = BU5449_Q[0];
         assign n5972 = BU5449_Q[1];
         assign n5971 = BU5449_Q[2];
         assign n5970 = BU5449_Q[3];
         assign n5969 = BU5449_Q[4];
         assign n5968 = BU5449_Q[5];
         assign n5967 = BU5449_Q[6];
         assign n5966 = BU5449_Q[7];
         assign n5965 = BU5449_Q[8];
         assign n5964 = BU5449_Q[9];
         assign n5963 = BU5449_Q[10];
         assign n5962 = BU5449_Q[11];
         assign n5961 = BU5449_Q[12];
         assign n5960 = BU5449_Q[13];
         assign n5959 = BU5449_Q[14];
         assign n5958 = BU5449_Q[15];
         assign n5957 = BU5449_Q[16];
         assign n5956 = BU5449_Q[17];
         assign n5955 = BU5449_Q[18];
         assign n5954 = BU5449_Q[19];
         assign n5953 = BU5449_Q[20];
         assign n5952 = BU5449_Q[21];
      wire BU5449_CLK;
         assign BU5449_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5449(
         .A(BU5449_A),
         .B(BU5449_B),
         .ADD(BU5449_ADD),
         .Q(BU5449_Q),
         .CLK(BU5449_CLK)
      );

      defparam BU5588.INIT = 'ha53c;
      wire BU5588_I0;
         assign BU5588_I0 = n6722;
      wire BU5588_I1;
         assign BU5588_I1 = n8188;
      wire BU5588_I2;
         assign BU5588_I2 = 1'b0;
      wire BU5588_I3;
         assign BU5588_I3 = n8187;
      wire BU5588_O;
         assign n31984 = BU5588_O;
      LUT4       BU5588(
         .I0(BU5588_I0),
         .I1(BU5588_I1),
         .I2(BU5588_I2),
         .I3(BU5588_I3),
         .O(BU5588_O)
      );

      wire [21 : 0] BU5593_A;
         assign BU5593_A[0] = n6743;
         assign BU5593_A[1] = n6742;
         assign BU5593_A[2] = n6741;
         assign BU5593_A[3] = n6740;
         assign BU5593_A[4] = n6739;
         assign BU5593_A[5] = n6738;
         assign BU5593_A[6] = n6737;
         assign BU5593_A[7] = n6736;
         assign BU5593_A[8] = n6735;
         assign BU5593_A[9] = n6734;
         assign BU5593_A[10] = n6733;
         assign BU5593_A[11] = n6732;
         assign BU5593_A[12] = n6731;
         assign BU5593_A[13] = n6730;
         assign BU5593_A[14] = n6729;
         assign BU5593_A[15] = n6728;
         assign BU5593_A[16] = n6727;
         assign BU5593_A[17] = n6726;
         assign BU5593_A[18] = n6725;
         assign BU5593_A[19] = n6724;
         assign BU5593_A[20] = n6723;
         assign BU5593_A[21] = n6722;
      wire [21 : 0] BU5593_B;
         assign BU5593_B[0] = n5985;
         assign BU5593_B[1] = n5984;
         assign BU5593_B[2] = n5983;
         assign BU5593_B[3] = n5982;
         assign BU5593_B[4] = n5981;
         assign BU5593_B[5] = n5980;
         assign BU5593_B[6] = n5979;
         assign BU5593_B[7] = n5978;
         assign BU5593_B[8] = n5977;
         assign BU5593_B[9] = n5976;
         assign BU5593_B[10] = n5975;
         assign BU5593_B[11] = n5974;
         assign BU5593_B[12] = n5974;
         assign BU5593_B[13] = n5974;
         assign BU5593_B[14] = n5974;
         assign BU5593_B[15] = n5974;
         assign BU5593_B[16] = n5974;
         assign BU5593_B[17] = n5974;
         assign BU5593_B[18] = n5974;
         assign BU5593_B[19] = n5974;
         assign BU5593_B[20] = n5974;
         assign BU5593_B[21] = n5974;
      wire BU5593_ADD;
         assign BU5593_ADD = n31985;
      wire [21 : 0] BU5593_Q;
         assign n6721 = BU5593_Q[0];
         assign n6720 = BU5593_Q[1];
         assign n6719 = BU5593_Q[2];
         assign n6718 = BU5593_Q[3];
         assign n6717 = BU5593_Q[4];
         assign n6716 = BU5593_Q[5];
         assign n6715 = BU5593_Q[6];
         assign n6714 = BU5593_Q[7];
         assign n6713 = BU5593_Q[8];
         assign n6712 = BU5593_Q[9];
         assign n6711 = BU5593_Q[10];
         assign n6710 = BU5593_Q[11];
         assign n6709 = BU5593_Q[12];
         assign n6708 = BU5593_Q[13];
         assign n6707 = BU5593_Q[14];
         assign n6706 = BU5593_Q[15];
         assign n6705 = BU5593_Q[16];
         assign n6704 = BU5593_Q[17];
         assign n6703 = BU5593_Q[18];
         assign n6702 = BU5593_Q[19];
         assign n6701 = BU5593_Q[20];
         assign n6700 = BU5593_Q[21];
      wire BU5593_CLK;
         assign BU5593_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5593(
         .A(BU5593_A),
         .B(BU5593_B),
         .ADD(BU5593_ADD),
         .Q(BU5593_Q),
         .CLK(BU5593_CLK)
      );

      defparam BU5732.INIT = 'ha3a3;
      wire BU5732_I0;
         assign BU5732_I0 = n6722;
      wire BU5732_I1;
         assign BU5732_I1 = n8188;
      wire BU5732_I2;
         assign BU5732_I2 = n8187;
      wire BU5732_I3;
         assign BU5732_I3 = 1'b0;
      wire BU5732_O;
         assign n31985 = BU5732_O;
      LUT4       BU5732(
         .I0(BU5732_I0),
         .I1(BU5732_I1),
         .I2(BU5732_I2),
         .I3(BU5732_I3),
         .O(BU5732_O)
      );

      wire [21 : 0] BU5739_A;
         assign BU5739_A[0] = n7491;
         assign BU5739_A[1] = n7490;
         assign BU5739_A[2] = n7489;
         assign BU5739_A[3] = n7488;
         assign BU5739_A[4] = n7487;
         assign BU5739_A[5] = n7486;
         assign BU5739_A[6] = n7485;
         assign BU5739_A[7] = n7484;
         assign BU5739_A[8] = n7483;
         assign BU5739_A[9] = n7482;
         assign BU5739_A[10] = n7481;
         assign BU5739_A[11] = n7480;
         assign BU5739_A[12] = n7479;
         assign BU5739_A[13] = n7478;
         assign BU5739_A[14] = n7477;
         assign BU5739_A[15] = n7476;
         assign BU5739_A[16] = n7475;
         assign BU5739_A[17] = n7474;
         assign BU5739_A[18] = n7473;
         assign BU5739_A[19] = n7472;
         assign BU5739_A[20] = n7471;
         assign BU5739_A[21] = n7470;
      wire [21 : 0] BU5739_B;
         assign BU5739_B[0] = 1'b1;
         assign BU5739_B[1] = 1'b1;
         assign BU5739_B[2] = 1'b0;
         assign BU5739_B[3] = 1'b0;
         assign BU5739_B[4] = 1'b0;
         assign BU5739_B[5] = 1'b1;
         assign BU5739_B[6] = 1'b0;
         assign BU5739_B[7] = 1'b1;
         assign BU5739_B[8] = 1'b0;
         assign BU5739_B[9] = 1'b0;
         assign BU5739_B[10] = 1'b0;
         assign BU5739_B[11] = 1'b0;
         assign BU5739_B[12] = 1'b0;
         assign BU5739_B[13] = 1'b0;
         assign BU5739_B[14] = 1'b0;
         assign BU5739_B[15] = 1'b0;
         assign BU5739_B[16] = 1'b0;
         assign BU5739_B[17] = 1'b0;
         assign BU5739_B[18] = 1'b0;
         assign BU5739_B[19] = 1'b0;
         assign BU5739_B[20] = 1'b0;
         assign BU5739_B[21] = 1'b0;
      wire BU5739_ADD;
         assign BU5739_ADD = n33400;
      wire [21 : 0] BU5739_S;
         assign n33377 = BU5739_S[21];
      wire [21 : 0] BU5739_Q;
         assign n7469 = BU5739_Q[0];
         assign n7468 = BU5739_Q[1];
         assign n7467 = BU5739_Q[2];
         assign n7466 = BU5739_Q[3];
         assign n7465 = BU5739_Q[4];
         assign n7464 = BU5739_Q[5];
         assign n7463 = BU5739_Q[6];
         assign n7462 = BU5739_Q[7];
         assign n7461 = BU5739_Q[8];
         assign n7460 = BU5739_Q[9];
         assign n7459 = BU5739_Q[10];
         assign n7458 = BU5739_Q[11];
         assign n7457 = BU5739_Q[12];
         assign n7456 = BU5739_Q[13];
         assign n7455 = BU5739_Q[14];
         assign n7454 = BU5739_Q[15];
         assign n7453 = BU5739_Q[16];
         assign n7452 = BU5739_Q[17];
         assign n7451 = BU5739_Q[18];
         assign n7450 = BU5739_Q[19];
         assign n7449 = BU5739_Q[20];
         assign n7448 = BU5739_Q[21];
      wire BU5739_CLK;
         assign BU5739_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5739(
         .A(BU5739_A),
         .B(BU5739_B),
         .ADD(BU5739_ADD),
         .S(BU5739_S),
         .Q(BU5739_Q),
         .CLK(BU5739_CLK)
      );

      defparam BU5878.INIT = 'h5c5c;
      wire BU5878_I0;
         assign BU5878_I0 = n6722;
      wire BU5878_I1;
         assign BU5878_I1 = n8188;
      wire BU5878_I2;
         assign BU5878_I2 = n8187;
      wire BU5878_I3;
         assign BU5878_I3 = 1'b0;
      wire BU5878_O;
         assign n33400 = BU5878_O;
      LUT4       BU5878(
         .I0(BU5878_I0),
         .I1(BU5878_I1),
         .I2(BU5878_I2),
         .I3(BU5878_I3),
         .O(BU5878_O)
      );

      wire [0 : 0] BU5883_D;
         assign BU5883_D[0] = n33377;
      wire [0 : 0] BU5883_Q;
         assign n8185 = BU5883_Q[0];
      wire BU5883_CLK;
         assign BU5883_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5883(
         .D(BU5883_D),
         .Q(BU5883_Q),
         .CLK(BU5883_CLK)
      );

      wire [0 : 0] BU5892_D;
         assign BU5892_D[0] = n8087;
      wire [0 : 0] BU5892_Q;
         assign n8084 = BU5892_Q[0];
      wire BU5892_CLK;
         assign BU5892_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5892(
         .D(BU5892_D),
         .Q(BU5892_Q),
         .CLK(BU5892_CLK)
      );

      wire [0 : 0] BU5899_D;
         assign BU5899_D[0] = n8086;
      wire [0 : 0] BU5899_Q;
         assign n8083 = BU5899_Q[0];
      wire BU5899_CLK;
         assign BU5899_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5899(
         .D(BU5899_D),
         .Q(BU5899_Q),
         .CLK(BU5899_CLK)
      );

      wire [0 : 0] BU5906_D;
         assign BU5906_D[0] = n8085;
      wire [0 : 0] BU5906_Q;
         assign n8082 = BU5906_Q[0];
      wire BU5906_CLK;
         assign BU5906_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5906(
         .D(BU5906_D),
         .Q(BU5906_Q),
         .CLK(BU5906_CLK)
      );

      wire [0 : 0] BU5913_D;
         assign BU5913_D[0] = n8187;
      wire [0 : 0] BU5913_Q;
         assign n8184 = BU5913_Q[0];
      wire BU5913_CLK;
         assign BU5913_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU5913(
         .D(BU5913_D),
         .Q(BU5913_Q),
         .CLK(BU5913_CLK)
      );

      wire [21 : 0] BU5929_A;
         assign BU5929_A[0] = n5973;
         assign BU5929_A[1] = n5972;
         assign BU5929_A[2] = n5971;
         assign BU5929_A[3] = n5970;
         assign BU5929_A[4] = n5969;
         assign BU5929_A[5] = n5968;
         assign BU5929_A[6] = n5967;
         assign BU5929_A[7] = n5966;
         assign BU5929_A[8] = n5965;
         assign BU5929_A[9] = n5964;
         assign BU5929_A[10] = n5963;
         assign BU5929_A[11] = n5962;
         assign BU5929_A[12] = n5961;
         assign BU5929_A[13] = n5960;
         assign BU5929_A[14] = n5959;
         assign BU5929_A[15] = n5958;
         assign BU5929_A[16] = n5957;
         assign BU5929_A[17] = n5956;
         assign BU5929_A[18] = n5955;
         assign BU5929_A[19] = n5954;
         assign BU5929_A[20] = n5953;
         assign BU5929_A[21] = n5952;
      wire [21 : 0] BU5929_B;
         assign BU5929_B[0] = n6710;
         assign BU5929_B[1] = n6709;
         assign BU5929_B[2] = n6708;
         assign BU5929_B[3] = n6707;
         assign BU5929_B[4] = n6706;
         assign BU5929_B[5] = n6705;
         assign BU5929_B[6] = n6704;
         assign BU5929_B[7] = n6703;
         assign BU5929_B[8] = n6702;
         assign BU5929_B[9] = n6701;
         assign BU5929_B[10] = n6700;
         assign BU5929_B[11] = n6700;
         assign BU5929_B[12] = n6700;
         assign BU5929_B[13] = n6700;
         assign BU5929_B[14] = n6700;
         assign BU5929_B[15] = n6700;
         assign BU5929_B[16] = n6700;
         assign BU5929_B[17] = n6700;
         assign BU5929_B[18] = n6700;
         assign BU5929_B[19] = n6700;
         assign BU5929_B[20] = n6700;
         assign BU5929_B[21] = n6700;
      wire BU5929_ADD;
         assign BU5929_ADD = n34558;
      wire [21 : 0] BU5929_Q;
         assign n5951 = BU5929_Q[0];
         assign n5950 = BU5929_Q[1];
         assign n5949 = BU5929_Q[2];
         assign n5948 = BU5929_Q[3];
         assign n5947 = BU5929_Q[4];
         assign n5946 = BU5929_Q[5];
         assign n5945 = BU5929_Q[6];
         assign n5944 = BU5929_Q[7];
         assign n5943 = BU5929_Q[8];
         assign n5942 = BU5929_Q[9];
         assign n5941 = BU5929_Q[10];
         assign n5940 = BU5929_Q[11];
         assign n5939 = BU5929_Q[12];
         assign n5938 = BU5929_Q[13];
         assign n5937 = BU5929_Q[14];
         assign n5936 = BU5929_Q[15];
         assign n5935 = BU5929_Q[16];
         assign n5934 = BU5929_Q[17];
         assign n5933 = BU5929_Q[18];
         assign n5932 = BU5929_Q[19];
         assign n5931 = BU5929_Q[20];
         assign n5930 = BU5929_Q[21];
      wire BU5929_CLK;
         assign BU5929_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5929(
         .A(BU5929_A),
         .B(BU5929_B),
         .ADD(BU5929_ADD),
         .Q(BU5929_Q),
         .CLK(BU5929_CLK)
      );

      defparam BU6068.INIT = 'ha53c;
      wire BU6068_I0;
         assign BU6068_I0 = n6700;
      wire BU6068_I1;
         assign BU6068_I1 = n8185;
      wire BU6068_I2;
         assign BU6068_I2 = 1'b0;
      wire BU6068_I3;
         assign BU6068_I3 = n8184;
      wire BU6068_O;
         assign n34558 = BU6068_O;
      LUT4       BU6068(
         .I0(BU6068_I0),
         .I1(BU6068_I1),
         .I2(BU6068_I2),
         .I3(BU6068_I3),
         .O(BU6068_O)
      );

      wire [21 : 0] BU6073_A;
         assign BU6073_A[0] = n6721;
         assign BU6073_A[1] = n6720;
         assign BU6073_A[2] = n6719;
         assign BU6073_A[3] = n6718;
         assign BU6073_A[4] = n6717;
         assign BU6073_A[5] = n6716;
         assign BU6073_A[6] = n6715;
         assign BU6073_A[7] = n6714;
         assign BU6073_A[8] = n6713;
         assign BU6073_A[9] = n6712;
         assign BU6073_A[10] = n6711;
         assign BU6073_A[11] = n6710;
         assign BU6073_A[12] = n6709;
         assign BU6073_A[13] = n6708;
         assign BU6073_A[14] = n6707;
         assign BU6073_A[15] = n6706;
         assign BU6073_A[16] = n6705;
         assign BU6073_A[17] = n6704;
         assign BU6073_A[18] = n6703;
         assign BU6073_A[19] = n6702;
         assign BU6073_A[20] = n6701;
         assign BU6073_A[21] = n6700;
      wire [21 : 0] BU6073_B;
         assign BU6073_B[0] = n5962;
         assign BU6073_B[1] = n5961;
         assign BU6073_B[2] = n5960;
         assign BU6073_B[3] = n5959;
         assign BU6073_B[4] = n5958;
         assign BU6073_B[5] = n5957;
         assign BU6073_B[6] = n5956;
         assign BU6073_B[7] = n5955;
         assign BU6073_B[8] = n5954;
         assign BU6073_B[9] = n5953;
         assign BU6073_B[10] = n5952;
         assign BU6073_B[11] = n5952;
         assign BU6073_B[12] = n5952;
         assign BU6073_B[13] = n5952;
         assign BU6073_B[14] = n5952;
         assign BU6073_B[15] = n5952;
         assign BU6073_B[16] = n5952;
         assign BU6073_B[17] = n5952;
         assign BU6073_B[18] = n5952;
         assign BU6073_B[19] = n5952;
         assign BU6073_B[20] = n5952;
         assign BU6073_B[21] = n5952;
      wire BU6073_ADD;
         assign BU6073_ADD = n34559;
      wire [21 : 0] BU6073_Q;
         assign n6699 = BU6073_Q[0];
         assign n6698 = BU6073_Q[1];
         assign n6697 = BU6073_Q[2];
         assign n6696 = BU6073_Q[3];
         assign n6695 = BU6073_Q[4];
         assign n6694 = BU6073_Q[5];
         assign n6693 = BU6073_Q[6];
         assign n6692 = BU6073_Q[7];
         assign n6691 = BU6073_Q[8];
         assign n6690 = BU6073_Q[9];
         assign n6689 = BU6073_Q[10];
         assign n6688 = BU6073_Q[11];
         assign n6687 = BU6073_Q[12];
         assign n6686 = BU6073_Q[13];
         assign n6685 = BU6073_Q[14];
         assign n6684 = BU6073_Q[15];
         assign n6683 = BU6073_Q[16];
         assign n6682 = BU6073_Q[17];
         assign n6681 = BU6073_Q[18];
         assign n6680 = BU6073_Q[19];
         assign n6679 = BU6073_Q[20];
         assign n6678 = BU6073_Q[21];
      wire BU6073_CLK;
         assign BU6073_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6073(
         .A(BU6073_A),
         .B(BU6073_B),
         .ADD(BU6073_ADD),
         .Q(BU6073_Q),
         .CLK(BU6073_CLK)
      );

      defparam BU6212.INIT = 'ha3a3;
      wire BU6212_I0;
         assign BU6212_I0 = n6700;
      wire BU6212_I1;
         assign BU6212_I1 = n8185;
      wire BU6212_I2;
         assign BU6212_I2 = n8184;
      wire BU6212_I3;
         assign BU6212_I3 = 1'b0;
      wire BU6212_O;
         assign n34559 = BU6212_O;
      LUT4       BU6212(
         .I0(BU6212_I0),
         .I1(BU6212_I1),
         .I2(BU6212_I2),
         .I3(BU6212_I3),
         .O(BU6212_O)
      );

      wire [21 : 0] BU6219_A;
         assign BU6219_A[0] = n7469;
         assign BU6219_A[1] = n7468;
         assign BU6219_A[2] = n7467;
         assign BU6219_A[3] = n7466;
         assign BU6219_A[4] = n7465;
         assign BU6219_A[5] = n7464;
         assign BU6219_A[6] = n7463;
         assign BU6219_A[7] = n7462;
         assign BU6219_A[8] = n7461;
         assign BU6219_A[9] = n7460;
         assign BU6219_A[10] = n7459;
         assign BU6219_A[11] = n7458;
         assign BU6219_A[12] = n7457;
         assign BU6219_A[13] = n7456;
         assign BU6219_A[14] = n7455;
         assign BU6219_A[15] = n7454;
         assign BU6219_A[16] = n7453;
         assign BU6219_A[17] = n7452;
         assign BU6219_A[18] = n7451;
         assign BU6219_A[19] = n7450;
         assign BU6219_A[20] = n7449;
         assign BU6219_A[21] = n7448;
      wire [21 : 0] BU6219_B;
         assign BU6219_B[0] = 1'b1;
         assign BU6219_B[1] = 1'b0;
         assign BU6219_B[2] = 1'b0;
         assign BU6219_B[3] = 1'b0;
         assign BU6219_B[4] = 1'b1;
         assign BU6219_B[5] = 1'b0;
         assign BU6219_B[6] = 1'b1;
         assign BU6219_B[7] = 1'b0;
         assign BU6219_B[8] = 1'b0;
         assign BU6219_B[9] = 1'b0;
         assign BU6219_B[10] = 1'b0;
         assign BU6219_B[11] = 1'b0;
         assign BU6219_B[12] = 1'b0;
         assign BU6219_B[13] = 1'b0;
         assign BU6219_B[14] = 1'b0;
         assign BU6219_B[15] = 1'b0;
         assign BU6219_B[16] = 1'b0;
         assign BU6219_B[17] = 1'b0;
         assign BU6219_B[18] = 1'b0;
         assign BU6219_B[19] = 1'b0;
         assign BU6219_B[20] = 1'b0;
         assign BU6219_B[21] = 1'b0;
      wire BU6219_ADD;
         assign BU6219_ADD = n35974;
      wire [21 : 0] BU6219_S;
         assign n35951 = BU6219_S[21];
      wire [21 : 0] BU6219_Q;
         assign n7447 = BU6219_Q[0];
         assign n7446 = BU6219_Q[1];
         assign n7445 = BU6219_Q[2];
         assign n7444 = BU6219_Q[3];
         assign n7443 = BU6219_Q[4];
         assign n7442 = BU6219_Q[5];
         assign n7441 = BU6219_Q[6];
         assign n7440 = BU6219_Q[7];
         assign n7439 = BU6219_Q[8];
         assign n7438 = BU6219_Q[9];
         assign n7437 = BU6219_Q[10];
         assign n7436 = BU6219_Q[11];
         assign n7435 = BU6219_Q[12];
         assign n7434 = BU6219_Q[13];
         assign n7433 = BU6219_Q[14];
         assign n7432 = BU6219_Q[15];
         assign n7431 = BU6219_Q[16];
         assign n7430 = BU6219_Q[17];
         assign n7429 = BU6219_Q[18];
         assign n7428 = BU6219_Q[19];
         assign n7427 = BU6219_Q[20];
         assign n7426 = BU6219_Q[21];
      wire BU6219_CLK;
         assign BU6219_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6219(
         .A(BU6219_A),
         .B(BU6219_B),
         .ADD(BU6219_ADD),
         .S(BU6219_S),
         .Q(BU6219_Q),
         .CLK(BU6219_CLK)
      );

      defparam BU6358.INIT = 'h5c5c;
      wire BU6358_I0;
         assign BU6358_I0 = n6700;
      wire BU6358_I1;
         assign BU6358_I1 = n8185;
      wire BU6358_I2;
         assign BU6358_I2 = n8184;
      wire BU6358_I3;
         assign BU6358_I3 = 1'b0;
      wire BU6358_O;
         assign n35974 = BU6358_O;
      LUT4       BU6358(
         .I0(BU6358_I0),
         .I1(BU6358_I1),
         .I2(BU6358_I2),
         .I3(BU6358_I3),
         .O(BU6358_O)
      );

      wire [0 : 0] BU6363_D;
         assign BU6363_D[0] = n35951;
      wire [0 : 0] BU6363_Q;
         assign n8182 = BU6363_Q[0];
      wire BU6363_CLK;
         assign BU6363_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6363(
         .D(BU6363_D),
         .Q(BU6363_Q),
         .CLK(BU6363_CLK)
      );

      wire [0 : 0] BU6372_D;
         assign BU6372_D[0] = n8084;
      wire [0 : 0] BU6372_Q;
         assign n8081 = BU6372_Q[0];
      wire BU6372_CLK;
         assign BU6372_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6372(
         .D(BU6372_D),
         .Q(BU6372_Q),
         .CLK(BU6372_CLK)
      );

      wire [0 : 0] BU6379_D;
         assign BU6379_D[0] = n8083;
      wire [0 : 0] BU6379_Q;
         assign n8080 = BU6379_Q[0];
      wire BU6379_CLK;
         assign BU6379_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6379(
         .D(BU6379_D),
         .Q(BU6379_Q),
         .CLK(BU6379_CLK)
      );

      wire [0 : 0] BU6386_D;
         assign BU6386_D[0] = n8082;
      wire [0 : 0] BU6386_Q;
         assign n8079 = BU6386_Q[0];
      wire BU6386_CLK;
         assign BU6386_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6386(
         .D(BU6386_D),
         .Q(BU6386_Q),
         .CLK(BU6386_CLK)
      );

      wire [0 : 0] BU6393_D;
         assign BU6393_D[0] = n8184;
      wire [0 : 0] BU6393_Q;
         assign n8181 = BU6393_Q[0];
      wire BU6393_CLK;
         assign BU6393_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6393(
         .D(BU6393_D),
         .Q(BU6393_Q),
         .CLK(BU6393_CLK)
      );

      wire [21 : 0] BU6409_A;
         assign BU6409_A[0] = n5951;
         assign BU6409_A[1] = n5950;
         assign BU6409_A[2] = n5949;
         assign BU6409_A[3] = n5948;
         assign BU6409_A[4] = n5947;
         assign BU6409_A[5] = n5946;
         assign BU6409_A[6] = n5945;
         assign BU6409_A[7] = n5944;
         assign BU6409_A[8] = n5943;
         assign BU6409_A[9] = n5942;
         assign BU6409_A[10] = n5941;
         assign BU6409_A[11] = n5940;
         assign BU6409_A[12] = n5939;
         assign BU6409_A[13] = n5938;
         assign BU6409_A[14] = n5937;
         assign BU6409_A[15] = n5936;
         assign BU6409_A[16] = n5935;
         assign BU6409_A[17] = n5934;
         assign BU6409_A[18] = n5933;
         assign BU6409_A[19] = n5932;
         assign BU6409_A[20] = n5931;
         assign BU6409_A[21] = n5930;
      wire [21 : 0] BU6409_B;
         assign BU6409_B[0] = n6687;
         assign BU6409_B[1] = n6686;
         assign BU6409_B[2] = n6685;
         assign BU6409_B[3] = n6684;
         assign BU6409_B[4] = n6683;
         assign BU6409_B[5] = n6682;
         assign BU6409_B[6] = n6681;
         assign BU6409_B[7] = n6680;
         assign BU6409_B[8] = n6679;
         assign BU6409_B[9] = n6678;
         assign BU6409_B[10] = n6678;
         assign BU6409_B[11] = n6678;
         assign BU6409_B[12] = n6678;
         assign BU6409_B[13] = n6678;
         assign BU6409_B[14] = n6678;
         assign BU6409_B[15] = n6678;
         assign BU6409_B[16] = n6678;
         assign BU6409_B[17] = n6678;
         assign BU6409_B[18] = n6678;
         assign BU6409_B[19] = n6678;
         assign BU6409_B[20] = n6678;
         assign BU6409_B[21] = n6678;
      wire BU6409_ADD;
         assign BU6409_ADD = n37132;
      wire [21 : 0] BU6409_Q;
         assign n5929 = BU6409_Q[0];
         assign n5928 = BU6409_Q[1];
         assign n5927 = BU6409_Q[2];
         assign n5926 = BU6409_Q[3];
         assign n5925 = BU6409_Q[4];
         assign n5924 = BU6409_Q[5];
         assign n5923 = BU6409_Q[6];
         assign n5922 = BU6409_Q[7];
         assign n5921 = BU6409_Q[8];
         assign n5920 = BU6409_Q[9];
         assign n5919 = BU6409_Q[10];
         assign n5918 = BU6409_Q[11];
         assign n5917 = BU6409_Q[12];
         assign n5916 = BU6409_Q[13];
         assign n5915 = BU6409_Q[14];
         assign n5914 = BU6409_Q[15];
         assign n5913 = BU6409_Q[16];
         assign n5912 = BU6409_Q[17];
         assign n5911 = BU6409_Q[18];
         assign n5910 = BU6409_Q[19];
         assign n5909 = BU6409_Q[20];
         assign n5908 = BU6409_Q[21];
      wire BU6409_CLK;
         assign BU6409_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6409(
         .A(BU6409_A),
         .B(BU6409_B),
         .ADD(BU6409_ADD),
         .Q(BU6409_Q),
         .CLK(BU6409_CLK)
      );

      defparam BU6548.INIT = 'ha53c;
      wire BU6548_I0;
         assign BU6548_I0 = n6678;
      wire BU6548_I1;
         assign BU6548_I1 = n8182;
      wire BU6548_I2;
         assign BU6548_I2 = 1'b0;
      wire BU6548_I3;
         assign BU6548_I3 = n8181;
      wire BU6548_O;
         assign n37132 = BU6548_O;
      LUT4       BU6548(
         .I0(BU6548_I0),
         .I1(BU6548_I1),
         .I2(BU6548_I2),
         .I3(BU6548_I3),
         .O(BU6548_O)
      );

      wire [21 : 0] BU6553_A;
         assign BU6553_A[0] = n6699;
         assign BU6553_A[1] = n6698;
         assign BU6553_A[2] = n6697;
         assign BU6553_A[3] = n6696;
         assign BU6553_A[4] = n6695;
         assign BU6553_A[5] = n6694;
         assign BU6553_A[6] = n6693;
         assign BU6553_A[7] = n6692;
         assign BU6553_A[8] = n6691;
         assign BU6553_A[9] = n6690;
         assign BU6553_A[10] = n6689;
         assign BU6553_A[11] = n6688;
         assign BU6553_A[12] = n6687;
         assign BU6553_A[13] = n6686;
         assign BU6553_A[14] = n6685;
         assign BU6553_A[15] = n6684;
         assign BU6553_A[16] = n6683;
         assign BU6553_A[17] = n6682;
         assign BU6553_A[18] = n6681;
         assign BU6553_A[19] = n6680;
         assign BU6553_A[20] = n6679;
         assign BU6553_A[21] = n6678;
      wire [21 : 0] BU6553_B;
         assign BU6553_B[0] = n5939;
         assign BU6553_B[1] = n5938;
         assign BU6553_B[2] = n5937;
         assign BU6553_B[3] = n5936;
         assign BU6553_B[4] = n5935;
         assign BU6553_B[5] = n5934;
         assign BU6553_B[6] = n5933;
         assign BU6553_B[7] = n5932;
         assign BU6553_B[8] = n5931;
         assign BU6553_B[9] = n5930;
         assign BU6553_B[10] = n5930;
         assign BU6553_B[11] = n5930;
         assign BU6553_B[12] = n5930;
         assign BU6553_B[13] = n5930;
         assign BU6553_B[14] = n5930;
         assign BU6553_B[15] = n5930;
         assign BU6553_B[16] = n5930;
         assign BU6553_B[17] = n5930;
         assign BU6553_B[18] = n5930;
         assign BU6553_B[19] = n5930;
         assign BU6553_B[20] = n5930;
         assign BU6553_B[21] = n5930;
      wire BU6553_ADD;
         assign BU6553_ADD = n37133;
      wire [21 : 0] BU6553_Q;
         assign n6677 = BU6553_Q[0];
         assign n6676 = BU6553_Q[1];
         assign n6675 = BU6553_Q[2];
         assign n6674 = BU6553_Q[3];
         assign n6673 = BU6553_Q[4];
         assign n6672 = BU6553_Q[5];
         assign n6671 = BU6553_Q[6];
         assign n6670 = BU6553_Q[7];
         assign n6669 = BU6553_Q[8];
         assign n6668 = BU6553_Q[9];
         assign n6667 = BU6553_Q[10];
         assign n6666 = BU6553_Q[11];
         assign n6665 = BU6553_Q[12];
         assign n6664 = BU6553_Q[13];
         assign n6663 = BU6553_Q[14];
         assign n6662 = BU6553_Q[15];
         assign n6661 = BU6553_Q[16];
         assign n6660 = BU6553_Q[17];
         assign n6659 = BU6553_Q[18];
         assign n6658 = BU6553_Q[19];
         assign n6657 = BU6553_Q[20];
         assign n6656 = BU6553_Q[21];
      wire BU6553_CLK;
         assign BU6553_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6553(
         .A(BU6553_A),
         .B(BU6553_B),
         .ADD(BU6553_ADD),
         .Q(BU6553_Q),
         .CLK(BU6553_CLK)
      );

      defparam BU6692.INIT = 'ha3a3;
      wire BU6692_I0;
         assign BU6692_I0 = n6678;
      wire BU6692_I1;
         assign BU6692_I1 = n8182;
      wire BU6692_I2;
         assign BU6692_I2 = n8181;
      wire BU6692_I3;
         assign BU6692_I3 = 1'b0;
      wire BU6692_O;
         assign n37133 = BU6692_O;
      LUT4       BU6692(
         .I0(BU6692_I0),
         .I1(BU6692_I1),
         .I2(BU6692_I2),
         .I3(BU6692_I3),
         .O(BU6692_O)
      );

      wire [21 : 0] BU6699_A;
         assign BU6699_A[0] = n7447;
         assign BU6699_A[1] = n7446;
         assign BU6699_A[2] = n7445;
         assign BU6699_A[3] = n7444;
         assign BU6699_A[4] = n7443;
         assign BU6699_A[5] = n7442;
         assign BU6699_A[6] = n7441;
         assign BU6699_A[7] = n7440;
         assign BU6699_A[8] = n7439;
         assign BU6699_A[9] = n7438;
         assign BU6699_A[10] = n7437;
         assign BU6699_A[11] = n7436;
         assign BU6699_A[12] = n7435;
         assign BU6699_A[13] = n7434;
         assign BU6699_A[14] = n7433;
         assign BU6699_A[15] = n7432;
         assign BU6699_A[16] = n7431;
         assign BU6699_A[17] = n7430;
         assign BU6699_A[18] = n7429;
         assign BU6699_A[19] = n7428;
         assign BU6699_A[20] = n7427;
         assign BU6699_A[21] = n7426;
      wire [21 : 0] BU6699_B;
         assign BU6699_B[0] = 1'b1;
         assign BU6699_B[1] = 1'b0;
         assign BU6699_B[2] = 1'b0;
         assign BU6699_B[3] = 1'b1;
         assign BU6699_B[4] = 1'b0;
         assign BU6699_B[5] = 1'b1;
         assign BU6699_B[6] = 1'b0;
         assign BU6699_B[7] = 1'b0;
         assign BU6699_B[8] = 1'b0;
         assign BU6699_B[9] = 1'b0;
         assign BU6699_B[10] = 1'b0;
         assign BU6699_B[11] = 1'b0;
         assign BU6699_B[12] = 1'b0;
         assign BU6699_B[13] = 1'b0;
         assign BU6699_B[14] = 1'b0;
         assign BU6699_B[15] = 1'b0;
         assign BU6699_B[16] = 1'b0;
         assign BU6699_B[17] = 1'b0;
         assign BU6699_B[18] = 1'b0;
         assign BU6699_B[19] = 1'b0;
         assign BU6699_B[20] = 1'b0;
         assign BU6699_B[21] = 1'b0;
      wire BU6699_ADD;
         assign BU6699_ADD = n38548;
      wire [21 : 0] BU6699_S;
         assign n38525 = BU6699_S[21];
      wire [21 : 0] BU6699_Q;
         assign n7425 = BU6699_Q[0];
         assign n7424 = BU6699_Q[1];
         assign n7423 = BU6699_Q[2];
         assign n7422 = BU6699_Q[3];
         assign n7421 = BU6699_Q[4];
         assign n7420 = BU6699_Q[5];
         assign n7419 = BU6699_Q[6];
         assign n7418 = BU6699_Q[7];
         assign n7417 = BU6699_Q[8];
         assign n7416 = BU6699_Q[9];
         assign n7415 = BU6699_Q[10];
         assign n7414 = BU6699_Q[11];
         assign n7413 = BU6699_Q[12];
         assign n7412 = BU6699_Q[13];
         assign n7411 = BU6699_Q[14];
         assign n7410 = BU6699_Q[15];
         assign n7409 = BU6699_Q[16];
         assign n7408 = BU6699_Q[17];
         assign n7407 = BU6699_Q[18];
         assign n7406 = BU6699_Q[19];
         assign n7405 = BU6699_Q[20];
         assign n7404 = BU6699_Q[21];
      wire BU6699_CLK;
         assign BU6699_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6699(
         .A(BU6699_A),
         .B(BU6699_B),
         .ADD(BU6699_ADD),
         .S(BU6699_S),
         .Q(BU6699_Q),
         .CLK(BU6699_CLK)
      );

      defparam BU6838.INIT = 'h5c5c;
      wire BU6838_I0;
         assign BU6838_I0 = n6678;
      wire BU6838_I1;
         assign BU6838_I1 = n8182;
      wire BU6838_I2;
         assign BU6838_I2 = n8181;
      wire BU6838_I3;
         assign BU6838_I3 = 1'b0;
      wire BU6838_O;
         assign n38548 = BU6838_O;
      LUT4       BU6838(
         .I0(BU6838_I0),
         .I1(BU6838_I1),
         .I2(BU6838_I2),
         .I3(BU6838_I3),
         .O(BU6838_O)
      );

      wire [0 : 0] BU6843_D;
         assign BU6843_D[0] = n38525;
      wire [0 : 0] BU6843_Q;
         assign n8179 = BU6843_Q[0];
      wire BU6843_CLK;
         assign BU6843_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6843(
         .D(BU6843_D),
         .Q(BU6843_Q),
         .CLK(BU6843_CLK)
      );

      wire [0 : 0] BU6852_D;
         assign BU6852_D[0] = n8081;
      wire [0 : 0] BU6852_Q;
         assign n8078 = BU6852_Q[0];
      wire BU6852_CLK;
         assign BU6852_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6852(
         .D(BU6852_D),
         .Q(BU6852_Q),
         .CLK(BU6852_CLK)
      );

      wire [0 : 0] BU6859_D;
         assign BU6859_D[0] = n8080;
      wire [0 : 0] BU6859_Q;
         assign n8077 = BU6859_Q[0];
      wire BU6859_CLK;
         assign BU6859_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6859(
         .D(BU6859_D),
         .Q(BU6859_Q),
         .CLK(BU6859_CLK)
      );

      wire [0 : 0] BU6866_D;
         assign BU6866_D[0] = n8079;
      wire [0 : 0] BU6866_Q;
         assign n8076 = BU6866_Q[0];
      wire BU6866_CLK;
         assign BU6866_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6866(
         .D(BU6866_D),
         .Q(BU6866_Q),
         .CLK(BU6866_CLK)
      );

      wire [0 : 0] BU6873_D;
         assign BU6873_D[0] = n8181;
      wire [0 : 0] BU6873_Q;
         assign n8178 = BU6873_Q[0];
      wire BU6873_CLK;
         assign BU6873_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU6873(
         .D(BU6873_D),
         .Q(BU6873_Q),
         .CLK(BU6873_CLK)
      );

      wire [21 : 0] BU6889_A;
         assign BU6889_A[0] = n5929;
         assign BU6889_A[1] = n5928;
         assign BU6889_A[2] = n5927;
         assign BU6889_A[3] = n5926;
         assign BU6889_A[4] = n5925;
         assign BU6889_A[5] = n5924;
         assign BU6889_A[6] = n5923;
         assign BU6889_A[7] = n5922;
         assign BU6889_A[8] = n5921;
         assign BU6889_A[9] = n5920;
         assign BU6889_A[10] = n5919;
         assign BU6889_A[11] = n5918;
         assign BU6889_A[12] = n5917;
         assign BU6889_A[13] = n5916;
         assign BU6889_A[14] = n5915;
         assign BU6889_A[15] = n5914;
         assign BU6889_A[16] = n5913;
         assign BU6889_A[17] = n5912;
         assign BU6889_A[18] = n5911;
         assign BU6889_A[19] = n5910;
         assign BU6889_A[20] = n5909;
         assign BU6889_A[21] = n5908;
      wire [21 : 0] BU6889_B;
         assign BU6889_B[0] = n6664;
         assign BU6889_B[1] = n6663;
         assign BU6889_B[2] = n6662;
         assign BU6889_B[3] = n6661;
         assign BU6889_B[4] = n6660;
         assign BU6889_B[5] = n6659;
         assign BU6889_B[6] = n6658;
         assign BU6889_B[7] = n6657;
         assign BU6889_B[8] = n6656;
         assign BU6889_B[9] = n6656;
         assign BU6889_B[10] = n6656;
         assign BU6889_B[11] = n6656;
         assign BU6889_B[12] = n6656;
         assign BU6889_B[13] = n6656;
         assign BU6889_B[14] = n6656;
         assign BU6889_B[15] = n6656;
         assign BU6889_B[16] = n6656;
         assign BU6889_B[17] = n6656;
         assign BU6889_B[18] = n6656;
         assign BU6889_B[19] = n6656;
         assign BU6889_B[20] = n6656;
         assign BU6889_B[21] = n6656;
      wire BU6889_ADD;
         assign BU6889_ADD = n39706;
      wire [21 : 0] BU6889_Q;
         assign n5907 = BU6889_Q[0];
         assign n5906 = BU6889_Q[1];
         assign n5905 = BU6889_Q[2];
         assign n5904 = BU6889_Q[3];
         assign n5903 = BU6889_Q[4];
         assign n5902 = BU6889_Q[5];
         assign n5901 = BU6889_Q[6];
         assign n5900 = BU6889_Q[7];
         assign n5899 = BU6889_Q[8];
         assign n5898 = BU6889_Q[9];
         assign n5897 = BU6889_Q[10];
         assign n5896 = BU6889_Q[11];
         assign n5895 = BU6889_Q[12];
         assign n5894 = BU6889_Q[13];
         assign n5893 = BU6889_Q[14];
         assign n5892 = BU6889_Q[15];
         assign n5891 = BU6889_Q[16];
         assign n5890 = BU6889_Q[17];
         assign n5889 = BU6889_Q[18];
         assign n5888 = BU6889_Q[19];
         assign n5887 = BU6889_Q[20];
         assign n5886 = BU6889_Q[21];
      wire BU6889_CLK;
         assign BU6889_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6889(
         .A(BU6889_A),
         .B(BU6889_B),
         .ADD(BU6889_ADD),
         .Q(BU6889_Q),
         .CLK(BU6889_CLK)
      );

      defparam BU7028.INIT = 'ha53c;
      wire BU7028_I0;
         assign BU7028_I0 = n6656;
      wire BU7028_I1;
         assign BU7028_I1 = n8179;
      wire BU7028_I2;
         assign BU7028_I2 = 1'b0;
      wire BU7028_I3;
         assign BU7028_I3 = n8178;
      wire BU7028_O;
         assign n39706 = BU7028_O;
      LUT4       BU7028(
         .I0(BU7028_I0),
         .I1(BU7028_I1),
         .I2(BU7028_I2),
         .I3(BU7028_I3),
         .O(BU7028_O)
      );

      wire [21 : 0] BU7033_A;
         assign BU7033_A[0] = n6677;
         assign BU7033_A[1] = n6676;
         assign BU7033_A[2] = n6675;
         assign BU7033_A[3] = n6674;
         assign BU7033_A[4] = n6673;
         assign BU7033_A[5] = n6672;
         assign BU7033_A[6] = n6671;
         assign BU7033_A[7] = n6670;
         assign BU7033_A[8] = n6669;
         assign BU7033_A[9] = n6668;
         assign BU7033_A[10] = n6667;
         assign BU7033_A[11] = n6666;
         assign BU7033_A[12] = n6665;
         assign BU7033_A[13] = n6664;
         assign BU7033_A[14] = n6663;
         assign BU7033_A[15] = n6662;
         assign BU7033_A[16] = n6661;
         assign BU7033_A[17] = n6660;
         assign BU7033_A[18] = n6659;
         assign BU7033_A[19] = n6658;
         assign BU7033_A[20] = n6657;
         assign BU7033_A[21] = n6656;
      wire [21 : 0] BU7033_B;
         assign BU7033_B[0] = n5916;
         assign BU7033_B[1] = n5915;
         assign BU7033_B[2] = n5914;
         assign BU7033_B[3] = n5913;
         assign BU7033_B[4] = n5912;
         assign BU7033_B[5] = n5911;
         assign BU7033_B[6] = n5910;
         assign BU7033_B[7] = n5909;
         assign BU7033_B[8] = n5908;
         assign BU7033_B[9] = n5908;
         assign BU7033_B[10] = n5908;
         assign BU7033_B[11] = n5908;
         assign BU7033_B[12] = n5908;
         assign BU7033_B[13] = n5908;
         assign BU7033_B[14] = n5908;
         assign BU7033_B[15] = n5908;
         assign BU7033_B[16] = n5908;
         assign BU7033_B[17] = n5908;
         assign BU7033_B[18] = n5908;
         assign BU7033_B[19] = n5908;
         assign BU7033_B[20] = n5908;
         assign BU7033_B[21] = n5908;
      wire BU7033_ADD;
         assign BU7033_ADD = n39707;
      wire [21 : 0] BU7033_Q;
         assign n6655 = BU7033_Q[0];
         assign n6654 = BU7033_Q[1];
         assign n6653 = BU7033_Q[2];
         assign n6652 = BU7033_Q[3];
         assign n6651 = BU7033_Q[4];
         assign n6650 = BU7033_Q[5];
         assign n6649 = BU7033_Q[6];
         assign n6648 = BU7033_Q[7];
         assign n6647 = BU7033_Q[8];
         assign n6646 = BU7033_Q[9];
         assign n6645 = BU7033_Q[10];
         assign n6644 = BU7033_Q[11];
         assign n6643 = BU7033_Q[12];
         assign n6642 = BU7033_Q[13];
         assign n6641 = BU7033_Q[14];
         assign n6640 = BU7033_Q[15];
         assign n6639 = BU7033_Q[16];
         assign n6638 = BU7033_Q[17];
         assign n6637 = BU7033_Q[18];
         assign n6636 = BU7033_Q[19];
         assign n6635 = BU7033_Q[20];
         assign n6634 = BU7033_Q[21];
      wire BU7033_CLK;
         assign BU7033_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7033(
         .A(BU7033_A),
         .B(BU7033_B),
         .ADD(BU7033_ADD),
         .Q(BU7033_Q),
         .CLK(BU7033_CLK)
      );

      defparam BU7172.INIT = 'ha3a3;
      wire BU7172_I0;
         assign BU7172_I0 = n6656;
      wire BU7172_I1;
         assign BU7172_I1 = n8179;
      wire BU7172_I2;
         assign BU7172_I2 = n8178;
      wire BU7172_I3;
         assign BU7172_I3 = 1'b0;
      wire BU7172_O;
         assign n39707 = BU7172_O;
      LUT4       BU7172(
         .I0(BU7172_I0),
         .I1(BU7172_I1),
         .I2(BU7172_I2),
         .I3(BU7172_I3),
         .O(BU7172_O)
      );

      wire [21 : 0] BU7179_A;
         assign BU7179_A[0] = n7425;
         assign BU7179_A[1] = n7424;
         assign BU7179_A[2] = n7423;
         assign BU7179_A[3] = n7422;
         assign BU7179_A[4] = n7421;
         assign BU7179_A[5] = n7420;
         assign BU7179_A[6] = n7419;
         assign BU7179_A[7] = n7418;
         assign BU7179_A[8] = n7417;
         assign BU7179_A[9] = n7416;
         assign BU7179_A[10] = n7415;
         assign BU7179_A[11] = n7414;
         assign BU7179_A[12] = n7413;
         assign BU7179_A[13] = n7412;
         assign BU7179_A[14] = n7411;
         assign BU7179_A[15] = n7410;
         assign BU7179_A[16] = n7409;
         assign BU7179_A[17] = n7408;
         assign BU7179_A[18] = n7407;
         assign BU7179_A[19] = n7406;
         assign BU7179_A[20] = n7405;
         assign BU7179_A[21] = n7404;
      wire [21 : 0] BU7179_B;
         assign BU7179_B[0] = 1'b0;
         assign BU7179_B[1] = 1'b0;
         assign BU7179_B[2] = 1'b1;
         assign BU7179_B[3] = 1'b0;
         assign BU7179_B[4] = 1'b1;
         assign BU7179_B[5] = 1'b0;
         assign BU7179_B[6] = 1'b0;
         assign BU7179_B[7] = 1'b0;
         assign BU7179_B[8] = 1'b0;
         assign BU7179_B[9] = 1'b0;
         assign BU7179_B[10] = 1'b0;
         assign BU7179_B[11] = 1'b0;
         assign BU7179_B[12] = 1'b0;
         assign BU7179_B[13] = 1'b0;
         assign BU7179_B[14] = 1'b0;
         assign BU7179_B[15] = 1'b0;
         assign BU7179_B[16] = 1'b0;
         assign BU7179_B[17] = 1'b0;
         assign BU7179_B[18] = 1'b0;
         assign BU7179_B[19] = 1'b0;
         assign BU7179_B[20] = 1'b0;
         assign BU7179_B[21] = 1'b0;
      wire BU7179_ADD;
         assign BU7179_ADD = n41122;
      wire [21 : 0] BU7179_S;
         assign n41099 = BU7179_S[21];
      wire [21 : 0] BU7179_Q;
         assign n7403 = BU7179_Q[0];
         assign n7402 = BU7179_Q[1];
         assign n7401 = BU7179_Q[2];
         assign n7400 = BU7179_Q[3];
         assign n7399 = BU7179_Q[4];
         assign n7398 = BU7179_Q[5];
         assign n7397 = BU7179_Q[6];
         assign n7396 = BU7179_Q[7];
         assign n7395 = BU7179_Q[8];
         assign n7394 = BU7179_Q[9];
         assign n7393 = BU7179_Q[10];
         assign n7392 = BU7179_Q[11];
         assign n7391 = BU7179_Q[12];
         assign n7390 = BU7179_Q[13];
         assign n7389 = BU7179_Q[14];
         assign n7388 = BU7179_Q[15];
         assign n7387 = BU7179_Q[16];
         assign n7386 = BU7179_Q[17];
         assign n7385 = BU7179_Q[18];
         assign n7384 = BU7179_Q[19];
         assign n7383 = BU7179_Q[20];
         assign n7382 = BU7179_Q[21];
      wire BU7179_CLK;
         assign BU7179_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7179(
         .A(BU7179_A),
         .B(BU7179_B),
         .ADD(BU7179_ADD),
         .S(BU7179_S),
         .Q(BU7179_Q),
         .CLK(BU7179_CLK)
      );

      defparam BU7318.INIT = 'h5c5c;
      wire BU7318_I0;
         assign BU7318_I0 = n6656;
      wire BU7318_I1;
         assign BU7318_I1 = n8179;
      wire BU7318_I2;
         assign BU7318_I2 = n8178;
      wire BU7318_I3;
         assign BU7318_I3 = 1'b0;
      wire BU7318_O;
         assign n41122 = BU7318_O;
      LUT4       BU7318(
         .I0(BU7318_I0),
         .I1(BU7318_I1),
         .I2(BU7318_I2),
         .I3(BU7318_I3),
         .O(BU7318_O)
      );

      wire [0 : 0] BU7323_D;
         assign BU7323_D[0] = n41099;
      wire [0 : 0] BU7323_Q;
         assign n8176 = BU7323_Q[0];
      wire BU7323_CLK;
         assign BU7323_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7323(
         .D(BU7323_D),
         .Q(BU7323_Q),
         .CLK(BU7323_CLK)
      );

      wire [0 : 0] BU7332_D;
         assign BU7332_D[0] = n8078;
      wire [0 : 0] BU7332_Q;
         assign n8075 = BU7332_Q[0];
      wire BU7332_CLK;
         assign BU7332_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7332(
         .D(BU7332_D),
         .Q(BU7332_Q),
         .CLK(BU7332_CLK)
      );

      wire [0 : 0] BU7339_D;
         assign BU7339_D[0] = n8077;
      wire [0 : 0] BU7339_Q;
         assign n8074 = BU7339_Q[0];
      wire BU7339_CLK;
         assign BU7339_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7339(
         .D(BU7339_D),
         .Q(BU7339_Q),
         .CLK(BU7339_CLK)
      );

      wire [0 : 0] BU7346_D;
         assign BU7346_D[0] = n8076;
      wire [0 : 0] BU7346_Q;
         assign n8073 = BU7346_Q[0];
      wire BU7346_CLK;
         assign BU7346_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7346(
         .D(BU7346_D),
         .Q(BU7346_Q),
         .CLK(BU7346_CLK)
      );

      wire [0 : 0] BU7353_D;
         assign BU7353_D[0] = n8178;
      wire [0 : 0] BU7353_Q;
         assign n8175 = BU7353_Q[0];
      wire BU7353_CLK;
         assign BU7353_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7353(
         .D(BU7353_D),
         .Q(BU7353_Q),
         .CLK(BU7353_CLK)
      );

      wire [21 : 0] BU7369_A;
         assign BU7369_A[0] = n5907;
         assign BU7369_A[1] = n5906;
         assign BU7369_A[2] = n5905;
         assign BU7369_A[3] = n5904;
         assign BU7369_A[4] = n5903;
         assign BU7369_A[5] = n5902;
         assign BU7369_A[6] = n5901;
         assign BU7369_A[7] = n5900;
         assign BU7369_A[8] = n5899;
         assign BU7369_A[9] = n5898;
         assign BU7369_A[10] = n5897;
         assign BU7369_A[11] = n5896;
         assign BU7369_A[12] = n5895;
         assign BU7369_A[13] = n5894;
         assign BU7369_A[14] = n5893;
         assign BU7369_A[15] = n5892;
         assign BU7369_A[16] = n5891;
         assign BU7369_A[17] = n5890;
         assign BU7369_A[18] = n5889;
         assign BU7369_A[19] = n5888;
         assign BU7369_A[20] = n5887;
         assign BU7369_A[21] = n5886;
      wire [21 : 0] BU7369_B;
         assign BU7369_B[0] = n6641;
         assign BU7369_B[1] = n6640;
         assign BU7369_B[2] = n6639;
         assign BU7369_B[3] = n6638;
         assign BU7369_B[4] = n6637;
         assign BU7369_B[5] = n6636;
         assign BU7369_B[6] = n6635;
         assign BU7369_B[7] = n6634;
         assign BU7369_B[8] = n6634;
         assign BU7369_B[9] = n6634;
         assign BU7369_B[10] = n6634;
         assign BU7369_B[11] = n6634;
         assign BU7369_B[12] = n6634;
         assign BU7369_B[13] = n6634;
         assign BU7369_B[14] = n6634;
         assign BU7369_B[15] = n6634;
         assign BU7369_B[16] = n6634;
         assign BU7369_B[17] = n6634;
         assign BU7369_B[18] = n6634;
         assign BU7369_B[19] = n6634;
         assign BU7369_B[20] = n6634;
         assign BU7369_B[21] = n6634;
      wire BU7369_ADD;
         assign BU7369_ADD = n42280;
      wire [21 : 0] BU7369_Q;
         assign n5885 = BU7369_Q[0];
         assign n5884 = BU7369_Q[1];
         assign n5883 = BU7369_Q[2];
         assign n5882 = BU7369_Q[3];
         assign n5881 = BU7369_Q[4];
         assign n5880 = BU7369_Q[5];
         assign n5879 = BU7369_Q[6];
         assign n5878 = BU7369_Q[7];
         assign n5877 = BU7369_Q[8];
         assign n5876 = BU7369_Q[9];
         assign n5875 = BU7369_Q[10];
         assign n5874 = BU7369_Q[11];
         assign n5873 = BU7369_Q[12];
         assign n5872 = BU7369_Q[13];
         assign n5871 = BU7369_Q[14];
         assign n5870 = BU7369_Q[15];
         assign n5869 = BU7369_Q[16];
         assign n5868 = BU7369_Q[17];
         assign n5867 = BU7369_Q[18];
         assign n5866 = BU7369_Q[19];
         assign n5865 = BU7369_Q[20];
         assign n5864 = BU7369_Q[21];
      wire BU7369_CLK;
         assign BU7369_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7369(
         .A(BU7369_A),
         .B(BU7369_B),
         .ADD(BU7369_ADD),
         .Q(BU7369_Q),
         .CLK(BU7369_CLK)
      );

      defparam BU7508.INIT = 'ha53c;
      wire BU7508_I0;
         assign BU7508_I0 = n6634;
      wire BU7508_I1;
         assign BU7508_I1 = n8176;
      wire BU7508_I2;
         assign BU7508_I2 = 1'b0;
      wire BU7508_I3;
         assign BU7508_I3 = n8175;
      wire BU7508_O;
         assign n42280 = BU7508_O;
      LUT4       BU7508(
         .I0(BU7508_I0),
         .I1(BU7508_I1),
         .I2(BU7508_I2),
         .I3(BU7508_I3),
         .O(BU7508_O)
      );

      wire [21 : 0] BU7513_A;
         assign BU7513_A[0] = n6655;
         assign BU7513_A[1] = n6654;
         assign BU7513_A[2] = n6653;
         assign BU7513_A[3] = n6652;
         assign BU7513_A[4] = n6651;
         assign BU7513_A[5] = n6650;
         assign BU7513_A[6] = n6649;
         assign BU7513_A[7] = n6648;
         assign BU7513_A[8] = n6647;
         assign BU7513_A[9] = n6646;
         assign BU7513_A[10] = n6645;
         assign BU7513_A[11] = n6644;
         assign BU7513_A[12] = n6643;
         assign BU7513_A[13] = n6642;
         assign BU7513_A[14] = n6641;
         assign BU7513_A[15] = n6640;
         assign BU7513_A[16] = n6639;
         assign BU7513_A[17] = n6638;
         assign BU7513_A[18] = n6637;
         assign BU7513_A[19] = n6636;
         assign BU7513_A[20] = n6635;
         assign BU7513_A[21] = n6634;
      wire [21 : 0] BU7513_B;
         assign BU7513_B[0] = n5893;
         assign BU7513_B[1] = n5892;
         assign BU7513_B[2] = n5891;
         assign BU7513_B[3] = n5890;
         assign BU7513_B[4] = n5889;
         assign BU7513_B[5] = n5888;
         assign BU7513_B[6] = n5887;
         assign BU7513_B[7] = n5886;
         assign BU7513_B[8] = n5886;
         assign BU7513_B[9] = n5886;
         assign BU7513_B[10] = n5886;
         assign BU7513_B[11] = n5886;
         assign BU7513_B[12] = n5886;
         assign BU7513_B[13] = n5886;
         assign BU7513_B[14] = n5886;
         assign BU7513_B[15] = n5886;
         assign BU7513_B[16] = n5886;
         assign BU7513_B[17] = n5886;
         assign BU7513_B[18] = n5886;
         assign BU7513_B[19] = n5886;
         assign BU7513_B[20] = n5886;
         assign BU7513_B[21] = n5886;
      wire BU7513_ADD;
         assign BU7513_ADD = n42281;
      wire [21 : 0] BU7513_Q;
         assign n6633 = BU7513_Q[0];
         assign n6632 = BU7513_Q[1];
         assign n6631 = BU7513_Q[2];
         assign n6630 = BU7513_Q[3];
         assign n6629 = BU7513_Q[4];
         assign n6628 = BU7513_Q[5];
         assign n6627 = BU7513_Q[6];
         assign n6626 = BU7513_Q[7];
         assign n6625 = BU7513_Q[8];
         assign n6624 = BU7513_Q[9];
         assign n6623 = BU7513_Q[10];
         assign n6622 = BU7513_Q[11];
         assign n6621 = BU7513_Q[12];
         assign n6620 = BU7513_Q[13];
         assign n6619 = BU7513_Q[14];
         assign n6618 = BU7513_Q[15];
         assign n6617 = BU7513_Q[16];
         assign n6616 = BU7513_Q[17];
         assign n6615 = BU7513_Q[18];
         assign n6614 = BU7513_Q[19];
         assign n6613 = BU7513_Q[20];
         assign n6612 = BU7513_Q[21];
      wire BU7513_CLK;
         assign BU7513_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7513(
         .A(BU7513_A),
         .B(BU7513_B),
         .ADD(BU7513_ADD),
         .Q(BU7513_Q),
         .CLK(BU7513_CLK)
      );

      defparam BU7652.INIT = 'ha3a3;
      wire BU7652_I0;
         assign BU7652_I0 = n6634;
      wire BU7652_I1;
         assign BU7652_I1 = n8176;
      wire BU7652_I2;
         assign BU7652_I2 = n8175;
      wire BU7652_I3;
         assign BU7652_I3 = 1'b0;
      wire BU7652_O;
         assign n42281 = BU7652_O;
      LUT4       BU7652(
         .I0(BU7652_I0),
         .I1(BU7652_I1),
         .I2(BU7652_I2),
         .I3(BU7652_I3),
         .O(BU7652_O)
      );

      wire [21 : 0] BU7659_A;
         assign BU7659_A[0] = n7403;
         assign BU7659_A[1] = n7402;
         assign BU7659_A[2] = n7401;
         assign BU7659_A[3] = n7400;
         assign BU7659_A[4] = n7399;
         assign BU7659_A[5] = n7398;
         assign BU7659_A[6] = n7397;
         assign BU7659_A[7] = n7396;
         assign BU7659_A[8] = n7395;
         assign BU7659_A[9] = n7394;
         assign BU7659_A[10] = n7393;
         assign BU7659_A[11] = n7392;
         assign BU7659_A[12] = n7391;
         assign BU7659_A[13] = n7390;
         assign BU7659_A[14] = n7389;
         assign BU7659_A[15] = n7388;
         assign BU7659_A[16] = n7387;
         assign BU7659_A[17] = n7386;
         assign BU7659_A[18] = n7385;
         assign BU7659_A[19] = n7384;
         assign BU7659_A[20] = n7383;
         assign BU7659_A[21] = n7382;
      wire [21 : 0] BU7659_B;
         assign BU7659_B[0] = 1'b0;
         assign BU7659_B[1] = 1'b1;
         assign BU7659_B[2] = 1'b0;
         assign BU7659_B[3] = 1'b1;
         assign BU7659_B[4] = 1'b0;
         assign BU7659_B[5] = 1'b0;
         assign BU7659_B[6] = 1'b0;
         assign BU7659_B[7] = 1'b0;
         assign BU7659_B[8] = 1'b0;
         assign BU7659_B[9] = 1'b0;
         assign BU7659_B[10] = 1'b0;
         assign BU7659_B[11] = 1'b0;
         assign BU7659_B[12] = 1'b0;
         assign BU7659_B[13] = 1'b0;
         assign BU7659_B[14] = 1'b0;
         assign BU7659_B[15] = 1'b0;
         assign BU7659_B[16] = 1'b0;
         assign BU7659_B[17] = 1'b0;
         assign BU7659_B[18] = 1'b0;
         assign BU7659_B[19] = 1'b0;
         assign BU7659_B[20] = 1'b0;
         assign BU7659_B[21] = 1'b0;
      wire BU7659_ADD;
         assign BU7659_ADD = n43696;
      wire [21 : 0] BU7659_S;
         assign n43673 = BU7659_S[21];
      wire [21 : 0] BU7659_Q;
         assign n7381 = BU7659_Q[0];
         assign n7380 = BU7659_Q[1];
         assign n7379 = BU7659_Q[2];
         assign n7378 = BU7659_Q[3];
         assign n7377 = BU7659_Q[4];
         assign n7376 = BU7659_Q[5];
         assign n7375 = BU7659_Q[6];
         assign n7374 = BU7659_Q[7];
         assign n7373 = BU7659_Q[8];
         assign n7372 = BU7659_Q[9];
         assign n7371 = BU7659_Q[10];
         assign n7370 = BU7659_Q[11];
         assign n7369 = BU7659_Q[12];
         assign n7368 = BU7659_Q[13];
         assign n7367 = BU7659_Q[14];
         assign n7366 = BU7659_Q[15];
         assign n7365 = BU7659_Q[16];
         assign n7364 = BU7659_Q[17];
         assign n7363 = BU7659_Q[18];
         assign n7362 = BU7659_Q[19];
         assign n7361 = BU7659_Q[20];
         assign n7360 = BU7659_Q[21];
      wire BU7659_CLK;
         assign BU7659_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7659(
         .A(BU7659_A),
         .B(BU7659_B),
         .ADD(BU7659_ADD),
         .S(BU7659_S),
         .Q(BU7659_Q),
         .CLK(BU7659_CLK)
      );

      defparam BU7798.INIT = 'h5c5c;
      wire BU7798_I0;
         assign BU7798_I0 = n6634;
      wire BU7798_I1;
         assign BU7798_I1 = n8176;
      wire BU7798_I2;
         assign BU7798_I2 = n8175;
      wire BU7798_I3;
         assign BU7798_I3 = 1'b0;
      wire BU7798_O;
         assign n43696 = BU7798_O;
      LUT4       BU7798(
         .I0(BU7798_I0),
         .I1(BU7798_I1),
         .I2(BU7798_I2),
         .I3(BU7798_I3),
         .O(BU7798_O)
      );

      wire [0 : 0] BU7803_D;
         assign BU7803_D[0] = n43673;
      wire [0 : 0] BU7803_Q;
         assign n8173 = BU7803_Q[0];
      wire BU7803_CLK;
         assign BU7803_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7803(
         .D(BU7803_D),
         .Q(BU7803_Q),
         .CLK(BU7803_CLK)
      );

      wire [0 : 0] BU7812_D;
         assign BU7812_D[0] = n8075;
      wire [0 : 0] BU7812_Q;
         assign n8072 = BU7812_Q[0];
      wire BU7812_CLK;
         assign BU7812_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7812(
         .D(BU7812_D),
         .Q(BU7812_Q),
         .CLK(BU7812_CLK)
      );

      wire [0 : 0] BU7819_D;
         assign BU7819_D[0] = n8074;
      wire [0 : 0] BU7819_Q;
         assign n8071 = BU7819_Q[0];
      wire BU7819_CLK;
         assign BU7819_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7819(
         .D(BU7819_D),
         .Q(BU7819_Q),
         .CLK(BU7819_CLK)
      );

      wire [0 : 0] BU7826_D;
         assign BU7826_D[0] = n8073;
      wire [0 : 0] BU7826_Q;
         assign n8070 = BU7826_Q[0];
      wire BU7826_CLK;
         assign BU7826_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7826(
         .D(BU7826_D),
         .Q(BU7826_Q),
         .CLK(BU7826_CLK)
      );

      wire [0 : 0] BU7833_D;
         assign BU7833_D[0] = n8175;
      wire [0 : 0] BU7833_Q;
         assign n8172 = BU7833_Q[0];
      wire BU7833_CLK;
         assign BU7833_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU7833(
         .D(BU7833_D),
         .Q(BU7833_Q),
         .CLK(BU7833_CLK)
      );

      wire [21 : 0] BU7849_A;
         assign BU7849_A[0] = n5885;
         assign BU7849_A[1] = n5884;
         assign BU7849_A[2] = n5883;
         assign BU7849_A[3] = n5882;
         assign BU7849_A[4] = n5881;
         assign BU7849_A[5] = n5880;
         assign BU7849_A[6] = n5879;
         assign BU7849_A[7] = n5878;
         assign BU7849_A[8] = n5877;
         assign BU7849_A[9] = n5876;
         assign BU7849_A[10] = n5875;
         assign BU7849_A[11] = n5874;
         assign BU7849_A[12] = n5873;
         assign BU7849_A[13] = n5872;
         assign BU7849_A[14] = n5871;
         assign BU7849_A[15] = n5870;
         assign BU7849_A[16] = n5869;
         assign BU7849_A[17] = n5868;
         assign BU7849_A[18] = n5867;
         assign BU7849_A[19] = n5866;
         assign BU7849_A[20] = n5865;
         assign BU7849_A[21] = n5864;
      wire [21 : 0] BU7849_B;
         assign BU7849_B[0] = n6618;
         assign BU7849_B[1] = n6617;
         assign BU7849_B[2] = n6616;
         assign BU7849_B[3] = n6615;
         assign BU7849_B[4] = n6614;
         assign BU7849_B[5] = n6613;
         assign BU7849_B[6] = n6612;
         assign BU7849_B[7] = n6612;
         assign BU7849_B[8] = n6612;
         assign BU7849_B[9] = n6612;
         assign BU7849_B[10] = n6612;
         assign BU7849_B[11] = n6612;
         assign BU7849_B[12] = n6612;
         assign BU7849_B[13] = n6612;
         assign BU7849_B[14] = n6612;
         assign BU7849_B[15] = n6612;
         assign BU7849_B[16] = n6612;
         assign BU7849_B[17] = n6612;
         assign BU7849_B[18] = n6612;
         assign BU7849_B[19] = n6612;
         assign BU7849_B[20] = n6612;
         assign BU7849_B[21] = n6612;
      wire BU7849_ADD;
         assign BU7849_ADD = n44854;
      wire [21 : 0] BU7849_Q;
         assign n5863 = BU7849_Q[0];
         assign n5862 = BU7849_Q[1];
         assign n5861 = BU7849_Q[2];
         assign n5860 = BU7849_Q[3];
         assign n5859 = BU7849_Q[4];
         assign n5858 = BU7849_Q[5];
         assign n5857 = BU7849_Q[6];
         assign n5856 = BU7849_Q[7];
         assign n5855 = BU7849_Q[8];
         assign n5854 = BU7849_Q[9];
         assign n5853 = BU7849_Q[10];
         assign n5852 = BU7849_Q[11];
         assign n5851 = BU7849_Q[12];
         assign n5850 = BU7849_Q[13];
         assign n5849 = BU7849_Q[14];
         assign n5848 = BU7849_Q[15];
         assign n5847 = BU7849_Q[16];
         assign n5846 = BU7849_Q[17];
         assign n5845 = BU7849_Q[18];
         assign n5844 = BU7849_Q[19];
         assign n5843 = BU7849_Q[20];
         assign n5842 = BU7849_Q[21];
      wire BU7849_CLK;
         assign BU7849_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7849(
         .A(BU7849_A),
         .B(BU7849_B),
         .ADD(BU7849_ADD),
         .Q(BU7849_Q),
         .CLK(BU7849_CLK)
      );

      defparam BU7988.INIT = 'ha53c;
      wire BU7988_I0;
         assign BU7988_I0 = n6612;
      wire BU7988_I1;
         assign BU7988_I1 = n8173;
      wire BU7988_I2;
         assign BU7988_I2 = 1'b0;
      wire BU7988_I3;
         assign BU7988_I3 = n8172;
      wire BU7988_O;
         assign n44854 = BU7988_O;
      LUT4       BU7988(
         .I0(BU7988_I0),
         .I1(BU7988_I1),
         .I2(BU7988_I2),
         .I3(BU7988_I3),
         .O(BU7988_O)
      );

      wire [21 : 0] BU7993_A;
         assign BU7993_A[0] = n6633;
         assign BU7993_A[1] = n6632;
         assign BU7993_A[2] = n6631;
         assign BU7993_A[3] = n6630;
         assign BU7993_A[4] = n6629;
         assign BU7993_A[5] = n6628;
         assign BU7993_A[6] = n6627;
         assign BU7993_A[7] = n6626;
         assign BU7993_A[8] = n6625;
         assign BU7993_A[9] = n6624;
         assign BU7993_A[10] = n6623;
         assign BU7993_A[11] = n6622;
         assign BU7993_A[12] = n6621;
         assign BU7993_A[13] = n6620;
         assign BU7993_A[14] = n6619;
         assign BU7993_A[15] = n6618;
         assign BU7993_A[16] = n6617;
         assign BU7993_A[17] = n6616;
         assign BU7993_A[18] = n6615;
         assign BU7993_A[19] = n6614;
         assign BU7993_A[20] = n6613;
         assign BU7993_A[21] = n6612;
      wire [21 : 0] BU7993_B;
         assign BU7993_B[0] = n5870;
         assign BU7993_B[1] = n5869;
         assign BU7993_B[2] = n5868;
         assign BU7993_B[3] = n5867;
         assign BU7993_B[4] = n5866;
         assign BU7993_B[5] = n5865;
         assign BU7993_B[6] = n5864;
         assign BU7993_B[7] = n5864;
         assign BU7993_B[8] = n5864;
         assign BU7993_B[9] = n5864;
         assign BU7993_B[10] = n5864;
         assign BU7993_B[11] = n5864;
         assign BU7993_B[12] = n5864;
         assign BU7993_B[13] = n5864;
         assign BU7993_B[14] = n5864;
         assign BU7993_B[15] = n5864;
         assign BU7993_B[16] = n5864;
         assign BU7993_B[17] = n5864;
         assign BU7993_B[18] = n5864;
         assign BU7993_B[19] = n5864;
         assign BU7993_B[20] = n5864;
         assign BU7993_B[21] = n5864;
      wire BU7993_ADD;
         assign BU7993_ADD = n44855;
      wire [21 : 0] BU7993_Q;
         assign n6611 = BU7993_Q[0];
         assign n6610 = BU7993_Q[1];
         assign n6609 = BU7993_Q[2];
         assign n6608 = BU7993_Q[3];
         assign n6607 = BU7993_Q[4];
         assign n6606 = BU7993_Q[5];
         assign n6605 = BU7993_Q[6];
         assign n6604 = BU7993_Q[7];
         assign n6603 = BU7993_Q[8];
         assign n6602 = BU7993_Q[9];
         assign n6601 = BU7993_Q[10];
         assign n6600 = BU7993_Q[11];
         assign n6599 = BU7993_Q[12];
         assign n6598 = BU7993_Q[13];
         assign n6597 = BU7993_Q[14];
         assign n6596 = BU7993_Q[15];
         assign n6595 = BU7993_Q[16];
         assign n6594 = BU7993_Q[17];
         assign n6593 = BU7993_Q[18];
         assign n6592 = BU7993_Q[19];
         assign n6591 = BU7993_Q[20];
         assign n6590 = BU7993_Q[21];
      wire BU7993_CLK;
         assign BU7993_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7993(
         .A(BU7993_A),
         .B(BU7993_B),
         .ADD(BU7993_ADD),
         .Q(BU7993_Q),
         .CLK(BU7993_CLK)
      );

      defparam BU8132.INIT = 'ha3a3;
      wire BU8132_I0;
         assign BU8132_I0 = n6612;
      wire BU8132_I1;
         assign BU8132_I1 = n8173;
      wire BU8132_I2;
         assign BU8132_I2 = n8172;
      wire BU8132_I3;
         assign BU8132_I3 = 1'b0;
      wire BU8132_O;
         assign n44855 = BU8132_O;
      LUT4       BU8132(
         .I0(BU8132_I0),
         .I1(BU8132_I1),
         .I2(BU8132_I2),
         .I3(BU8132_I3),
         .O(BU8132_O)
      );

      wire [21 : 0] BU8139_A;
         assign BU8139_A[0] = n7381;
         assign BU8139_A[1] = n7380;
         assign BU8139_A[2] = n7379;
         assign BU8139_A[3] = n7378;
         assign BU8139_A[4] = n7377;
         assign BU8139_A[5] = n7376;
         assign BU8139_A[6] = n7375;
         assign BU8139_A[7] = n7374;
         assign BU8139_A[8] = n7373;
         assign BU8139_A[9] = n7372;
         assign BU8139_A[10] = n7371;
         assign BU8139_A[11] = n7370;
         assign BU8139_A[12] = n7369;
         assign BU8139_A[13] = n7368;
         assign BU8139_A[14] = n7367;
         assign BU8139_A[15] = n7366;
         assign BU8139_A[16] = n7365;
         assign BU8139_A[17] = n7364;
         assign BU8139_A[18] = n7363;
         assign BU8139_A[19] = n7362;
         assign BU8139_A[20] = n7361;
         assign BU8139_A[21] = n7360;
      wire [21 : 0] BU8139_B;
         assign BU8139_B[0] = 1'b1;
         assign BU8139_B[1] = 1'b0;
         assign BU8139_B[2] = 1'b1;
         assign BU8139_B[3] = 1'b0;
         assign BU8139_B[4] = 1'b0;
         assign BU8139_B[5] = 1'b0;
         assign BU8139_B[6] = 1'b0;
         assign BU8139_B[7] = 1'b0;
         assign BU8139_B[8] = 1'b0;
         assign BU8139_B[9] = 1'b0;
         assign BU8139_B[10] = 1'b0;
         assign BU8139_B[11] = 1'b0;
         assign BU8139_B[12] = 1'b0;
         assign BU8139_B[13] = 1'b0;
         assign BU8139_B[14] = 1'b0;
         assign BU8139_B[15] = 1'b0;
         assign BU8139_B[16] = 1'b0;
         assign BU8139_B[17] = 1'b0;
         assign BU8139_B[18] = 1'b0;
         assign BU8139_B[19] = 1'b0;
         assign BU8139_B[20] = 1'b0;
         assign BU8139_B[21] = 1'b0;
      wire BU8139_ADD;
         assign BU8139_ADD = n46270;
      wire [21 : 0] BU8139_S;
         assign n46247 = BU8139_S[21];
      wire [21 : 0] BU8139_Q;
         assign n7359 = BU8139_Q[0];
         assign n7358 = BU8139_Q[1];
         assign n7357 = BU8139_Q[2];
         assign n7356 = BU8139_Q[3];
         assign n7355 = BU8139_Q[4];
         assign n7354 = BU8139_Q[5];
         assign n7353 = BU8139_Q[6];
         assign n7352 = BU8139_Q[7];
         assign n7351 = BU8139_Q[8];
         assign n7350 = BU8139_Q[9];
         assign n7349 = BU8139_Q[10];
         assign n7348 = BU8139_Q[11];
         assign n7347 = BU8139_Q[12];
         assign n7346 = BU8139_Q[13];
         assign n7345 = BU8139_Q[14];
         assign n7344 = BU8139_Q[15];
         assign n7343 = BU8139_Q[16];
         assign n7342 = BU8139_Q[17];
         assign n7341 = BU8139_Q[18];
         assign n7340 = BU8139_Q[19];
         assign n7339 = BU8139_Q[20];
         assign n7338 = BU8139_Q[21];
      wire BU8139_CLK;
         assign BU8139_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8139(
         .A(BU8139_A),
         .B(BU8139_B),
         .ADD(BU8139_ADD),
         .S(BU8139_S),
         .Q(BU8139_Q),
         .CLK(BU8139_CLK)
      );

      defparam BU8278.INIT = 'h5c5c;
      wire BU8278_I0;
         assign BU8278_I0 = n6612;
      wire BU8278_I1;
         assign BU8278_I1 = n8173;
      wire BU8278_I2;
         assign BU8278_I2 = n8172;
      wire BU8278_I3;
         assign BU8278_I3 = 1'b0;
      wire BU8278_O;
         assign n46270 = BU8278_O;
      LUT4       BU8278(
         .I0(BU8278_I0),
         .I1(BU8278_I1),
         .I2(BU8278_I2),
         .I3(BU8278_I3),
         .O(BU8278_O)
      );

      wire [0 : 0] BU8283_D;
         assign BU8283_D[0] = n46247;
      wire [0 : 0] BU8283_Q;
         assign n8170 = BU8283_Q[0];
      wire BU8283_CLK;
         assign BU8283_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8283(
         .D(BU8283_D),
         .Q(BU8283_Q),
         .CLK(BU8283_CLK)
      );

      wire [0 : 0] BU8292_D;
         assign BU8292_D[0] = n8072;
      wire [0 : 0] BU8292_Q;
         assign n8069 = BU8292_Q[0];
      wire BU8292_CLK;
         assign BU8292_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8292(
         .D(BU8292_D),
         .Q(BU8292_Q),
         .CLK(BU8292_CLK)
      );

      wire [0 : 0] BU8299_D;
         assign BU8299_D[0] = n8071;
      wire [0 : 0] BU8299_Q;
         assign n8068 = BU8299_Q[0];
      wire BU8299_CLK;
         assign BU8299_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8299(
         .D(BU8299_D),
         .Q(BU8299_Q),
         .CLK(BU8299_CLK)
      );

      wire [0 : 0] BU8306_D;
         assign BU8306_D[0] = n8070;
      wire [0 : 0] BU8306_Q;
         assign n8067 = BU8306_Q[0];
      wire BU8306_CLK;
         assign BU8306_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8306(
         .D(BU8306_D),
         .Q(BU8306_Q),
         .CLK(BU8306_CLK)
      );

      wire [0 : 0] BU8313_D;
         assign BU8313_D[0] = n8172;
      wire [0 : 0] BU8313_Q;
         assign n8169 = BU8313_Q[0];
      wire BU8313_CLK;
         assign BU8313_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8313(
         .D(BU8313_D),
         .Q(BU8313_Q),
         .CLK(BU8313_CLK)
      );

      wire [21 : 0] BU8329_A;
         assign BU8329_A[0] = n5863;
         assign BU8329_A[1] = n5862;
         assign BU8329_A[2] = n5861;
         assign BU8329_A[3] = n5860;
         assign BU8329_A[4] = n5859;
         assign BU8329_A[5] = n5858;
         assign BU8329_A[6] = n5857;
         assign BU8329_A[7] = n5856;
         assign BU8329_A[8] = n5855;
         assign BU8329_A[9] = n5854;
         assign BU8329_A[10] = n5853;
         assign BU8329_A[11] = n5852;
         assign BU8329_A[12] = n5851;
         assign BU8329_A[13] = n5850;
         assign BU8329_A[14] = n5849;
         assign BU8329_A[15] = n5848;
         assign BU8329_A[16] = n5847;
         assign BU8329_A[17] = n5846;
         assign BU8329_A[18] = n5845;
         assign BU8329_A[19] = n5844;
         assign BU8329_A[20] = n5843;
         assign BU8329_A[21] = n5842;
      wire [21 : 0] BU8329_B;
         assign BU8329_B[0] = n6595;
         assign BU8329_B[1] = n6594;
         assign BU8329_B[2] = n6593;
         assign BU8329_B[3] = n6592;
         assign BU8329_B[4] = n6591;
         assign BU8329_B[5] = n6590;
         assign BU8329_B[6] = n6590;
         assign BU8329_B[7] = n6590;
         assign BU8329_B[8] = n6590;
         assign BU8329_B[9] = n6590;
         assign BU8329_B[10] = n6590;
         assign BU8329_B[11] = n6590;
         assign BU8329_B[12] = n6590;
         assign BU8329_B[13] = n6590;
         assign BU8329_B[14] = n6590;
         assign BU8329_B[15] = n6590;
         assign BU8329_B[16] = n6590;
         assign BU8329_B[17] = n6590;
         assign BU8329_B[18] = n6590;
         assign BU8329_B[19] = n6590;
         assign BU8329_B[20] = n6590;
         assign BU8329_B[21] = n6590;
      wire BU8329_ADD;
         assign BU8329_ADD = n47428;
      wire [21 : 0] BU8329_Q;
         assign n365 = BU8329_Q[0];
         assign n364 = BU8329_Q[1];
         assign n363 = BU8329_Q[2];
         assign n362 = BU8329_Q[3];
         assign n361 = BU8329_Q[4];
         assign n360 = BU8329_Q[5];
         assign n359 = BU8329_Q[6];
         assign n358 = BU8329_Q[7];
         assign n357 = BU8329_Q[8];
         assign n356 = BU8329_Q[9];
         assign n355 = BU8329_Q[10];
         assign n354 = BU8329_Q[11];
         assign n353 = BU8329_Q[12];
         assign n352 = BU8329_Q[13];
         assign n351 = BU8329_Q[14];
         assign n350 = BU8329_Q[15];
         assign n349 = BU8329_Q[16];
         assign n348 = BU8329_Q[17];
         assign n347 = BU8329_Q[18];
         assign n346 = BU8329_Q[19];
         assign n345 = BU8329_Q[20];
         assign n344 = BU8329_Q[21];
      wire BU8329_CLK;
         assign BU8329_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8329(
         .A(BU8329_A),
         .B(BU8329_B),
         .ADD(BU8329_ADD),
         .Q(BU8329_Q),
         .CLK(BU8329_CLK)
      );

      defparam BU8468.INIT = 'ha53c;
      wire BU8468_I0;
         assign BU8468_I0 = n6590;
      wire BU8468_I1;
         assign BU8468_I1 = n8170;
      wire BU8468_I2;
         assign BU8468_I2 = 1'b0;
      wire BU8468_I3;
         assign BU8468_I3 = n8169;
      wire BU8468_O;
         assign n47428 = BU8468_O;
      LUT4       BU8468(
         .I0(BU8468_I0),
         .I1(BU8468_I1),
         .I2(BU8468_I2),
         .I3(BU8468_I3),
         .O(BU8468_O)
      );

      wire [21 : 0] BU8473_A;
         assign BU8473_A[0] = n6611;
         assign BU8473_A[1] = n6610;
         assign BU8473_A[2] = n6609;
         assign BU8473_A[3] = n6608;
         assign BU8473_A[4] = n6607;
         assign BU8473_A[5] = n6606;
         assign BU8473_A[6] = n6605;
         assign BU8473_A[7] = n6604;
         assign BU8473_A[8] = n6603;
         assign BU8473_A[9] = n6602;
         assign BU8473_A[10] = n6601;
         assign BU8473_A[11] = n6600;
         assign BU8473_A[12] = n6599;
         assign BU8473_A[13] = n6598;
         assign BU8473_A[14] = n6597;
         assign BU8473_A[15] = n6596;
         assign BU8473_A[16] = n6595;
         assign BU8473_A[17] = n6594;
         assign BU8473_A[18] = n6593;
         assign BU8473_A[19] = n6592;
         assign BU8473_A[20] = n6591;
         assign BU8473_A[21] = n6590;
      wire [21 : 0] BU8473_B;
         assign BU8473_B[0] = n5847;
         assign BU8473_B[1] = n5846;
         assign BU8473_B[2] = n5845;
         assign BU8473_B[3] = n5844;
         assign BU8473_B[4] = n5843;
         assign BU8473_B[5] = n5842;
         assign BU8473_B[6] = n5842;
         assign BU8473_B[7] = n5842;
         assign BU8473_B[8] = n5842;
         assign BU8473_B[9] = n5842;
         assign BU8473_B[10] = n5842;
         assign BU8473_B[11] = n5842;
         assign BU8473_B[12] = n5842;
         assign BU8473_B[13] = n5842;
         assign BU8473_B[14] = n5842;
         assign BU8473_B[15] = n5842;
         assign BU8473_B[16] = n5842;
         assign BU8473_B[17] = n5842;
         assign BU8473_B[18] = n5842;
         assign BU8473_B[19] = n5842;
         assign BU8473_B[20] = n5842;
         assign BU8473_B[21] = n5842;
      wire BU8473_ADD;
         assign BU8473_ADD = n47429;
      wire [21 : 0] BU8473_Q;
      wire BU8473_CLK;
         assign BU8473_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8473(
         .A(BU8473_A),
         .B(BU8473_B),
         .ADD(BU8473_ADD),
         .Q(BU8473_Q),
         .CLK(BU8473_CLK)
      );

      defparam BU8612.INIT = 'ha3a3;
      wire BU8612_I0;
         assign BU8612_I0 = n6590;
      wire BU8612_I1;
         assign BU8612_I1 = n8170;
      wire BU8612_I2;
         assign BU8612_I2 = n8169;
      wire BU8612_I3;
         assign BU8612_I3 = 1'b0;
      wire BU8612_O;
         assign n47429 = BU8612_O;
      LUT4       BU8612(
         .I0(BU8612_I0),
         .I1(BU8612_I1),
         .I2(BU8612_I2),
         .I3(BU8612_I3),
         .O(BU8612_O)
      );

      wire [21 : 0] BU8619_A;
         assign BU8619_A[0] = n7359;
         assign BU8619_A[1] = n7358;
         assign BU8619_A[2] = n7357;
         assign BU8619_A[3] = n7356;
         assign BU8619_A[4] = n7355;
         assign BU8619_A[5] = n7354;
         assign BU8619_A[6] = n7353;
         assign BU8619_A[7] = n7352;
         assign BU8619_A[8] = n7351;
         assign BU8619_A[9] = n7350;
         assign BU8619_A[10] = n7349;
         assign BU8619_A[11] = n7348;
         assign BU8619_A[12] = n7347;
         assign BU8619_A[13] = n7346;
         assign BU8619_A[14] = n7345;
         assign BU8619_A[15] = n7344;
         assign BU8619_A[16] = n7343;
         assign BU8619_A[17] = n7342;
         assign BU8619_A[18] = n7341;
         assign BU8619_A[19] = n7340;
         assign BU8619_A[20] = n7339;
         assign BU8619_A[21] = n7338;
      wire [21 : 0] BU8619_B;
         assign BU8619_B[0] = 1'b1;
         assign BU8619_B[1] = 1'b1;
         assign BU8619_B[2] = 1'b0;
         assign BU8619_B[3] = 1'b0;
         assign BU8619_B[4] = 1'b0;
         assign BU8619_B[5] = 1'b0;
         assign BU8619_B[6] = 1'b0;
         assign BU8619_B[7] = 1'b0;
         assign BU8619_B[8] = 1'b0;
         assign BU8619_B[9] = 1'b0;
         assign BU8619_B[10] = 1'b0;
         assign BU8619_B[11] = 1'b0;
         assign BU8619_B[12] = 1'b0;
         assign BU8619_B[13] = 1'b0;
         assign BU8619_B[14] = 1'b0;
         assign BU8619_B[15] = 1'b0;
         assign BU8619_B[16] = 1'b0;
         assign BU8619_B[17] = 1'b0;
         assign BU8619_B[18] = 1'b0;
         assign BU8619_B[19] = 1'b0;
         assign BU8619_B[20] = 1'b0;
         assign BU8619_B[21] = 1'b0;
      wire BU8619_ADD;
         assign BU8619_ADD = n48844;
      wire [21 : 0] BU8619_S;
         assign n48821 = BU8619_S[21];
      wire [21 : 0] BU8619_Q;
         assign n409 = BU8619_Q[0];
         assign n408 = BU8619_Q[1];
         assign n407 = BU8619_Q[2];
         assign n406 = BU8619_Q[3];
         assign n405 = BU8619_Q[4];
         assign n404 = BU8619_Q[5];
         assign n403 = BU8619_Q[6];
         assign n402 = BU8619_Q[7];
         assign n401 = BU8619_Q[8];
         assign n400 = BU8619_Q[9];
         assign n399 = BU8619_Q[10];
         assign n398 = BU8619_Q[11];
         assign n397 = BU8619_Q[12];
         assign n396 = BU8619_Q[13];
         assign n395 = BU8619_Q[14];
         assign n394 = BU8619_Q[15];
         assign n393 = BU8619_Q[16];
         assign n392 = BU8619_Q[17];
         assign n391 = BU8619_Q[18];
         assign n390 = BU8619_Q[19];
         assign n389 = BU8619_Q[20];
         assign n388 = BU8619_Q[21];
      wire BU8619_CLK;
         assign BU8619_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8619(
         .A(BU8619_A),
         .B(BU8619_B),
         .ADD(BU8619_ADD),
         .S(BU8619_S),
         .Q(BU8619_Q),
         .CLK(BU8619_CLK)
      );

      defparam BU8758.INIT = 'h5c5c;
      wire BU8758_I0;
         assign BU8758_I0 = n6590;
      wire BU8758_I1;
         assign BU8758_I1 = n8170;
      wire BU8758_I2;
         assign BU8758_I2 = n8169;
      wire BU8758_I3;
         assign BU8758_I3 = 1'b0;
      wire BU8758_O;
         assign n48844 = BU8758_O;
      LUT4       BU8758(
         .I0(BU8758_I0),
         .I1(BU8758_I1),
         .I2(BU8758_I2),
         .I3(BU8758_I3),
         .O(BU8758_O)
      );

      wire [0 : 0] BU8763_D;
         assign BU8763_D[0] = n48821;
      wire [0 : 0] BU8763_Q;
      wire BU8763_CLK;
         assign BU8763_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8763(
         .D(BU8763_D),
         .Q(BU8763_Q),
         .CLK(BU8763_CLK)
      );

      wire [0 : 0] BU8772_D;
         assign BU8772_D[0] = n8069;
      wire [0 : 0] BU8772_Q;
         assign n412 = BU8772_Q[0];
      wire BU8772_CLK;
         assign BU8772_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8772(
         .D(BU8772_D),
         .Q(BU8772_Q),
         .CLK(BU8772_CLK)
      );

      wire [0 : 0] BU8779_D;
         assign BU8779_D[0] = n8068;
      wire [0 : 0] BU8779_Q;
         assign n411 = BU8779_Q[0];
      wire BU8779_CLK;
         assign BU8779_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8779(
         .D(BU8779_D),
         .Q(BU8779_Q),
         .CLK(BU8779_CLK)
      );

      wire [0 : 0] BU8786_D;
         assign BU8786_D[0] = n8067;
      wire [0 : 0] BU8786_Q;
         assign n410 = BU8786_Q[0];
      wire BU8786_CLK;
         assign BU8786_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8786(
         .D(BU8786_D),
         .Q(BU8786_Q),
         .CLK(BU8786_CLK)
      );

      wire [0 : 0] BU8793_D;
         assign BU8793_D[0] = n8169;
      wire [0 : 0] BU8793_Q;
      wire BU8793_CLK;
         assign BU8793_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8793(
         .D(BU8793_D),
         .Q(BU8793_Q),
         .CLK(BU8793_CLK)
      );

      wire BU8817_CLK;
         assign BU8817_CLK = n906;
      wire [0 : 0] BU8817_D;
         assign BU8817_D[0] = n365;
      wire [0 : 0] BU8817_Q;
         assign n49627 = BU8817_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8817(
         .CLK(BU8817_CLK),
         .D(BU8817_D),
         .Q(BU8817_Q)
      );

      wire BU8828_CLK;
         assign BU8828_CLK = n906;
      wire [0 : 0] BU8828_D;
         assign BU8828_D[0] = n364;
      wire [0 : 0] BU8828_Q;
         assign n49626 = BU8828_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8828(
         .CLK(BU8828_CLK),
         .D(BU8828_D),
         .Q(BU8828_Q)
      );

      wire BU8839_CLK;
         assign BU8839_CLK = n906;
      wire [0 : 0] BU8839_D;
         assign BU8839_D[0] = n363;
      wire [0 : 0] BU8839_Q;
         assign n49625 = BU8839_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8839(
         .CLK(BU8839_CLK),
         .D(BU8839_D),
         .Q(BU8839_Q)
      );

      wire BU8850_CLK;
         assign BU8850_CLK = n906;
      wire [0 : 0] BU8850_D;
         assign BU8850_D[0] = n362;
      wire [0 : 0] BU8850_Q;
         assign n49624 = BU8850_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8850(
         .CLK(BU8850_CLK),
         .D(BU8850_D),
         .Q(BU8850_Q)
      );

      wire BU8861_CLK;
         assign BU8861_CLK = n906;
      wire [0 : 0] BU8861_D;
         assign BU8861_D[0] = n361;
      wire [0 : 0] BU8861_Q;
         assign n49623 = BU8861_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8861(
         .CLK(BU8861_CLK),
         .D(BU8861_D),
         .Q(BU8861_Q)
      );

      wire BU8872_CLK;
         assign BU8872_CLK = n906;
      wire [0 : 0] BU8872_D;
         assign BU8872_D[0] = n360;
      wire [0 : 0] BU8872_Q;
         assign n49622 = BU8872_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8872(
         .CLK(BU8872_CLK),
         .D(BU8872_D),
         .Q(BU8872_Q)
      );

      wire BU8883_CLK;
         assign BU8883_CLK = n906;
      wire [0 : 0] BU8883_D;
         assign BU8883_D[0] = n359;
      wire [0 : 0] BU8883_Q;
         assign n49621 = BU8883_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8883(
         .CLK(BU8883_CLK),
         .D(BU8883_D),
         .Q(BU8883_Q)
      );

      wire BU8894_CLK;
         assign BU8894_CLK = n906;
      wire [0 : 0] BU8894_D;
         assign BU8894_D[0] = n358;
      wire [0 : 0] BU8894_Q;
         assign n49620 = BU8894_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8894(
         .CLK(BU8894_CLK),
         .D(BU8894_D),
         .Q(BU8894_Q)
      );

      wire BU8905_CLK;
         assign BU8905_CLK = n906;
      wire [0 : 0] BU8905_D;
         assign BU8905_D[0] = n357;
      wire [0 : 0] BU8905_Q;
         assign n49619 = BU8905_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8905(
         .CLK(BU8905_CLK),
         .D(BU8905_D),
         .Q(BU8905_Q)
      );

      wire BU8916_CLK;
         assign BU8916_CLK = n906;
      wire [0 : 0] BU8916_D;
         assign BU8916_D[0] = n356;
      wire [0 : 0] BU8916_Q;
         assign n49618 = BU8916_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8916(
         .CLK(BU8916_CLK),
         .D(BU8916_D),
         .Q(BU8916_Q)
      );

      wire BU8927_CLK;
         assign BU8927_CLK = n906;
      wire [0 : 0] BU8927_D;
         assign BU8927_D[0] = n355;
      wire [0 : 0] BU8927_Q;
         assign n49617 = BU8927_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8927(
         .CLK(BU8927_CLK),
         .D(BU8927_D),
         .Q(BU8927_Q)
      );

      wire BU8938_CLK;
         assign BU8938_CLK = n906;
      wire [0 : 0] BU8938_D;
         assign BU8938_D[0] = n354;
      wire [0 : 0] BU8938_Q;
         assign n49616 = BU8938_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8938(
         .CLK(BU8938_CLK),
         .D(BU8938_D),
         .Q(BU8938_Q)
      );

      wire BU8949_CLK;
         assign BU8949_CLK = n906;
      wire [0 : 0] BU8949_D;
         assign BU8949_D[0] = n353;
      wire [0 : 0] BU8949_Q;
         assign n49615 = BU8949_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8949(
         .CLK(BU8949_CLK),
         .D(BU8949_D),
         .Q(BU8949_Q)
      );

      wire BU8960_CLK;
         assign BU8960_CLK = n906;
      wire [0 : 0] BU8960_D;
         assign BU8960_D[0] = n352;
      wire [0 : 0] BU8960_Q;
         assign n49614 = BU8960_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8960(
         .CLK(BU8960_CLK),
         .D(BU8960_D),
         .Q(BU8960_Q)
      );

      wire BU8971_CLK;
         assign BU8971_CLK = n906;
      wire [0 : 0] BU8971_D;
         assign BU8971_D[0] = n351;
      wire [0 : 0] BU8971_Q;
         assign n49613 = BU8971_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8971(
         .CLK(BU8971_CLK),
         .D(BU8971_D),
         .Q(BU8971_Q)
      );

      wire BU8982_CLK;
         assign BU8982_CLK = n906;
      wire [0 : 0] BU8982_D;
         assign BU8982_D[0] = n350;
      wire [0 : 0] BU8982_Q;
         assign n49612 = BU8982_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8982(
         .CLK(BU8982_CLK),
         .D(BU8982_D),
         .Q(BU8982_Q)
      );

      wire BU8993_CLK;
         assign BU8993_CLK = n906;
      wire [0 : 0] BU8993_D;
         assign BU8993_D[0] = n349;
      wire [0 : 0] BU8993_Q;
         assign n49611 = BU8993_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU8993(
         .CLK(BU8993_CLK),
         .D(BU8993_D),
         .Q(BU8993_Q)
      );

      wire BU9004_CLK;
         assign BU9004_CLK = n906;
      wire [0 : 0] BU9004_D;
         assign BU9004_D[0] = n348;
      wire [0 : 0] BU9004_Q;
         assign n49610 = BU9004_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU9004(
         .CLK(BU9004_CLK),
         .D(BU9004_D),
         .Q(BU9004_Q)
      );

      wire BU9015_CLK;
         assign BU9015_CLK = n906;
      wire [0 : 0] BU9015_D;
         assign BU9015_D[0] = n347;
      wire [0 : 0] BU9015_Q;
         assign n49609 = BU9015_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU9015(
         .CLK(BU9015_CLK),
         .D(BU9015_D),
         .Q(BU9015_Q)
      );

      wire BU9026_CLK;
         assign BU9026_CLK = n906;
      wire [0 : 0] BU9026_D;
         assign BU9026_D[0] = n346;
      wire [0 : 0] BU9026_Q;
         assign n49608 = BU9026_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU9026(
         .CLK(BU9026_CLK),
         .D(BU9026_D),
         .Q(BU9026_Q)
      );

      wire BU9037_CLK;
         assign BU9037_CLK = n906;
      wire [0 : 0] BU9037_D;
         assign BU9037_D[0] = n345;
      wire [0 : 0] BU9037_Q;
         assign n49607 = BU9037_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU9037(
         .CLK(BU9037_CLK),
         .D(BU9037_D),
         .Q(BU9037_Q)
      );

      wire BU9048_CLK;
         assign BU9048_CLK = n906;
      wire [0 : 0] BU9048_D;
         assign BU9048_D[0] = n344;
      wire [0 : 0] BU9048_Q;
         assign n49606 = BU9048_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         2    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU9048(
         .CLK(BU9048_CLK),
         .D(BU9048_D),
         .Q(BU9048_Q)
      );

      wire [21 : 0] BU9192_D;
         assign BU9192_D[0] = n49910;
         assign BU9192_D[1] = n49909;
         assign BU9192_D[2] = n49908;
         assign BU9192_D[3] = n49907;
         assign BU9192_D[4] = n49906;
         assign BU9192_D[5] = n49905;
         assign BU9192_D[6] = n49904;
         assign BU9192_D[7] = n49903;
         assign BU9192_D[8] = n49902;
         assign BU9192_D[9] = n49901;
         assign BU9192_D[10] = n49900;
         assign BU9192_D[11] = n49899;
         assign BU9192_D[12] = n49898;
         assign BU9192_D[13] = n49897;
         assign BU9192_D[14] = n49896;
         assign BU9192_D[15] = n49895;
         assign BU9192_D[16] = n49894;
         assign BU9192_D[17] = n49893;
         assign BU9192_D[18] = n49892;
         assign BU9192_D[19] = n49891;
         assign BU9192_D[20] = n49890;
         assign BU9192_D[21] = n49889;
      wire [21 : 0] BU9192_Q;
         assign n49932 = BU9192_Q[0];
         assign n49931 = BU9192_Q[1];
         assign n49930 = BU9192_Q[2];
         assign n49929 = BU9192_Q[3];
         assign n49928 = BU9192_Q[4];
         assign n49927 = BU9192_Q[5];
         assign n49926 = BU9192_Q[6];
         assign n49925 = BU9192_Q[7];
         assign n49924 = BU9192_Q[8];
         assign n49923 = BU9192_Q[9];
         assign n49922 = BU9192_Q[10];
         assign n49921 = BU9192_Q[11];
         assign n49920 = BU9192_Q[12];
         assign n49919 = BU9192_Q[13];
         assign n49918 = BU9192_Q[14];
         assign n49917 = BU9192_Q[15];
         assign n49916 = BU9192_Q[16];
         assign n49915 = BU9192_Q[17];
         assign n49914 = BU9192_Q[18];
         assign n49913 = BU9192_Q[19];
         assign n49912 = BU9192_Q[20];
         assign n49911 = BU9192_Q[21];
      wire BU9192_CLK;
         assign BU9192_CLK = n906;
      C_REG_FD_V7_0 #(
         "0000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         22    /* c_width*/
      )
      BU9192(
         .D(BU9192_D),
         .Q(BU9192_Q),
         .CLK(BU9192_CLK)
      );

      wire [0 : 0] BU9444_D;
         assign BU9444_D[0] = n412;
      wire [0 : 0] BU9444_Q;
         assign n51396 = BU9444_Q[0];
      wire BU9444_CLK;
         assign BU9444_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU9444(
         .D(BU9444_D),
         .Q(BU9444_Q),
         .CLK(BU9444_CLK)
      );

      wire [0 : 0] BU9451_D;
         assign BU9451_D[0] = n51396;
      wire [0 : 0] BU9451_Q;
         assign n49672 = BU9451_Q[0];
      wire BU9451_CLK;
         assign BU9451_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU9451(
         .D(BU9451_D),
         .Q(BU9451_Q),
         .CLK(BU9451_CLK)
      );

      defparam BU9061.INIT = 'h0cca;
      wire BU9061_I0;
         assign BU9061_I0 = 1'b0;
      wire BU9061_I1;
         assign BU9061_I1 = 1'b0;
      wire BU9061_I2;
         assign BU9061_I2 = n410;
      wire BU9061_I3;
         assign BU9061_I3 = n411;
      wire BU9061_O;
         assign n49910 = BU9061_O;
      LUT4       BU9061(
         .I0(BU9061_I0),
         .I1(BU9061_I1),
         .I2(BU9061_I2),
         .I3(BU9061_I3),
         .O(BU9061_O)
      );

      defparam BU9067.INIT = 'h0cca;
      wire BU9067_I0;
         assign BU9067_I0 = 1'b0;
      wire BU9067_I1;
         assign BU9067_I1 = 1'b0;
      wire BU9067_I2;
         assign BU9067_I2 = n410;
      wire BU9067_I3;
         assign BU9067_I3 = n411;
      wire BU9067_O;
         assign n49909 = BU9067_O;
      LUT4       BU9067(
         .I0(BU9067_I0),
         .I1(BU9067_I1),
         .I2(BU9067_I2),
         .I3(BU9067_I3),
         .O(BU9067_O)
      );

      defparam BU9073.INIT = 'h0cca;
      wire BU9073_I0;
         assign BU9073_I0 = 1'b0;
      wire BU9073_I1;
         assign BU9073_I1 = 1'b0;
      wire BU9073_I2;
         assign BU9073_I2 = n410;
      wire BU9073_I3;
         assign BU9073_I3 = n411;
      wire BU9073_O;
         assign n49908 = BU9073_O;
      LUT4       BU9073(
         .I0(BU9073_I0),
         .I1(BU9073_I1),
         .I2(BU9073_I2),
         .I3(BU9073_I3),
         .O(BU9073_O)
      );

      defparam BU9079.INIT = 'h0cca;
      wire BU9079_I0;
         assign BU9079_I0 = 1'b0;
      wire BU9079_I1;
         assign BU9079_I1 = 1'b0;
      wire BU9079_I2;
         assign BU9079_I2 = n410;
      wire BU9079_I3;
         assign BU9079_I3 = n411;
      wire BU9079_O;
         assign n49907 = BU9079_O;
      LUT4       BU9079(
         .I0(BU9079_I0),
         .I1(BU9079_I1),
         .I2(BU9079_I2),
         .I3(BU9079_I3),
         .O(BU9079_O)
      );

      defparam BU9085.INIT = 'h0cca;
      wire BU9085_I0;
         assign BU9085_I0 = 1'b0;
      wire BU9085_I1;
         assign BU9085_I1 = 1'b0;
      wire BU9085_I2;
         assign BU9085_I2 = n410;
      wire BU9085_I3;
         assign BU9085_I3 = n411;
      wire BU9085_O;
         assign n49906 = BU9085_O;
      LUT4       BU9085(
         .I0(BU9085_I0),
         .I1(BU9085_I1),
         .I2(BU9085_I2),
         .I3(BU9085_I3),
         .O(BU9085_O)
      );

      defparam BU9091.INIT = 'h0cca;
      wire BU9091_I0;
         assign BU9091_I0 = 1'b0;
      wire BU9091_I1;
         assign BU9091_I1 = 1'b0;
      wire BU9091_I2;
         assign BU9091_I2 = n410;
      wire BU9091_I3;
         assign BU9091_I3 = n411;
      wire BU9091_O;
         assign n49905 = BU9091_O;
      LUT4       BU9091(
         .I0(BU9091_I0),
         .I1(BU9091_I1),
         .I2(BU9091_I2),
         .I3(BU9091_I3),
         .O(BU9091_O)
      );

      defparam BU9097.INIT = 'h0cca;
      wire BU9097_I0;
         assign BU9097_I0 = 1'b0;
      wire BU9097_I1;
         assign BU9097_I1 = 1'b0;
      wire BU9097_I2;
         assign BU9097_I2 = n410;
      wire BU9097_I3;
         assign BU9097_I3 = n411;
      wire BU9097_O;
         assign n49904 = BU9097_O;
      LUT4       BU9097(
         .I0(BU9097_I0),
         .I1(BU9097_I1),
         .I2(BU9097_I2),
         .I3(BU9097_I3),
         .O(BU9097_O)
      );

      defparam BU9103.INIT = 'h0cca;
      wire BU9103_I0;
         assign BU9103_I0 = 1'b0;
      wire BU9103_I1;
         assign BU9103_I1 = 1'b0;
      wire BU9103_I2;
         assign BU9103_I2 = n410;
      wire BU9103_I3;
         assign BU9103_I3 = n411;
      wire BU9103_O;
         assign n49903 = BU9103_O;
      LUT4       BU9103(
         .I0(BU9103_I0),
         .I1(BU9103_I1),
         .I2(BU9103_I2),
         .I3(BU9103_I3),
         .O(BU9103_O)
      );

      defparam BU9109.INIT = 'h0cca;
      wire BU9109_I0;
         assign BU9109_I0 = 1'b0;
      wire BU9109_I1;
         assign BU9109_I1 = 1'b0;
      wire BU9109_I2;
         assign BU9109_I2 = n410;
      wire BU9109_I3;
         assign BU9109_I3 = n411;
      wire BU9109_O;
         assign n49902 = BU9109_O;
      LUT4       BU9109(
         .I0(BU9109_I0),
         .I1(BU9109_I1),
         .I2(BU9109_I2),
         .I3(BU9109_I3),
         .O(BU9109_O)
      );

      defparam BU9115.INIT = 'h0cca;
      wire BU9115_I0;
         assign BU9115_I0 = 1'b0;
      wire BU9115_I1;
         assign BU9115_I1 = 1'b0;
      wire BU9115_I2;
         assign BU9115_I2 = n410;
      wire BU9115_I3;
         assign BU9115_I3 = n411;
      wire BU9115_O;
         assign n49901 = BU9115_O;
      LUT4       BU9115(
         .I0(BU9115_I0),
         .I1(BU9115_I1),
         .I2(BU9115_I2),
         .I3(BU9115_I3),
         .O(BU9115_O)
      );

      defparam BU9121.INIT = 'h0cca;
      wire BU9121_I0;
         assign BU9121_I0 = 1'b0;
      wire BU9121_I1;
         assign BU9121_I1 = 1'b0;
      wire BU9121_I2;
         assign BU9121_I2 = n410;
      wire BU9121_I3;
         assign BU9121_I3 = n411;
      wire BU9121_O;
         assign n49900 = BU9121_O;
      LUT4       BU9121(
         .I0(BU9121_I0),
         .I1(BU9121_I1),
         .I2(BU9121_I2),
         .I3(BU9121_I3),
         .O(BU9121_O)
      );

      defparam BU9127.INIT = 'h0cca;
      wire BU9127_I0;
         assign BU9127_I0 = 1'b0;
      wire BU9127_I1;
         assign BU9127_I1 = 1'b0;
      wire BU9127_I2;
         assign BU9127_I2 = n410;
      wire BU9127_I3;
         assign BU9127_I3 = n411;
      wire BU9127_O;
         assign n49899 = BU9127_O;
      LUT4       BU9127(
         .I0(BU9127_I0),
         .I1(BU9127_I1),
         .I2(BU9127_I2),
         .I3(BU9127_I3),
         .O(BU9127_O)
      );

      defparam BU9133.INIT = 'h0cca;
      wire BU9133_I0;
         assign BU9133_I0 = 1'b0;
      wire BU9133_I1;
         assign BU9133_I1 = 1'b0;
      wire BU9133_I2;
         assign BU9133_I2 = n410;
      wire BU9133_I3;
         assign BU9133_I3 = n411;
      wire BU9133_O;
         assign n49898 = BU9133_O;
      LUT4       BU9133(
         .I0(BU9133_I0),
         .I1(BU9133_I1),
         .I2(BU9133_I2),
         .I3(BU9133_I3),
         .O(BU9133_O)
      );

      defparam BU9139.INIT = 'h0cca;
      wire BU9139_I0;
         assign BU9139_I0 = 1'b0;
      wire BU9139_I1;
         assign BU9139_I1 = 1'b0;
      wire BU9139_I2;
         assign BU9139_I2 = n410;
      wire BU9139_I3;
         assign BU9139_I3 = n411;
      wire BU9139_O;
         assign n49897 = BU9139_O;
      LUT4       BU9139(
         .I0(BU9139_I0),
         .I1(BU9139_I1),
         .I2(BU9139_I2),
         .I3(BU9139_I3),
         .O(BU9139_O)
      );

      defparam BU9145.INIT = 'h0cca;
      wire BU9145_I0;
         assign BU9145_I0 = 1'b0;
      wire BU9145_I1;
         assign BU9145_I1 = 1'b0;
      wire BU9145_I2;
         assign BU9145_I2 = n410;
      wire BU9145_I3;
         assign BU9145_I3 = n411;
      wire BU9145_O;
         assign n49896 = BU9145_O;
      LUT4       BU9145(
         .I0(BU9145_I0),
         .I1(BU9145_I1),
         .I2(BU9145_I2),
         .I3(BU9145_I3),
         .O(BU9145_O)
      );

      defparam BU9151.INIT = 'h0cca;
      wire BU9151_I0;
         assign BU9151_I0 = 1'b0;
      wire BU9151_I1;
         assign BU9151_I1 = 1'b0;
      wire BU9151_I2;
         assign BU9151_I2 = n410;
      wire BU9151_I3;
         assign BU9151_I3 = n411;
      wire BU9151_O;
         assign n49895 = BU9151_O;
      LUT4       BU9151(
         .I0(BU9151_I0),
         .I1(BU9151_I1),
         .I2(BU9151_I2),
         .I3(BU9151_I3),
         .O(BU9151_O)
      );

      defparam BU9157.INIT = 'h0cca;
      wire BU9157_I0;
         assign BU9157_I0 = 1'b0;
      wire BU9157_I1;
         assign BU9157_I1 = 1'b0;
      wire BU9157_I2;
         assign BU9157_I2 = n410;
      wire BU9157_I3;
         assign BU9157_I3 = n411;
      wire BU9157_O;
         assign n49894 = BU9157_O;
      LUT4       BU9157(
         .I0(BU9157_I0),
         .I1(BU9157_I1),
         .I2(BU9157_I2),
         .I3(BU9157_I3),
         .O(BU9157_O)
      );

      defparam BU9163.INIT = 'h0cca;
      wire BU9163_I0;
         assign BU9163_I0 = 1'b0;
      wire BU9163_I1;
         assign BU9163_I1 = 1'b0;
      wire BU9163_I2;
         assign BU9163_I2 = n410;
      wire BU9163_I3;
         assign BU9163_I3 = n411;
      wire BU9163_O;
         assign n49893 = BU9163_O;
      LUT4       BU9163(
         .I0(BU9163_I0),
         .I1(BU9163_I1),
         .I2(BU9163_I2),
         .I3(BU9163_I3),
         .O(BU9163_O)
      );

      defparam BU9169.INIT = 'h0cca;
      wire BU9169_I0;
         assign BU9169_I0 = 1'b0;
      wire BU9169_I1;
         assign BU9169_I1 = 1'b1;
      wire BU9169_I2;
         assign BU9169_I2 = n410;
      wire BU9169_I3;
         assign BU9169_I3 = n411;
      wire BU9169_O;
         assign n49892 = BU9169_O;
      LUT4       BU9169(
         .I0(BU9169_I0),
         .I1(BU9169_I1),
         .I2(BU9169_I2),
         .I3(BU9169_I3),
         .O(BU9169_O)
      );

      defparam BU9175.INIT = 'h0cca;
      wire BU9175_I0;
         assign BU9175_I0 = 1'b1;
      wire BU9175_I1;
         assign BU9175_I1 = 1'b1;
      wire BU9175_I2;
         assign BU9175_I2 = n410;
      wire BU9175_I3;
         assign BU9175_I3 = n411;
      wire BU9175_O;
         assign n49891 = BU9175_O;
      LUT4       BU9175(
         .I0(BU9175_I0),
         .I1(BU9175_I1),
         .I2(BU9175_I2),
         .I3(BU9175_I3),
         .O(BU9175_O)
      );

      defparam BU9181.INIT = 'h0cca;
      wire BU9181_I0;
         assign BU9181_I0 = 1'b1;
      wire BU9181_I1;
         assign BU9181_I1 = 1'b1;
      wire BU9181_I2;
         assign BU9181_I2 = n410;
      wire BU9181_I3;
         assign BU9181_I3 = n411;
      wire BU9181_O;
         assign n49890 = BU9181_O;
      LUT4       BU9181(
         .I0(BU9181_I0),
         .I1(BU9181_I1),
         .I2(BU9181_I2),
         .I3(BU9181_I3),
         .O(BU9181_O)
      );

      defparam BU9187.INIT = 'h0cca;
      wire BU9187_I0;
         assign BU9187_I0 = 1'b1;
      wire BU9187_I1;
         assign BU9187_I1 = 1'b1;
      wire BU9187_I2;
         assign BU9187_I2 = n410;
      wire BU9187_I3;
         assign BU9187_I3 = n411;
      wire BU9187_O;
         assign n49889 = BU9187_O;
      LUT4       BU9187(
         .I0(BU9187_I0),
         .I1(BU9187_I1),
         .I2(BU9187_I2),
         .I3(BU9187_I3),
         .O(BU9187_O)
      );

      defparam BU9429.INIT = 'hf0f5;
      wire BU9429_I0;
         assign BU9429_I0 = n388;
      wire BU9429_I1;
         assign BU9429_I1 = 1'b0;
      wire BU9429_I2;
         assign BU9429_I2 = n410;
      wire BU9429_I3;
         assign BU9429_I3 = n411;
      wire BU9429_O;
         assign n49955 = BU9429_O;
      LUT4       BU9429(
         .I0(BU9429_I0),
         .I1(BU9429_I1),
         .I2(BU9429_I2),
         .I3(BU9429_I3),
         .O(BU9429_O)
      );

      wire [21 : 0] BU9290_A;
         assign BU9290_A[0] = n49954;
         assign BU9290_A[1] = n49953;
         assign BU9290_A[2] = n49952;
         assign BU9290_A[3] = n49951;
         assign BU9290_A[4] = n49950;
         assign BU9290_A[5] = n49949;
         assign BU9290_A[6] = n49948;
         assign BU9290_A[7] = n49947;
         assign BU9290_A[8] = n49946;
         assign BU9290_A[9] = n49945;
         assign BU9290_A[10] = n49944;
         assign BU9290_A[11] = n49943;
         assign BU9290_A[12] = n49942;
         assign BU9290_A[13] = n49941;
         assign BU9290_A[14] = n49940;
         assign BU9290_A[15] = n49939;
         assign BU9290_A[16] = n49938;
         assign BU9290_A[17] = n49937;
         assign BU9290_A[18] = n49936;
         assign BU9290_A[19] = n49935;
         assign BU9290_A[20] = n49934;
         assign BU9290_A[21] = n49933;
      wire [21 : 0] BU9290_B;
         assign BU9290_B[0] = n49932;
         assign BU9290_B[1] = n49931;
         assign BU9290_B[2] = n49930;
         assign BU9290_B[3] = n49929;
         assign BU9290_B[4] = n49928;
         assign BU9290_B[5] = n49927;
         assign BU9290_B[6] = n49926;
         assign BU9290_B[7] = n49925;
         assign BU9290_B[8] = n49924;
         assign BU9290_B[9] = n49923;
         assign BU9290_B[10] = n49922;
         assign BU9290_B[11] = n49921;
         assign BU9290_B[12] = n49920;
         assign BU9290_B[13] = n49919;
         assign BU9290_B[14] = n49918;
         assign BU9290_B[15] = n49917;
         assign BU9290_B[16] = n49916;
         assign BU9290_B[17] = n49915;
         assign BU9290_B[18] = n49914;
         assign BU9290_B[19] = n49913;
         assign BU9290_B[20] = n49912;
         assign BU9290_B[21] = n49911;
      wire BU9290_ADD;
         assign BU9290_ADD = n49956;
      wire [21 : 0] BU9290_Q;
         assign n49671 = BU9290_Q[0];
         assign n49670 = BU9290_Q[1];
         assign n49669 = BU9290_Q[2];
         assign n49668 = BU9290_Q[3];
         assign n49667 = BU9290_Q[4];
         assign n49666 = BU9290_Q[5];
         assign n49665 = BU9290_Q[6];
         assign n49664 = BU9290_Q[7];
         assign n49663 = BU9290_Q[8];
         assign n49662 = BU9290_Q[9];
         assign n49661 = BU9290_Q[10];
         assign n49660 = BU9290_Q[11];
         assign n49659 = BU9290_Q[12];
         assign n49658 = BU9290_Q[13];
         assign n49657 = BU9290_Q[14];
         assign n49656 = BU9290_Q[15];
         assign n49655 = BU9290_Q[16];
         assign n49654 = BU9290_Q[17];
         assign n49653 = BU9290_Q[18];
         assign n49652 = BU9290_Q[19];
         assign n49651 = BU9290_Q[20];
         assign n49650 = BU9290_Q[21];
      wire BU9290_CLK;
         assign BU9290_CLK = n906;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         1    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         0    /* c_has_ce*/,
         0    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU9290(
         .A(BU9290_A),
         .B(BU9290_B),
         .ADD(BU9290_ADD),
         .Q(BU9290_Q),
         .CLK(BU9290_CLK)
      );

      wire [21 : 0] BU9241_D;
         assign BU9241_D[0] = n409;
         assign BU9241_D[1] = n408;
         assign BU9241_D[2] = n407;
         assign BU9241_D[3] = n406;
         assign BU9241_D[4] = n405;
         assign BU9241_D[5] = n404;
         assign BU9241_D[6] = n403;
         assign BU9241_D[7] = n402;
         assign BU9241_D[8] = n401;
         assign BU9241_D[9] = n400;
         assign BU9241_D[10] = n399;
         assign BU9241_D[11] = n398;
         assign BU9241_D[12] = n397;
         assign BU9241_D[13] = n396;
         assign BU9241_D[14] = n395;
         assign BU9241_D[15] = n394;
         assign BU9241_D[16] = n393;
         assign BU9241_D[17] = n392;
         assign BU9241_D[18] = n391;
         assign BU9241_D[19] = n390;
         assign BU9241_D[20] = n389;
         assign BU9241_D[21] = n388;
      wire [21 : 0] BU9241_Q;
         assign n49954 = BU9241_Q[0];
         assign n49953 = BU9241_Q[1];
         assign n49952 = BU9241_Q[2];
         assign n49951 = BU9241_Q[3];
         assign n49950 = BU9241_Q[4];
         assign n49949 = BU9241_Q[5];
         assign n49948 = BU9241_Q[6];
         assign n49947 = BU9241_Q[7];
         assign n49946 = BU9241_Q[8];
         assign n49945 = BU9241_Q[9];
         assign n49944 = BU9241_Q[10];
         assign n49943 = BU9241_Q[11];
         assign n49942 = BU9241_Q[12];
         assign n49941 = BU9241_Q[13];
         assign n49940 = BU9241_Q[14];
         assign n49939 = BU9241_Q[15];
         assign n49938 = BU9241_Q[16];
         assign n49937 = BU9241_Q[17];
         assign n49936 = BU9241_Q[18];
         assign n49935 = BU9241_Q[19];
         assign n49934 = BU9241_Q[20];
         assign n49933 = BU9241_Q[21];
      wire BU9241_CLK;
         assign BU9241_CLK = n906;
      C_REG_FD_V7_0 #(
         "0000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         22    /* c_width*/
      )
      BU9241(
         .D(BU9241_D),
         .Q(BU9241_Q),
         .CLK(BU9241_CLK)
      );

      wire [0 : 0] BU9434_D;
         assign BU9434_D[0] = n49955;
      wire [0 : 0] BU9434_Q;
         assign n49956 = BU9434_Q[0];
      wire BU9434_CLK;
         assign BU9434_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU9434(
         .D(BU9434_D),
         .Q(BU9434_Q),
         .CLK(BU9434_CLK)
      );

      wire BU9458_clk;
         assign BU9458_clk = n906;
      wire [21 : 0] BU9458_a;
         assign BU9458_a[21] = n49606;
         assign BU9458_a[20] = n49607;
         assign BU9458_a[19] = n49608;
         assign BU9458_a[18] = n49609;
         assign BU9458_a[17] = n49610;
         assign BU9458_a[16] = n49611;
         assign BU9458_a[15] = n49612;
         assign BU9458_a[14] = n49613;
         assign BU9458_a[13] = n49614;
         assign BU9458_a[12] = n49615;
         assign BU9458_a[11] = n49616;
         assign BU9458_a[10] = n49617;
         assign BU9458_a[9] = n49618;
         assign BU9458_a[8] = n49619;
         assign BU9458_a[7] = n49620;
         assign BU9458_a[6] = n49621;
         assign BU9458_a[5] = n49622;
         assign BU9458_a[4] = n49623;
         assign BU9458_a[3] = n49624;
         assign BU9458_a[2] = n49625;
         assign BU9458_a[1] = n49626;
         assign BU9458_a[0] = n49627;
      wire [21 : 0] BU9458_b;
         assign BU9458_b[21] = 1'b0;
         assign BU9458_b[20] = 1'b0;
         assign BU9458_b[19] = 1'b1;
         assign BU9458_b[18] = 1'b1;
         assign BU9458_b[17] = 1'b0;
         assign BU9458_b[16] = 1'b1;
         assign BU9458_b[15] = 1'b1;
         assign BU9458_b[14] = 1'b0;
         assign BU9458_b[13] = 1'b1;
         assign BU9458_b[12] = 1'b1;
         assign BU9458_b[11] = 1'b1;
         assign BU9458_b[10] = 1'b1;
         assign BU9458_b[9] = 1'b0;
         assign BU9458_b[8] = 1'b1;
         assign BU9458_b[7] = 1'b1;
         assign BU9458_b[6] = 1'b0;
         assign BU9458_b[5] = 1'b0;
         assign BU9458_b[4] = 1'b1;
         assign BU9458_b[3] = 1'b0;
         assign BU9458_b[2] = 1'b1;
         assign BU9458_b[1] = 1'b1;
         assign BU9458_b[0] = 1'b0;
      wire [23 : 0] BU9458_o;
      wire [23 : 0] BU9458_q;
         assign n49673 = BU9458_q[21];
         assign n49674 = BU9458_q[20];
         assign n49675 = BU9458_q[19];
         assign n49676 = BU9458_q[18];
         assign n49677 = BU9458_q[17];
         assign n49678 = BU9458_q[16];
         assign n49679 = BU9458_q[15];
         assign n49680 = BU9458_q[14];
         assign n49681 = BU9458_q[13];
         assign n49682 = BU9458_q[12];
         assign n49683 = BU9458_q[11];
         assign n49684 = BU9458_q[10];
         assign n49685 = BU9458_q[9];
         assign n49686 = BU9458_q[8];
         assign n49687 = BU9458_q[7];
         assign n49688 = BU9458_q[6];
         assign n49689 = BU9458_q[5];
         assign n49690 = BU9458_q[4];
         assign n49691 = BU9458_q[3];
         assign n49692 = BU9458_q[2];
         assign n49693 = BU9458_q[1];
         assign n49694 = BU9458_q[0];
      wire BU9458_a_signed;
         assign BU9458_a_signed = 1'b0;
      wire BU9458_loadb;
         assign BU9458_loadb = 1'b0;
      wire BU9458_load_done;
      wire BU9458_swapb;
         assign BU9458_swapb = 1'b0;
      wire BU9458_ce;
         assign BU9458_ce = 1'b1;
      wire BU9458_aclr;
         assign BU9458_aclr = 1'b0;
      wire BU9458_sclr;
         assign BU9458_sclr = 1'b0;
      wire BU9458_rfd;
      wire BU9458_nd;
         assign BU9458_nd = 1'b1;
      wire BU9458_rdy;
      MULT_GEN_V7_0 #(
         8    /* bram_addr_width*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         22    /* c_baat*/,
         0    /* c_b_constant*/,
         1    /* c_b_type*/,
         "0011011011110110010110"    /* c_b_value*/,
         22    /* c_b_width*/,
         0    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_b*/,
         0    /* c_has_ce*/,
         0    /* c_has_loadb*/,
         0    /* c_has_load_done*/,
         0    /* c_has_nd*/,
         0    /* c_has_o*/,
         1    /* c_has_q*/,
         0    /* c_has_rdy*/,
         0    /* c_has_rfd*/,
         0    /* c_has_sclr*/,
         0    /* c_has_swapb*/,
         "mem"    /* c_mem_init_prefix*/,
         0    /* c_mem_type*/,
         1    /* c_mult_type*/,
         0    /* c_output_hold*/,
         24    /* c_out_width*/,
         1    /* c_pipeline*/,
         1    /* c_reg_a_b_inputs*/,
         0    /* c_sqm_type*/,
         1    /* c_stack_adders*/,
         0    /* c_standalone*/,
         1    /* c_sync_enable*/,
         1    /* c_use_luts*/,
         1    /* c_v2_speed*/
      )
      BU9458(
         .CLK(BU9458_clk),
         .A(BU9458_a),
         .B(BU9458_b),
         .O(BU9458_o),
         .Q(BU9458_q),
         .A_SIGNED(BU9458_a_signed),
         .LOADB(BU9458_loadb),
         .LOAD_DONE(BU9458_load_done),
         .SWAPB(BU9458_swapb),
         .CE(BU9458_ce),
         .ACLR(BU9458_aclr),
         .SCLR(BU9458_sclr),
         .RFD(BU9458_rfd),
         .ND(BU9458_nd),
         .RDY(BU9458_rdy)
      );

      wire BU10552_CLK;
         assign BU10552_CLK = n906;
      wire [0 : 0] BU10552_D;
         assign BU10552_D[0] = n49671;
      wire [0 : 0] BU10552_Q;
         assign n49738 = BU10552_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10552(
         .CLK(BU10552_CLK),
         .D(BU10552_D),
         .Q(BU10552_Q)
      );

      wire BU10563_CLK;
         assign BU10563_CLK = n906;
      wire [0 : 0] BU10563_D;
         assign BU10563_D[0] = n49670;
      wire [0 : 0] BU10563_Q;
         assign n49737 = BU10563_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10563(
         .CLK(BU10563_CLK),
         .D(BU10563_D),
         .Q(BU10563_Q)
      );

      wire BU10574_CLK;
         assign BU10574_CLK = n906;
      wire [0 : 0] BU10574_D;
         assign BU10574_D[0] = n49669;
      wire [0 : 0] BU10574_Q;
         assign n49736 = BU10574_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10574(
         .CLK(BU10574_CLK),
         .D(BU10574_D),
         .Q(BU10574_Q)
      );

      wire BU10585_CLK;
         assign BU10585_CLK = n906;
      wire [0 : 0] BU10585_D;
         assign BU10585_D[0] = n49668;
      wire [0 : 0] BU10585_Q;
         assign n49735 = BU10585_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10585(
         .CLK(BU10585_CLK),
         .D(BU10585_D),
         .Q(BU10585_Q)
      );

      wire BU10596_CLK;
         assign BU10596_CLK = n906;
      wire [0 : 0] BU10596_D;
         assign BU10596_D[0] = n49667;
      wire [0 : 0] BU10596_Q;
         assign n49734 = BU10596_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10596(
         .CLK(BU10596_CLK),
         .D(BU10596_D),
         .Q(BU10596_Q)
      );

      wire BU10607_CLK;
         assign BU10607_CLK = n906;
      wire [0 : 0] BU10607_D;
         assign BU10607_D[0] = n49666;
      wire [0 : 0] BU10607_Q;
         assign n49733 = BU10607_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10607(
         .CLK(BU10607_CLK),
         .D(BU10607_D),
         .Q(BU10607_Q)
      );

      wire BU10618_CLK;
         assign BU10618_CLK = n906;
      wire [0 : 0] BU10618_D;
         assign BU10618_D[0] = n49665;
      wire [0 : 0] BU10618_Q;
         assign n49732 = BU10618_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10618(
         .CLK(BU10618_CLK),
         .D(BU10618_D),
         .Q(BU10618_Q)
      );

      wire BU10629_CLK;
         assign BU10629_CLK = n906;
      wire [0 : 0] BU10629_D;
         assign BU10629_D[0] = n49664;
      wire [0 : 0] BU10629_Q;
         assign n49731 = BU10629_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10629(
         .CLK(BU10629_CLK),
         .D(BU10629_D),
         .Q(BU10629_Q)
      );

      wire BU10640_CLK;
         assign BU10640_CLK = n906;
      wire [0 : 0] BU10640_D;
         assign BU10640_D[0] = n49663;
      wire [0 : 0] BU10640_Q;
         assign n49730 = BU10640_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10640(
         .CLK(BU10640_CLK),
         .D(BU10640_D),
         .Q(BU10640_Q)
      );

      wire BU10651_CLK;
         assign BU10651_CLK = n906;
      wire [0 : 0] BU10651_D;
         assign BU10651_D[0] = n49662;
      wire [0 : 0] BU10651_Q;
         assign n49729 = BU10651_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10651(
         .CLK(BU10651_CLK),
         .D(BU10651_D),
         .Q(BU10651_Q)
      );

      wire BU10662_CLK;
         assign BU10662_CLK = n906;
      wire [0 : 0] BU10662_D;
         assign BU10662_D[0] = n49661;
      wire [0 : 0] BU10662_Q;
         assign n49728 = BU10662_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10662(
         .CLK(BU10662_CLK),
         .D(BU10662_D),
         .Q(BU10662_Q)
      );

      wire BU10673_CLK;
         assign BU10673_CLK = n906;
      wire [0 : 0] BU10673_D;
         assign BU10673_D[0] = n49660;
      wire [0 : 0] BU10673_Q;
         assign n49727 = BU10673_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10673(
         .CLK(BU10673_CLK),
         .D(BU10673_D),
         .Q(BU10673_Q)
      );

      wire BU10684_CLK;
         assign BU10684_CLK = n906;
      wire [0 : 0] BU10684_D;
         assign BU10684_D[0] = n49659;
      wire [0 : 0] BU10684_Q;
         assign n49726 = BU10684_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10684(
         .CLK(BU10684_CLK),
         .D(BU10684_D),
         .Q(BU10684_Q)
      );

      wire BU10695_CLK;
         assign BU10695_CLK = n906;
      wire [0 : 0] BU10695_D;
         assign BU10695_D[0] = n49658;
      wire [0 : 0] BU10695_Q;
         assign n49725 = BU10695_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10695(
         .CLK(BU10695_CLK),
         .D(BU10695_D),
         .Q(BU10695_Q)
      );

      wire BU10706_CLK;
         assign BU10706_CLK = n906;
      wire [0 : 0] BU10706_D;
         assign BU10706_D[0] = n49657;
      wire [0 : 0] BU10706_Q;
         assign n49724 = BU10706_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10706(
         .CLK(BU10706_CLK),
         .D(BU10706_D),
         .Q(BU10706_Q)
      );

      wire BU10717_CLK;
         assign BU10717_CLK = n906;
      wire [0 : 0] BU10717_D;
         assign BU10717_D[0] = n49656;
      wire [0 : 0] BU10717_Q;
         assign n49723 = BU10717_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10717(
         .CLK(BU10717_CLK),
         .D(BU10717_D),
         .Q(BU10717_Q)
      );

      wire BU10728_CLK;
         assign BU10728_CLK = n906;
      wire [0 : 0] BU10728_D;
         assign BU10728_D[0] = n49655;
      wire [0 : 0] BU10728_Q;
         assign n49722 = BU10728_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10728(
         .CLK(BU10728_CLK),
         .D(BU10728_D),
         .Q(BU10728_Q)
      );

      wire BU10739_CLK;
         assign BU10739_CLK = n906;
      wire [0 : 0] BU10739_D;
         assign BU10739_D[0] = n49654;
      wire [0 : 0] BU10739_Q;
         assign n49721 = BU10739_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10739(
         .CLK(BU10739_CLK),
         .D(BU10739_D),
         .Q(BU10739_Q)
      );

      wire BU10750_CLK;
         assign BU10750_CLK = n906;
      wire [0 : 0] BU10750_D;
         assign BU10750_D[0] = n49653;
      wire [0 : 0] BU10750_Q;
         assign n49720 = BU10750_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10750(
         .CLK(BU10750_CLK),
         .D(BU10750_D),
         .Q(BU10750_Q)
      );

      wire BU10761_CLK;
         assign BU10761_CLK = n906;
      wire [0 : 0] BU10761_D;
         assign BU10761_D[0] = n49652;
      wire [0 : 0] BU10761_Q;
         assign n49719 = BU10761_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10761(
         .CLK(BU10761_CLK),
         .D(BU10761_D),
         .Q(BU10761_Q)
      );

      wire BU10772_CLK;
         assign BU10772_CLK = n906;
      wire [0 : 0] BU10772_D;
         assign BU10772_D[0] = n49651;
      wire [0 : 0] BU10772_Q;
         assign n49718 = BU10772_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10772(
         .CLK(BU10772_CLK),
         .D(BU10772_D),
         .Q(BU10772_Q)
      );

      wire BU10783_CLK;
         assign BU10783_CLK = n906;
      wire [0 : 0] BU10783_D;
         assign BU10783_D[0] = n49650;
      wire [0 : 0] BU10783_Q;
         assign n49717 = BU10783_Q[0];
      C_SHIFT_RAM_V7_0 #(
         1    /* c_addr_width*/,
         "0"    /* c_ainit_val*/,
         "0"    /* c_default_data*/,
         2    /* c_default_data_radix*/,
         5    /* c_depth*/,
         1    /* c_enable_rlocs*/,
         0    /* c_generate_mif*/,
         0    /* c_has_a*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "null.mif"    /* c_mem_init_file*/,
         2    /* c_mem_init_radix*/,
         0    /* c_read_mif*/,
         1    /* c_reg_last_bit*/,
         0    /* c_shift_type*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10783(
         .CLK(BU10783_CLK),
         .D(BU10783_D),
         .Q(BU10783_Q)
      );

      wire [0 : 0] BU10798_D;
         assign BU10798_D[0] = n49672;
      wire [0 : 0] BU10798_Q;
         assign n54122 = BU10798_Q[0];
      wire BU10798_CLK;
         assign BU10798_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10798(
         .D(BU10798_D),
         .Q(BU10798_Q),
         .CLK(BU10798_CLK)
      );

      wire [0 : 0] BU10805_D;
         assign BU10805_D[0] = n54122;
      wire [0 : 0] BU10805_Q;
         assign n54121 = BU10805_Q[0];
      wire BU10805_CLK;
         assign BU10805_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10805(
         .D(BU10805_D),
         .Q(BU10805_Q),
         .CLK(BU10805_CLK)
      );

      wire [0 : 0] BU10812_D;
         assign BU10812_D[0] = n54121;
      wire [0 : 0] BU10812_Q;
         assign n54120 = BU10812_Q[0];
      wire BU10812_CLK;
         assign BU10812_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10812(
         .D(BU10812_D),
         .Q(BU10812_Q),
         .CLK(BU10812_CLK)
      );

      wire [0 : 0] BU10819_D;
         assign BU10819_D[0] = n54120;
      wire [0 : 0] BU10819_Q;
         assign n54119 = BU10819_Q[0];
      wire BU10819_CLK;
         assign BU10819_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10819(
         .D(BU10819_D),
         .Q(BU10819_Q),
         .CLK(BU10819_CLK)
      );

      wire [0 : 0] BU10826_D;
         assign BU10826_D[0] = n54119;
      wire [0 : 0] BU10826_Q;
         assign n49739 = BU10826_Q[0];
      wire BU10826_CLK;
         assign BU10826_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU10826(
         .D(BU10826_D),
         .Q(BU10826_Q),
         .CLK(BU10826_CLK)
      );

      defparam BU10837.INIT = 'h5555;
      wire BU10837_I0;
         assign BU10837_I0 = n49673;
      wire BU10837_I1;
         assign BU10837_I1 = 1'b0;
      wire BU10837_I2;
         assign BU10837_I2 = 1'b0;
      wire BU10837_I3;
         assign BU10837_I3 = 1'b0;
      wire BU10837_O;
         assign n54327 = BU10837_O;
      LUT4       BU10837(
         .I0(BU10837_I0),
         .I1(BU10837_I1),
         .I2(BU10837_I2),
         .I3(BU10837_I3),
         .O(BU10837_O)
      );

      wire [21 : 0] BU10842_A;
         assign BU10842_A[0] = n49694;
         assign BU10842_A[1] = n49693;
         assign BU10842_A[2] = n49692;
         assign BU10842_A[3] = n49691;
         assign BU10842_A[4] = n49690;
         assign BU10842_A[5] = n49689;
         assign BU10842_A[6] = n49688;
         assign BU10842_A[7] = n49687;
         assign BU10842_A[8] = n49686;
         assign BU10842_A[9] = n49685;
         assign BU10842_A[10] = n49684;
         assign BU10842_A[11] = n49683;
         assign BU10842_A[12] = n49682;
         assign BU10842_A[13] = n49681;
         assign BU10842_A[14] = n49680;
         assign BU10842_A[15] = n49679;
         assign BU10842_A[16] = n49678;
         assign BU10842_A[17] = n49677;
         assign BU10842_A[18] = n49676;
         assign BU10842_A[19] = n49675;
         assign BU10842_A[20] = n49674;
         assign BU10842_A[21] = n49673;
      wire [21 : 0] BU10842_B;
         assign BU10842_B[0] = 1'b1;
         assign BU10842_B[1] = 1'b1;
         assign BU10842_B[2] = 1'b1;
         assign BU10842_B[3] = 1'b0;
         assign BU10842_B[4] = 1'b0;
         assign BU10842_B[5] = 1'b0;
         assign BU10842_B[6] = 1'b0;
         assign BU10842_B[7] = 1'b0;
         assign BU10842_B[8] = 1'b0;
         assign BU10842_B[9] = 1'b0;
         assign BU10842_B[10] = 1'b0;
         assign BU10842_B[11] = 1'b0;
         assign BU10842_B[12] = 1'b0;
         assign BU10842_B[13] = 1'b0;
         assign BU10842_B[14] = 1'b0;
         assign BU10842_B[15] = 1'b0;
         assign BU10842_B[16] = 1'b0;
         assign BU10842_B[17] = 1'b0;
         assign BU10842_B[18] = 1'b0;
         assign BU10842_B[19] = 1'b0;
         assign BU10842_B[20] = 1'b0;
         assign BU10842_B[21] = 1'b0;
      wire BU10842_C_IN;
         assign BU10842_C_IN = n54327;
      wire [21 : 0] BU10842_Q;
         assign n430 = BU10842_Q[4];
         assign n429 = BU10842_Q[5];
         assign n428 = BU10842_Q[6];
         assign n427 = BU10842_Q[7];
         assign n426 = BU10842_Q[8];
         assign n425 = BU10842_Q[9];
         assign n424 = BU10842_Q[10];
         assign n423 = BU10842_Q[11];
         assign n422 = BU10842_Q[12];
         assign n421 = BU10842_Q[13];
         assign n420 = BU10842_Q[14];
         assign n419 = BU10842_Q[15];
         assign n418 = BU10842_Q[16];
         assign n417 = BU10842_Q[17];
         assign n416 = BU10842_Q[18];
         assign n415 = BU10842_Q[19];
         assign n414 = BU10842_Q[20];
         assign n413 = BU10842_Q[21];
      wire BU10842_CLK;
         assign BU10842_CLK = n906;
      wire BU10842_CE;
         assign BU10842_CE = n49960;
      C_ADDSUB_V7_0 #(
         0    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         1    /* c_has_ce*/,
         1    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU10842(
         .A(BU10842_A),
         .B(BU10842_B),
         .C_IN(BU10842_C_IN),
         .Q(BU10842_Q),
         .CLK(BU10842_CLK),
         .CE(BU10842_CE)
      );

      defparam BU11124.INIT = 'he0e0;
      wire BU11124_I0;
         assign BU11124_I0 = 1'b0;
      wire BU11124_I1;
         assign BU11124_I1 = n49739;
      wire BU11124_I2;
         assign BU11124_I2 = 1'b1;
      wire BU11124_I3;
         assign BU11124_I3 = 1'b0;
      wire BU11124_O;
         assign n49960 = BU11124_O;
      LUT4       BU11124(
         .I0(BU11124_I0),
         .I1(BU11124_I1),
         .I2(BU11124_I2),
         .I3(BU11124_I3),
         .O(BU11124_O)
      );

      wire [0 : 0] BU11129_D;
         assign BU11129_D[0] = n49739;
      wire [0 : 0] BU11129_Q;
         assign n467 = BU11129_Q[0];
      wire BU11129_CLK;
         assign BU11129_CLK = n906;
      C_REG_FD_V7_0 #(
         "0"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/,
         1    /* c_width*/
      )
      BU11129(
         .D(BU11129_D),
         .Q(BU11129_Q),
         .CLK(BU11129_CLK)
      );

      defparam BU10982.INIT = 'h5555;
      wire BU10982_I0;
         assign BU10982_I0 = n49717;
      wire BU10982_I1;
         assign BU10982_I1 = 1'b0;
      wire BU10982_I2;
         assign BU10982_I2 = 1'b0;
      wire BU10982_I3;
         assign BU10982_I3 = 1'b0;
      wire BU10982_O;
         assign n55147 = BU10982_O;
      LUT4       BU10982(
         .I0(BU10982_I0),
         .I1(BU10982_I1),
         .I2(BU10982_I2),
         .I3(BU10982_I3),
         .O(BU10982_O)
      );

      wire [21 : 0] BU10987_A;
         assign BU10987_A[0] = n49738;
         assign BU10987_A[1] = n49737;
         assign BU10987_A[2] = n49736;
         assign BU10987_A[3] = n49735;
         assign BU10987_A[4] = n49734;
         assign BU10987_A[5] = n49733;
         assign BU10987_A[6] = n49732;
         assign BU10987_A[7] = n49731;
         assign BU10987_A[8] = n49730;
         assign BU10987_A[9] = n49729;
         assign BU10987_A[10] = n49728;
         assign BU10987_A[11] = n49727;
         assign BU10987_A[12] = n49726;
         assign BU10987_A[13] = n49725;
         assign BU10987_A[14] = n49724;
         assign BU10987_A[15] = n49723;
         assign BU10987_A[16] = n49722;
         assign BU10987_A[17] = n49721;
         assign BU10987_A[18] = n49720;
         assign BU10987_A[19] = n49719;
         assign BU10987_A[20] = n49718;
         assign BU10987_A[21] = n49717;
      wire [21 : 0] BU10987_B;
         assign BU10987_B[0] = 1'b1;
         assign BU10987_B[1] = 1'b1;
         assign BU10987_B[2] = 1'b1;
         assign BU10987_B[3] = 1'b0;
         assign BU10987_B[4] = 1'b0;
         assign BU10987_B[5] = 1'b0;
         assign BU10987_B[6] = 1'b0;
         assign BU10987_B[7] = 1'b0;
         assign BU10987_B[8] = 1'b0;
         assign BU10987_B[9] = 1'b0;
         assign BU10987_B[10] = 1'b0;
         assign BU10987_B[11] = 1'b0;
         assign BU10987_B[12] = 1'b0;
         assign BU10987_B[13] = 1'b0;
         assign BU10987_B[14] = 1'b0;
         assign BU10987_B[15] = 1'b0;
         assign BU10987_B[16] = 1'b0;
         assign BU10987_B[17] = 1'b0;
         assign BU10987_B[18] = 1'b0;
         assign BU10987_B[19] = 1'b0;
         assign BU10987_B[20] = 1'b0;
         assign BU10987_B[21] = 1'b0;
      wire BU10987_C_IN;
         assign BU10987_C_IN = n55147;
      wire [21 : 0] BU10987_Q;
         assign n466 = BU10987_Q[4];
         assign n465 = BU10987_Q[5];
         assign n464 = BU10987_Q[6];
         assign n463 = BU10987_Q[7];
         assign n462 = BU10987_Q[8];
         assign n461 = BU10987_Q[9];
         assign n460 = BU10987_Q[10];
         assign n459 = BU10987_Q[11];
         assign n458 = BU10987_Q[12];
         assign n457 = BU10987_Q[13];
         assign n456 = BU10987_Q[14];
         assign n455 = BU10987_Q[15];
         assign n454 = BU10987_Q[16];
         assign n453 = BU10987_Q[17];
         assign n452 = BU10987_Q[18];
         assign n451 = BU10987_Q[19];
         assign n450 = BU10987_Q[20];
         assign n449 = BU10987_Q[21];
      wire BU10987_CLK;
         assign BU10987_CLK = n906;
      wire BU10987_CE;
         assign BU10987_CE = n49960;
      C_ADDSUB_V7_0 #(
         0    /* c_add_mode*/,
         "0000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         22    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000"    /* c_b_value*/,
         22    /* c_b_width*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_add*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_a_signed*/,
         0    /* c_has_bypass*/,
         0    /* c_has_bypass_with_cin*/,
         0    /* c_has_b_in*/,
         0    /* c_has_b_out*/,
         0    /* c_has_b_signed*/,
         1    /* c_has_ce*/,
         1    /* c_has_c_in*/,
         0    /* c_has_c_out*/,
         0    /* c_has_ovfl*/,
         1    /* c_has_q*/,
         0    /* c_has_q_b_out*/,
         0    /* c_has_q_c_out*/,
         0    /* c_has_q_ovfl*/,
         1    /* c_has_s*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         21    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         22    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU10987(
         .A(BU10987_A),
         .B(BU10987_B),
         .C_IN(BU10987_C_IN),
         .Q(BU10987_Q),
         .CLK(BU10987_CLK),
         .CE(BU10987_CE)
      );

      wire BU11132_I;
         assign BU11132_I = n430;
      wire BU11132_O;
      BUF       BU11132(
         .I(BU11132_I),
         .O(BU11132_O)
      );

      wire BU11133_I;
         assign BU11133_I = n429;
      wire BU11133_O;
      BUF       BU11133(
         .I(BU11133_I),
         .O(BU11133_O)
      );

      wire BU11134_I;
         assign BU11134_I = n428;
      wire BU11134_O;
      BUF       BU11134(
         .I(BU11134_I),
         .O(BU11134_O)
      );

      wire BU11135_I;
         assign BU11135_I = n427;
      wire BU11135_O;
      BUF       BU11135(
         .I(BU11135_I),
         .O(BU11135_O)
      );

      wire BU11136_I;
         assign BU11136_I = n426;
      wire BU11136_O;
      BUF       BU11136(
         .I(BU11136_I),
         .O(BU11136_O)
      );

      wire BU11137_I;
         assign BU11137_I = n425;
      wire BU11137_O;
      BUF       BU11137(
         .I(BU11137_I),
         .O(BU11137_O)
      );

      wire BU11138_I;
         assign BU11138_I = n424;
      wire BU11138_O;
      BUF       BU11138(
         .I(BU11138_I),
         .O(BU11138_O)
      );

      wire BU11139_I;
         assign BU11139_I = n423;
      wire BU11139_O;
      BUF       BU11139(
         .I(BU11139_I),
         .O(BU11139_O)
      );

      wire BU11140_I;
         assign BU11140_I = n422;
      wire BU11140_O;
      BUF       BU11140(
         .I(BU11140_I),
         .O(BU11140_O)
      );

      wire BU11141_I;
         assign BU11141_I = n421;
      wire BU11141_O;
      BUF       BU11141(
         .I(BU11141_I),
         .O(BU11141_O)
      );

      wire BU11142_I;
         assign BU11142_I = n420;
      wire BU11142_O;
      BUF       BU11142(
         .I(BU11142_I),
         .O(BU11142_O)
      );

      wire BU11143_I;
         assign BU11143_I = n419;
      wire BU11143_O;
      BUF       BU11143(
         .I(BU11143_I),
         .O(BU11143_O)
      );

      wire BU11144_I;
         assign BU11144_I = n418;
      wire BU11144_O;
      BUF       BU11144(
         .I(BU11144_I),
         .O(BU11144_O)
      );

      wire BU11145_I;
         assign BU11145_I = n417;
      wire BU11145_O;
      BUF       BU11145(
         .I(BU11145_I),
         .O(BU11145_O)
      );

      wire BU11146_I;
         assign BU11146_I = n416;
      wire BU11146_O;
      BUF       BU11146(
         .I(BU11146_I),
         .O(BU11146_O)
      );

      wire BU11147_I;
         assign BU11147_I = n415;
      wire BU11147_O;
      BUF       BU11147(
         .I(BU11147_I),
         .O(BU11147_O)
      );

      wire BU11148_I;
         assign BU11148_I = n414;
      wire BU11148_O;
      BUF       BU11148(
         .I(BU11148_I),
         .O(BU11148_O)
      );

      wire BU11149_I;
         assign BU11149_I = n413;
      wire BU11149_O;
      BUF       BU11149(
         .I(BU11149_I),
         .O(BU11149_O)
      );

      wire BU11150_I;
         assign BU11150_I = n466;
      wire BU11150_O;
      BUF       BU11150(
         .I(BU11150_I),
         .O(BU11150_O)
      );

      wire BU11151_I;
         assign BU11151_I = n465;
      wire BU11151_O;
      BUF       BU11151(
         .I(BU11151_I),
         .O(BU11151_O)
      );

      wire BU11152_I;
         assign BU11152_I = n464;
      wire BU11152_O;
      BUF       BU11152(
         .I(BU11152_I),
         .O(BU11152_O)
      );

      wire BU11153_I;
         assign BU11153_I = n463;
      wire BU11153_O;
      BUF       BU11153(
         .I(BU11153_I),
         .O(BU11153_O)
      );

      wire BU11154_I;
         assign BU11154_I = n462;
      wire BU11154_O;
      BUF       BU11154(
         .I(BU11154_I),
         .O(BU11154_O)
      );

      wire BU11155_I;
         assign BU11155_I = n461;
      wire BU11155_O;
      BUF       BU11155(
         .I(BU11155_I),
         .O(BU11155_O)
      );

      wire BU11156_I;
         assign BU11156_I = n460;
      wire BU11156_O;
      BUF       BU11156(
         .I(BU11156_I),
         .O(BU11156_O)
      );

      wire BU11157_I;
         assign BU11157_I = n459;
      wire BU11157_O;
      BUF       BU11157(
         .I(BU11157_I),
         .O(BU11157_O)
      );

      wire BU11158_I;
         assign BU11158_I = n458;
      wire BU11158_O;
      BUF       BU11158(
         .I(BU11158_I),
         .O(BU11158_O)
      );

      wire BU11159_I;
         assign BU11159_I = n457;
      wire BU11159_O;
      BUF       BU11159(
         .I(BU11159_I),
         .O(BU11159_O)
      );

      wire BU11160_I;
         assign BU11160_I = n456;
      wire BU11160_O;
      BUF       BU11160(
         .I(BU11160_I),
         .O(BU11160_O)
      );

      wire BU11161_I;
         assign BU11161_I = n455;
      wire BU11161_O;
      BUF       BU11161(
         .I(BU11161_I),
         .O(BU11161_O)
      );

      wire BU11162_I;
         assign BU11162_I = n454;
      wire BU11162_O;
      BUF       BU11162(
         .I(BU11162_I),
         .O(BU11162_O)
      );

      wire BU11163_I;
         assign BU11163_I = n453;
      wire BU11163_O;
      BUF       BU11163(
         .I(BU11163_I),
         .O(BU11163_O)
      );

      wire BU11164_I;
         assign BU11164_I = n452;
      wire BU11164_O;
      BUF       BU11164(
         .I(BU11164_I),
         .O(BU11164_O)
      );

      wire BU11165_I;
         assign BU11165_I = n451;
      wire BU11165_O;
      BUF       BU11165(
         .I(BU11165_I),
         .O(BU11165_O)
      );

      wire BU11166_I;
         assign BU11166_I = n450;
      wire BU11166_O;
      BUF       BU11166(
         .I(BU11166_I),
         .O(BU11166_O)
      );

      wire BU11167_I;
         assign BU11167_I = n449;
      wire BU11167_O;
      BUF       BU11167(
         .I(BU11167_I),
         .O(BU11167_O)
      );

      wire BU11168_I;
         assign BU11168_I = n467;
      wire BU11168_O;
      BUF       BU11168(
         .I(BU11168_I),
         .O(BU11168_O)
      );

//synthesis translate_on

endmodule
