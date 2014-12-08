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
   output [22 : 0] x_out;
   output [22 : 0] phase_out;
   output rdy;
//synthesis translate_off
   wire n0 = 1'b0;
   wire n1 = 1'b1;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
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
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
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
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n441;
   wire n442;
   wire n443;
   wire n444;
   wire n445;
   wire n446;
   wire n475;
   wire n476;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n487;
   wire n488;
   wire n489;
   wire n490;
   wire n491;
   wire n492;
   wire n493;
   wire n494;
   wire n495;
   wire n496;
   wire n497;
   wire n498;
   wire n499;
   wire n500;
   wire n501;
   wire n502;
   wire n503;
   wire n504;
   wire n505;
   wire n506;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n511;
   wire n512;
   wire n513;
   wire n514;
   wire n515;
   wire n516;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n526;
   wire n527;
   wire n528;
   wire n552;
   wire n553;
   wire n554;
   wire n555;
   wire n556;
   wire n557;
   wire n558;
   wire n559;
   wire n560;
   wire n561;
   wire n562;
   wire n563;
   wire n564;
   wire n565;
   wire n566;
   wire n567;
   wire n568;
   wire n569;
   wire n570;
   wire n571;
   wire n572;
   wire n573;
   wire n574;
   wire n575;
   wire n1088;
   wire n1095;
   wire n1096;
   wire n1097;
   wire n1098;
   wire n1099;
   wire n1100;
   wire n1101;
   wire n1102;
   wire n1103;
   wire n1104;
   wire n1105;
   wire n1106;
   wire n1107;
   wire n1108;
   wire n1109;
   wire n1110;
   wire n1111;
   wire n1112;
   wire n1113;
   wire n1114;
   wire n1115;
   wire n1116;
   wire n1117;
   wire n1118;
   wire n1119;
   wire n1120;
   wire n1121;
   wire n1122;
   wire n1123;
   wire n1124;
   wire n1125;
   wire n1126;
   wire n1127;
   wire n1128;
   wire n1129;
   wire n1130;
   wire n1131;
   wire n1132;
   wire n1133;
   wire n1134;
   wire n1135;
   wire n1136;
   wire n1137;
   wire n1138;
   wire n1139;
   wire n1140;
   wire n1141;
   wire n1142;
   wire n1143;
   wire n1144;
   wire n1145;
   wire n1146;
   wire n1147;
   wire n1148;
   wire n1149;
   wire n1150;
   wire n1179;
   wire n1465;
   wire n1494;
   wire n1525;
   wire n1526;
   wire n1527;
   wire n1528;
   wire n1529;
   wire n1530;
   wire n1531;
   wire n1532;
   wire n1533;
   wire n1534;
   wire n1535;
   wire n1536;
   wire n1537;
   wire n1538;
   wire n1539;
   wire n1540;
   wire n1541;
   wire n1542;
   wire n1543;
   wire n1544;
   wire n1545;
   wire n1546;
   wire n1547;
   wire n1548;
   wire n1549;
   wire n1550;
   wire n1551;
   wire n1552;
   wire n1553;
   wire n1554;
   wire n1555;
   wire n1556;
   wire n1557;
   wire n1558;
   wire n1559;
   wire n1560;
   wire n1561;
   wire n1562;
   wire n1563;
   wire n1564;
   wire n1565;
   wire n1566;
   wire n1567;
   wire n1568;
   wire n1569;
   wire n1570;
   wire n1571;
   wire n1572;
   wire n1573;
   wire n1574;
   wire n1575;
   wire n1576;
   wire n1577;
   wire n1578;
   wire n1579;
   wire n1580;
   wire n1609;
   wire n1610;
   wire n1611;
   wire n1612;
   wire n1613;
   wire n1614;
   wire n1615;
   wire n1616;
   wire n1617;
   wire n1618;
   wire n1619;
   wire n1620;
   wire n1621;
   wire n1622;
   wire n1623;
   wire n1624;
   wire n1625;
   wire n1626;
   wire n1627;
   wire n1628;
   wire n1629;
   wire n1630;
   wire n1631;
   wire n1632;
   wire n1633;
   wire n1634;
   wire n1635;
   wire n1636;
   wire n1637;
   wire n1638;
   wire n1639;
   wire n1640;
   wire n1641;
   wire n1642;
   wire n1643;
   wire n1644;
   wire n1645;
   wire n1646;
   wire n1647;
   wire n1648;
   wire n1649;
   wire n1650;
   wire n1651;
   wire n1652;
   wire n1653;
   wire n1654;
   wire n1655;
   wire n1656;
   wire n1657;
   wire n1658;
   wire n1659;
   wire n1660;
   wire n1661;
   wire n1662;
   wire n1663;
   wire n1664;
   wire n1665;
   wire n1666;
   wire n1845;
   wire n1846;
   wire n1847;
   wire n7236;
   wire n7237;
   wire n7238;
   wire n7239;
   wire n7240;
   wire n7241;
   wire n7242;
   wire n7243;
   wire n7244;
   wire n7245;
   wire n7246;
   wire n7247;
   wire n7248;
   wire n7249;
   wire n7250;
   wire n7251;
   wire n7252;
   wire n7253;
   wire n7254;
   wire n7255;
   wire n7256;
   wire n7257;
   wire n7258;
   wire n7259;
   wire n7260;
   wire n7261;
   wire n7262;
   wire n7263;
   wire n7264;
   wire n7265;
   wire n7266;
   wire n7267;
   wire n7268;
   wire n7269;
   wire n7270;
   wire n7271;
   wire n7272;
   wire n7273;
   wire n7274;
   wire n7275;
   wire n7276;
   wire n7277;
   wire n7278;
   wire n7279;
   wire n7280;
   wire n7281;
   wire n7282;
   wire n7283;
   wire n7284;
   wire n7285;
   wire n7286;
   wire n7287;
   wire n7288;
   wire n7289;
   wire n7290;
   wire n7291;
   wire n7292;
   wire n7293;
   wire n7294;
   wire n7295;
   wire n7296;
   wire n7297;
   wire n7298;
   wire n7299;
   wire n7300;
   wire n7301;
   wire n7302;
   wire n7303;
   wire n7304;
   wire n7305;
   wire n7306;
   wire n7307;
   wire n7308;
   wire n7309;
   wire n7310;
   wire n7311;
   wire n7312;
   wire n7313;
   wire n7314;
   wire n7315;
   wire n7316;
   wire n7317;
   wire n7318;
   wire n7319;
   wire n7320;
   wire n7321;
   wire n7322;
   wire n7323;
   wire n7324;
   wire n7325;
   wire n7326;
   wire n7327;
   wire n7328;
   wire n7329;
   wire n7330;
   wire n7331;
   wire n7332;
   wire n7333;
   wire n7334;
   wire n7335;
   wire n7336;
   wire n7337;
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
   wire n7668;
   wire n7669;
   wire n7670;
   wire n7671;
   wire n7672;
   wire n7673;
   wire n7674;
   wire n7675;
   wire n7676;
   wire n7677;
   wire n7678;
   wire n7679;
   wire n7680;
   wire n7681;
   wire n7682;
   wire n7683;
   wire n7684;
   wire n7685;
   wire n7686;
   wire n7687;
   wire n7688;
   wire n7689;
   wire n7690;
   wire n7691;
   wire n7692;
   wire n7693;
   wire n7694;
   wire n7695;
   wire n7696;
   wire n7697;
   wire n7698;
   wire n7699;
   wire n7700;
   wire n7701;
   wire n7702;
   wire n7703;
   wire n7704;
   wire n7705;
   wire n7706;
   wire n7707;
   wire n7708;
   wire n7709;
   wire n7710;
   wire n7711;
   wire n7712;
   wire n7713;
   wire n7714;
   wire n7715;
   wire n7716;
   wire n7717;
   wire n7718;
   wire n7719;
   wire n7720;
   wire n7721;
   wire n7722;
   wire n7723;
   wire n7724;
   wire n7725;
   wire n7726;
   wire n7727;
   wire n7728;
   wire n7729;
   wire n7730;
   wire n7731;
   wire n7732;
   wire n7733;
   wire n7734;
   wire n7735;
   wire n7736;
   wire n7737;
   wire n7738;
   wire n7739;
   wire n7740;
   wire n7741;
   wire n7742;
   wire n7743;
   wire n7744;
   wire n7745;
   wire n7746;
   wire n7747;
   wire n7748;
   wire n7749;
   wire n7750;
   wire n7751;
   wire n7752;
   wire n7753;
   wire n7754;
   wire n7755;
   wire n7756;
   wire n7757;
   wire n7758;
   wire n7759;
   wire n7760;
   wire n7761;
   wire n7762;
   wire n7763;
   wire n7764;
   wire n7765;
   wire n7766;
   wire n7767;
   wire n7768;
   wire n7769;
   wire n7770;
   wire n7771;
   wire n7772;
   wire n7773;
   wire n7774;
   wire n7775;
   wire n7776;
   wire n7777;
   wire n7778;
   wire n7779;
   wire n7780;
   wire n7781;
   wire n7782;
   wire n7783;
   wire n7784;
   wire n7785;
   wire n7786;
   wire n7787;
   wire n7788;
   wire n7789;
   wire n7790;
   wire n7791;
   wire n7792;
   wire n7793;
   wire n7794;
   wire n7795;
   wire n8468;
   wire n8469;
   wire n8470;
   wire n8471;
   wire n8472;
   wire n8473;
   wire n8474;
   wire n8475;
   wire n8476;
   wire n8477;
   wire n8478;
   wire n8479;
   wire n8480;
   wire n8481;
   wire n8482;
   wire n8483;
   wire n8484;
   wire n8485;
   wire n8486;
   wire n8487;
   wire n8488;
   wire n8489;
   wire n8490;
   wire n8491;
   wire n8492;
   wire n8493;
   wire n8494;
   wire n8495;
   wire n8496;
   wire n8497;
   wire n8498;
   wire n8499;
   wire n8500;
   wire n8501;
   wire n8502;
   wire n8503;
   wire n8504;
   wire n8505;
   wire n8506;
   wire n8507;
   wire n8508;
   wire n8509;
   wire n8510;
   wire n8511;
   wire n8512;
   wire n8513;
   wire n8514;
   wire n8515;
   wire n8516;
   wire n8517;
   wire n8518;
   wire n8519;
   wire n8520;
   wire n8521;
   wire n8522;
   wire n8523;
   wire n8524;
   wire n8525;
   wire n8526;
   wire n8527;
   wire n8528;
   wire n8529;
   wire n8530;
   wire n8531;
   wire n8532;
   wire n8533;
   wire n8534;
   wire n8535;
   wire n8536;
   wire n8537;
   wire n8538;
   wire n8539;
   wire n8540;
   wire n8541;
   wire n8542;
   wire n8543;
   wire n8544;
   wire n8545;
   wire n8546;
   wire n8547;
   wire n8548;
   wire n8549;
   wire n8550;
   wire n8551;
   wire n8552;
   wire n8553;
   wire n8554;
   wire n8555;
   wire n8556;
   wire n8557;
   wire n8558;
   wire n8559;
   wire n8560;
   wire n8561;
   wire n8562;
   wire n8563;
   wire n8564;
   wire n8565;
   wire n8566;
   wire n8567;
   wire n8568;
   wire n8569;
   wire n8570;
   wire n8571;
   wire n8572;
   wire n8573;
   wire n8574;
   wire n8575;
   wire n8576;
   wire n8577;
   wire n8578;
   wire n8579;
   wire n8580;
   wire n8581;
   wire n8582;
   wire n8583;
   wire n8584;
   wire n8585;
   wire n8586;
   wire n8587;
   wire n8588;
   wire n8589;
   wire n8590;
   wire n8591;
   wire n8592;
   wire n8593;
   wire n8594;
   wire n8595;
   wire n8596;
   wire n8597;
   wire n8598;
   wire n8599;
   wire n8600;
   wire n8601;
   wire n8602;
   wire n8603;
   wire n8604;
   wire n8605;
   wire n8606;
   wire n8607;
   wire n8608;
   wire n8609;
   wire n8610;
   wire n8611;
   wire n8612;
   wire n8613;
   wire n8614;
   wire n8615;
   wire n8616;
   wire n8617;
   wire n8618;
   wire n8619;
   wire n8620;
   wire n8621;
   wire n8622;
   wire n8623;
   wire n8624;
   wire n8625;
   wire n8626;
   wire n8627;
   wire n8628;
   wire n8629;
   wire n8630;
   wire n8631;
   wire n8632;
   wire n8633;
   wire n8634;
   wire n8635;
   wire n8636;
   wire n8637;
   wire n8638;
   wire n8639;
   wire n8640;
   wire n8641;
   wire n8642;
   wire n8643;
   wire n8644;
   wire n8645;
   wire n8646;
   wire n8647;
   wire n8648;
   wire n8649;
   wire n8650;
   wire n8651;
   wire n8652;
   wire n8653;
   wire n8654;
   wire n8655;
   wire n8656;
   wire n8657;
   wire n8658;
   wire n8659;
   wire n8660;
   wire n8661;
   wire n8662;
   wire n8663;
   wire n8664;
   wire n8665;
   wire n8666;
   wire n8667;
   wire n8668;
   wire n8669;
   wire n8670;
   wire n8671;
   wire n8672;
   wire n8673;
   wire n8674;
   wire n8675;
   wire n8676;
   wire n8677;
   wire n8678;
   wire n8679;
   wire n8680;
   wire n8681;
   wire n8682;
   wire n8683;
   wire n8684;
   wire n8685;
   wire n8686;
   wire n8687;
   wire n8688;
   wire n8689;
   wire n8690;
   wire n8691;
   wire n8692;
   wire n8693;
   wire n8694;
   wire n8695;
   wire n8696;
   wire n8697;
   wire n8698;
   wire n8699;
   wire n8700;
   wire n8701;
   wire n8702;
   wire n8703;
   wire n8704;
   wire n8705;
   wire n8706;
   wire n8707;
   wire n8708;
   wire n8709;
   wire n8710;
   wire n8711;
   wire n8712;
   wire n8713;
   wire n8714;
   wire n8715;
   wire n8716;
   wire n8717;
   wire n8718;
   wire n8719;
   wire n8720;
   wire n8721;
   wire n8722;
   wire n8723;
   wire n8724;
   wire n8725;
   wire n8726;
   wire n8727;
   wire n8728;
   wire n8729;
   wire n8730;
   wire n8731;
   wire n8732;
   wire n8733;
   wire n8734;
   wire n8735;
   wire n8736;
   wire n8737;
   wire n8738;
   wire n8739;
   wire n8740;
   wire n8741;
   wire n8742;
   wire n8743;
   wire n8744;
   wire n8745;
   wire n8746;
   wire n8747;
   wire n8748;
   wire n8749;
   wire n8750;
   wire n8751;
   wire n8752;
   wire n8753;
   wire n8754;
   wire n8755;
   wire n8756;
   wire n8757;
   wire n8758;
   wire n8759;
   wire n8760;
   wire n8761;
   wire n8762;
   wire n8763;
   wire n8764;
   wire n8765;
   wire n8766;
   wire n8767;
   wire n8768;
   wire n8769;
   wire n8770;
   wire n8771;
   wire n8772;
   wire n8773;
   wire n8774;
   wire n8775;
   wire n8776;
   wire n8777;
   wire n8778;
   wire n8779;
   wire n8780;
   wire n8781;
   wire n8782;
   wire n8783;
   wire n8784;
   wire n8785;
   wire n8786;
   wire n8787;
   wire n8788;
   wire n8789;
   wire n8790;
   wire n8791;
   wire n8792;
   wire n8793;
   wire n8794;
   wire n8795;
   wire n8796;
   wire n8797;
   wire n8798;
   wire n8799;
   wire n8800;
   wire n8801;
   wire n8802;
   wire n8803;
   wire n8804;
   wire n8805;
   wire n8806;
   wire n8807;
   wire n8808;
   wire n8809;
   wire n8810;
   wire n8811;
   wire n8812;
   wire n8813;
   wire n8814;
   wire n8815;
   wire n8816;
   wire n8817;
   wire n8818;
   wire n8819;
   wire n8820;
   wire n8821;
   wire n8822;
   wire n8823;
   wire n8824;
   wire n8825;
   wire n8826;
   wire n8827;
   wire n8828;
   wire n8829;
   wire n8830;
   wire n8831;
   wire n8832;
   wire n8833;
   wire n8834;
   wire n8835;
   wire n8836;
   wire n8837;
   wire n8838;
   wire n8839;
   wire n8840;
   wire n8841;
   wire n8842;
   wire n8843;
   wire n8844;
   wire n8845;
   wire n8846;
   wire n8847;
   wire n8848;
   wire n8849;
   wire n8850;
   wire n8851;
   wire n8852;
   wire n8853;
   wire n8854;
   wire n8855;
   wire n8856;
   wire n8857;
   wire n8858;
   wire n8859;
   wire n8860;
   wire n8861;
   wire n8862;
   wire n8863;
   wire n8864;
   wire n8865;
   wire n8866;
   wire n8867;
   wire n8868;
   wire n8869;
   wire n8870;
   wire n8871;
   wire n8872;
   wire n8873;
   wire n8874;
   wire n8875;
   wire n8876;
   wire n8877;
   wire n8878;
   wire n8879;
   wire n8880;
   wire n8881;
   wire n8882;
   wire n8883;
   wire n8884;
   wire n8885;
   wire n8886;
   wire n8887;
   wire n8888;
   wire n8889;
   wire n8890;
   wire n8891;
   wire n8892;
   wire n8893;
   wire n8894;
   wire n8895;
   wire n8896;
   wire n8897;
   wire n8898;
   wire n8899;
   wire n8900;
   wire n8901;
   wire n8902;
   wire n8903;
   wire n8904;
   wire n8905;
   wire n8906;
   wire n8907;
   wire n8908;
   wire n8909;
   wire n8910;
   wire n8911;
   wire n8912;
   wire n8913;
   wire n8914;
   wire n8915;
   wire n8916;
   wire n8917;
   wire n8918;
   wire n8919;
   wire n8920;
   wire n8921;
   wire n8922;
   wire n8923;
   wire n8924;
   wire n8925;
   wire n8926;
   wire n8927;
   wire n8928;
   wire n8929;
   wire n8930;
   wire n8931;
   wire n8932;
   wire n8933;
   wire n8934;
   wire n8935;
   wire n8936;
   wire n8937;
   wire n8938;
   wire n8939;
   wire n8940;
   wire n8941;
   wire n8942;
   wire n8943;
   wire n8944;
   wire n8945;
   wire n8946;
   wire n8947;
   wire n8948;
   wire n8949;
   wire n8950;
   wire n8951;
   wire n8952;
   wire n8953;
   wire n8954;
   wire n8955;
   wire n8956;
   wire n8957;
   wire n8958;
   wire n8959;
   wire n8960;
   wire n8961;
   wire n8962;
   wire n8963;
   wire n8964;
   wire n8965;
   wire n8966;
   wire n8967;
   wire n8968;
   wire n8969;
   wire n8970;
   wire n8971;
   wire n8972;
   wire n8973;
   wire n8974;
   wire n8975;
   wire n8976;
   wire n8977;
   wire n8978;
   wire n8979;
   wire n8980;
   wire n8981;
   wire n8982;
   wire n8983;
   wire n8984;
   wire n8985;
   wire n8986;
   wire n8987;
   wire n8988;
   wire n8989;
   wire n8990;
   wire n8991;
   wire n8992;
   wire n8993;
   wire n8994;
   wire n8995;
   wire n8996;
   wire n8997;
   wire n8998;
   wire n8999;
   wire n9000;
   wire n9001;
   wire n9002;
   wire n9003;
   wire n9004;
   wire n9005;
   wire n9006;
   wire n9007;
   wire n9008;
   wire n9009;
   wire n9010;
   wire n9011;
   wire n9012;
   wire n9013;
   wire n9014;
   wire n9015;
   wire n9016;
   wire n9017;
   wire n9018;
   wire n9019;
   wire n9020;
   wire n9021;
   wire n9022;
   wire n9023;
   wire n9024;
   wire n9025;
   wire n9026;
   wire n9027;
   wire n9700;
   wire n9701;
   wire n9702;
   wire n9703;
   wire n9704;
   wire n9705;
   wire n9706;
   wire n9707;
   wire n9708;
   wire n9709;
   wire n9710;
   wire n9711;
   wire n9712;
   wire n9713;
   wire n9714;
   wire n9715;
   wire n9716;
   wire n9717;
   wire n9718;
   wire n9719;
   wire n9720;
   wire n9721;
   wire n9722;
   wire n9723;
   wire n9724;
   wire n9725;
   wire n9726;
   wire n9727;
   wire n9728;
   wire n9729;
   wire n9730;
   wire n9731;
   wire n9732;
   wire n9733;
   wire n9734;
   wire n9735;
   wire n9736;
   wire n9737;
   wire n9738;
   wire n9739;
   wire n9740;
   wire n9741;
   wire n9742;
   wire n9743;
   wire n9744;
   wire n9745;
   wire n9746;
   wire n9747;
   wire n9748;
   wire n9749;
   wire n9750;
   wire n9751;
   wire n9752;
   wire n9753;
   wire n9754;
   wire n9755;
   wire n9756;
   wire n9757;
   wire n9758;
   wire n9759;
   wire n9760;
   wire n9761;
   wire n9762;
   wire n9763;
   wire n9764;
   wire n9765;
   wire n9766;
   wire n9767;
   wire n9768;
   wire n9769;
   wire n9770;
   wire n9771;
   wire n9772;
   wire n9773;
   wire n9774;
   wire n9775;
   wire n9776;
   wire n9777;
   wire n9778;
   wire n9779;
   wire n9780;
   wire n9781;
   wire n9782;
   wire n9783;
   wire n9784;
   wire n9785;
   wire n9786;
   wire n9787;
   wire n9788;
   wire n9789;
   wire n9790;
   wire n9791;
   wire n9792;
   wire n9793;
   wire n9794;
   wire n9795;
   wire n9796;
   wire n9797;
   wire n9798;
   wire n9799;
   wire n9800;
   wire n9801;
   wire n9802;
   wire n9803;
   wire n9804;
   wire n9805;
   wire n9806;
   wire n9807;
   wire n9808;
   wire n9809;
   wire n9810;
   wire n9811;
   wire n9812;
   wire n9813;
   wire n9814;
   wire n9815;
   wire n9816;
   wire n9817;
   wire n9818;
   wire n9819;
   wire n9820;
   wire n9821;
   wire n9822;
   wire n9823;
   wire n9824;
   wire n9825;
   wire n9826;
   wire n9827;
   wire n9828;
   wire n9829;
   wire n9830;
   wire n9831;
   wire n9832;
   wire n9833;
   wire n9834;
   wire n9835;
   wire n9836;
   wire n9837;
   wire n9838;
   wire n9839;
   wire n9840;
   wire n9841;
   wire n9842;
   wire n9843;
   wire n9844;
   wire n9845;
   wire n9846;
   wire n9847;
   wire n9848;
   wire n9849;
   wire n9850;
   wire n9851;
   wire n9852;
   wire n9853;
   wire n9854;
   wire n9855;
   wire n9856;
   wire n9857;
   wire n9858;
   wire n9859;
   wire n9860;
   wire n9861;
   wire n9862;
   wire n9863;
   wire n9864;
   wire n9865;
   wire n9866;
   wire n9867;
   wire n9868;
   wire n9869;
   wire n9870;
   wire n9871;
   wire n9872;
   wire n9873;
   wire n9874;
   wire n9875;
   wire n9876;
   wire n9877;
   wire n9878;
   wire n9879;
   wire n9880;
   wire n9881;
   wire n9882;
   wire n9883;
   wire n9884;
   wire n9885;
   wire n9886;
   wire n9887;
   wire n9888;
   wire n9889;
   wire n9890;
   wire n9891;
   wire n9892;
   wire n9893;
   wire n9894;
   wire n9895;
   wire n9896;
   wire n9897;
   wire n9898;
   wire n9899;
   wire n9900;
   wire n9901;
   wire n9902;
   wire n9903;
   wire n9904;
   wire n9905;
   wire n9906;
   wire n9907;
   wire n9908;
   wire n9909;
   wire n9910;
   wire n9911;
   wire n9912;
   wire n9913;
   wire n9914;
   wire n9915;
   wire n9916;
   wire n9917;
   wire n9918;
   wire n9919;
   wire n9920;
   wire n9921;
   wire n9922;
   wire n9923;
   wire n9924;
   wire n9925;
   wire n9926;
   wire n9927;
   wire n9928;
   wire n9929;
   wire n9930;
   wire n9931;
   wire n9932;
   wire n9933;
   wire n9934;
   wire n9935;
   wire n9936;
   wire n9937;
   wire n9938;
   wire n9939;
   wire n9940;
   wire n9941;
   wire n9942;
   wire n9943;
   wire n9944;
   wire n9945;
   wire n9946;
   wire n9947;
   wire n9948;
   wire n9949;
   wire n9950;
   wire n9951;
   wire n9952;
   wire n9953;
   wire n9954;
   wire n9955;
   wire n9956;
   wire n9957;
   wire n9958;
   wire n9959;
   wire n9960;
   wire n9961;
   wire n9962;
   wire n9963;
   wire n9964;
   wire n9965;
   wire n9966;
   wire n9967;
   wire n9968;
   wire n9969;
   wire n9970;
   wire n9971;
   wire n9972;
   wire n9973;
   wire n9974;
   wire n9975;
   wire n9976;
   wire n9977;
   wire n9978;
   wire n9979;
   wire n9980;
   wire n9981;
   wire n9982;
   wire n9983;
   wire n9984;
   wire n9985;
   wire n9986;
   wire n9987;
   wire n9988;
   wire n9989;
   wire n9990;
   wire n9991;
   wire n9992;
   wire n9993;
   wire n9994;
   wire n9995;
   wire n9996;
   wire n9997;
   wire n9998;
   wire n9999;
   wire n10000;
   wire n10001;
   wire n10002;
   wire n10003;
   wire n10004;
   wire n10005;
   wire n10006;
   wire n10007;
   wire n10008;
   wire n10009;
   wire n10010;
   wire n10011;
   wire n10012;
   wire n10013;
   wire n10014;
   wire n10015;
   wire n10016;
   wire n10017;
   wire n10018;
   wire n10019;
   wire n10020;
   wire n10021;
   wire n10022;
   wire n10023;
   wire n10024;
   wire n10025;
   wire n10026;
   wire n10027;
   wire n10028;
   wire n10029;
   wire n10030;
   wire n10031;
   wire n10032;
   wire n10033;
   wire n10034;
   wire n10035;
   wire n10036;
   wire n10037;
   wire n10038;
   wire n10039;
   wire n10040;
   wire n10041;
   wire n10042;
   wire n10043;
   wire n10044;
   wire n10045;
   wire n10046;
   wire n10047;
   wire n10048;
   wire n10049;
   wire n10050;
   wire n10051;
   wire n10052;
   wire n10053;
   wire n10054;
   wire n10055;
   wire n10056;
   wire n10057;
   wire n10058;
   wire n10059;
   wire n10060;
   wire n10061;
   wire n10062;
   wire n10063;
   wire n10064;
   wire n10065;
   wire n10066;
   wire n10067;
   wire n10068;
   wire n10069;
   wire n10070;
   wire n10071;
   wire n10072;
   wire n10073;
   wire n10074;
   wire n10075;
   wire n10076;
   wire n10077;
   wire n10078;
   wire n10079;
   wire n10080;
   wire n10081;
   wire n10082;
   wire n10083;
   wire n10084;
   wire n10085;
   wire n10086;
   wire n10087;
   wire n10088;
   wire n10089;
   wire n10090;
   wire n10091;
   wire n10092;
   wire n10093;
   wire n10094;
   wire n10095;
   wire n10096;
   wire n10097;
   wire n10098;
   wire n10099;
   wire n10100;
   wire n10101;
   wire n10102;
   wire n10103;
   wire n10104;
   wire n10105;
   wire n10106;
   wire n10107;
   wire n10108;
   wire n10109;
   wire n10110;
   wire n10111;
   wire n10112;
   wire n10113;
   wire n10114;
   wire n10115;
   wire n10116;
   wire n10117;
   wire n10118;
   wire n10119;
   wire n10120;
   wire n10121;
   wire n10122;
   wire n10123;
   wire n10124;
   wire n10125;
   wire n10126;
   wire n10127;
   wire n10128;
   wire n10129;
   wire n10130;
   wire n10131;
   wire n10132;
   wire n10133;
   wire n10134;
   wire n10135;
   wire n10136;
   wire n10137;
   wire n10138;
   wire n10139;
   wire n10140;
   wire n10141;
   wire n10142;
   wire n10143;
   wire n10144;
   wire n10145;
   wire n10146;
   wire n10147;
   wire n10148;
   wire n10149;
   wire n10150;
   wire n10151;
   wire n10152;
   wire n10153;
   wire n10154;
   wire n10155;
   wire n10156;
   wire n10157;
   wire n10158;
   wire n10159;
   wire n10160;
   wire n10161;
   wire n10162;
   wire n10163;
   wire n10164;
   wire n10165;
   wire n10166;
   wire n10167;
   wire n10168;
   wire n10169;
   wire n10170;
   wire n10171;
   wire n10172;
   wire n10173;
   wire n10174;
   wire n10175;
   wire n10176;
   wire n10177;
   wire n10178;
   wire n10179;
   wire n10180;
   wire n10181;
   wire n10182;
   wire n10183;
   wire n10184;
   wire n10185;
   wire n10186;
   wire n10187;
   wire n10188;
   wire n10189;
   wire n10190;
   wire n10191;
   wire n10192;
   wire n10193;
   wire n10194;
   wire n10195;
   wire n10196;
   wire n10197;
   wire n10198;
   wire n10199;
   wire n10200;
   wire n10201;
   wire n10202;
   wire n10203;
   wire n10204;
   wire n10205;
   wire n10206;
   wire n10207;
   wire n10208;
   wire n10209;
   wire n10210;
   wire n10211;
   wire n10212;
   wire n10213;
   wire n10214;
   wire n10215;
   wire n10216;
   wire n10217;
   wire n10218;
   wire n10219;
   wire n10220;
   wire n10221;
   wire n10222;
   wire n10223;
   wire n10224;
   wire n10225;
   wire n10226;
   wire n10227;
   wire n10228;
   wire n10229;
   wire n10230;
   wire n10231;
   wire n10232;
   wire n10233;
   wire n10234;
   wire n10235;
   wire n10236;
   wire n10237;
   wire n10238;
   wire n10239;
   wire n10240;
   wire n10241;
   wire n10242;
   wire n10243;
   wire n10244;
   wire n10245;
   wire n10246;
   wire n10247;
   wire n10248;
   wire n10249;
   wire n10250;
   wire n10251;
   wire n10252;
   wire n10253;
   wire n10254;
   wire n10255;
   wire n10256;
   wire n10257;
   wire n10258;
   wire n10259;
   wire n10907;
   wire n10908;
   wire n10909;
   wire n10910;
   wire n10911;
   wire n10912;
   wire n10913;
   wire n10914;
   wire n10915;
   wire n10916;
   wire n10917;
   wire n10918;
   wire n10919;
   wire n10920;
   wire n10921;
   wire n10922;
   wire n10923;
   wire n10924;
   wire n10925;
   wire n10926;
   wire n10927;
   wire n10928;
   wire n10929;
   wire n10930;
   wire n10931;
   wire n10932;
   wire n10933;
   wire n10934;
   wire n10935;
   wire n10936;
   wire n10937;
   wire n10938;
   wire n10939;
   wire n10940;
   wire n10941;
   wire n10942;
   wire n10943;
   wire n10944;
   wire n10945;
   wire n10946;
   wire n10947;
   wire n10948;
   wire n10949;
   wire n10950;
   wire n10951;
   wire n10952;
   wire n10953;
   wire n10954;
   wire n10955;
   wire n10956;
   wire n10957;
   wire n10958;
   wire n10959;
   wire n10960;
   wire n10961;
   wire n10962;
   wire n10963;
   wire n10964;
   wire n10965;
   wire n10966;
   wire n11039;
   wire n11040;
   wire n11042;
   wire n11043;
   wire n11045;
   wire n11046;
   wire n11048;
   wire n11049;
   wire n11051;
   wire n11052;
   wire n11054;
   wire n11055;
   wire n11057;
   wire n11058;
   wire n11060;
   wire n11061;
   wire n11063;
   wire n11064;
   wire n11066;
   wire n11067;
   wire n11069;
   wire n11070;
   wire n11072;
   wire n11073;
   wire n11075;
   wire n11076;
   wire n11078;
   wire n11079;
   wire n11081;
   wire n11082;
   wire n11084;
   wire n11085;
   wire n11087;
   wire n11088;
   wire n11090;
   wire n11091;
   wire n11093;
   wire n11094;
   wire n11096;
   wire n11097;
   wire n11856;
   wire n11857;
   wire n13597;
   wire n13626;
   wire n15036;
   wire n15037;
   wire n16777;
   wire n16806;
   wire n18216;
   wire n18217;
   wire n19957;
   wire n19986;
   wire n21396;
   wire n21397;
   wire n23137;
   wire n23166;
   wire n24576;
   wire n24577;
   wire n26317;
   wire n26346;
   wire n27756;
   wire n27757;
   wire n29497;
   wire n29526;
   wire n30936;
   wire n30937;
   wire n32677;
   wire n32706;
   wire n34116;
   wire n34117;
   wire n35857;
   wire n35886;
   wire n37296;
   wire n37297;
   wire n39037;
   wire n39066;
   wire n40476;
   wire n40477;
   wire n42217;
   wire n42246;
   wire n43656;
   wire n43657;
   wire n45397;
   wire n45426;
   wire n46836;
   wire n46837;
   wire n48577;
   wire n48606;
   wire n50016;
   wire n50017;
   wire n51757;
   wire n51786;
   wire n53196;
   wire n53197;
   wire n54937;
   wire n54966;
   wire n56376;
   wire n56377;
   wire n58117;
   wire n58146;
   wire n59556;
   wire n59557;
   wire n61297;
   wire n61326;
   wire n62736;
   wire n62737;
   wire n64477;
   wire n64506;
   wire n65916;
   wire n65917;
   wire n67657;
   wire n67686;
   wire n69096;
   wire n69097;
   wire n70837;
   wire n70866;
   wire n72276;
   wire n72277;
   wire n74017;
   wire n74046;
   wire n75456;
   wire n75457;
   wire n77197;
   wire n77226;
   wire n78138;
   wire n78139;
   wire n78140;
   wire n78141;
   wire n78142;
   wire n78143;
   wire n78144;
   wire n78145;
   wire n78146;
   wire n78147;
   wire n78148;
   wire n78149;
   wire n78150;
   wire n78151;
   wire n78152;
   wire n78153;
   wire n78154;
   wire n78155;
   wire n78156;
   wire n78157;
   wire n78158;
   wire n78159;
   wire n78160;
   wire n78161;
   wire n78162;
   wire n78163;
   wire n78164;
   wire n78165;
   wire n78194;
   wire n78195;
   wire n78196;
   wire n78197;
   wire n78198;
   wire n78199;
   wire n78200;
   wire n78201;
   wire n78202;
   wire n78203;
   wire n78204;
   wire n78205;
   wire n78206;
   wire n78207;
   wire n78208;
   wire n78209;
   wire n78210;
   wire n78211;
   wire n78212;
   wire n78213;
   wire n78214;
   wire n78215;
   wire n78216;
   wire n78217;
   wire n78218;
   wire n78219;
   wire n78220;
   wire n78221;
   wire n78222;
   wire n78223;
   wire n78224;
   wire n78225;
   wire n78226;
   wire n78227;
   wire n78228;
   wire n78229;
   wire n78230;
   wire n78231;
   wire n78232;
   wire n78233;
   wire n78234;
   wire n78235;
   wire n78236;
   wire n78237;
   wire n78238;
   wire n78239;
   wire n78240;
   wire n78241;
   wire n78242;
   wire n78243;
   wire n78244;
   wire n78245;
   wire n78246;
   wire n78247;
   wire n78248;
   wire n78249;
   wire n78250;
   wire n78279;
   wire n78280;
   wire n78281;
   wire n78282;
   wire n78283;
   wire n78284;
   wire n78285;
   wire n78286;
   wire n78287;
   wire n78288;
   wire n78289;
   wire n78290;
   wire n78291;
   wire n78292;
   wire n78293;
   wire n78294;
   wire n78295;
   wire n78296;
   wire n78297;
   wire n78298;
   wire n78299;
   wire n78300;
   wire n78301;
   wire n78302;
   wire n78303;
   wire n78304;
   wire n78305;
   wire n78306;
   wire n78307;
   wire n78496;
   wire n78497;
   wire n78498;
   wire n78499;
   wire n78500;
   wire n78501;
   wire n78502;
   wire n78503;
   wire n78504;
   wire n78505;
   wire n78506;
   wire n78507;
   wire n78508;
   wire n78509;
   wire n78510;
   wire n78511;
   wire n78512;
   wire n78513;
   wire n78514;
   wire n78515;
   wire n78516;
   wire n78517;
   wire n78518;
   wire n78519;
   wire n78520;
   wire n78521;
   wire n78522;
   wire n78523;
   wire n78524;
   wire n78525;
   wire n78526;
   wire n78527;
   wire n78528;
   wire n78529;
   wire n78530;
   wire n78531;
   wire n78532;
   wire n78533;
   wire n78534;
   wire n78535;
   wire n78536;
   wire n78537;
   wire n78538;
   wire n78539;
   wire n78540;
   wire n78541;
   wire n78542;
   wire n78543;
   wire n78544;
   wire n78545;
   wire n78546;
   wire n78547;
   wire n78548;
   wire n78549;
   wire n78550;
   wire n78551;
   wire n78552;
   wire n78553;
   wire n78554;
   wire n78555;
   wire n78556;
   wire n78557;
   wire n78558;
   wire n78559;
   wire n78560;
   wire n78561;
   wire n78562;
   wire n78563;
   wire n78564;
   wire n78565;
   wire n78566;
   wire n78567;
   wire n78568;
   wire n78569;
   wire n78570;
   wire n78571;
   wire n78572;
   wire n78573;
   wire n78574;
   wire n78575;
   wire n78576;
   wire n78577;
   wire n78578;
   wire n78579;
   wire n78580;
   wire n78581;
   wire n78585;
   wire n80402;
   wire n83809;
   wire n83810;
   wire n83811;
   wire n83812;
   wire n84033;
   wire n85049;

      wire [27 : 0] BU34_D;
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
         assign BU34_D[22] = 1'b0;
         assign BU34_D[23] = 1'b0;
         assign BU34_D[24] = 1'b0;
         assign BU34_D[25] = 1'b0;
         assign BU34_D[26] = 1'b0;
         assign BU34_D[27] = 1'b0;
      wire [27 : 0] BU34_Q;
         assign n1122 = BU34_Q[0];
         assign n1121 = BU34_Q[1];
         assign n1120 = BU34_Q[2];
         assign n1119 = BU34_Q[3];
         assign n1118 = BU34_Q[4];
         assign n1117 = BU34_Q[5];
         assign n1116 = BU34_Q[6];
         assign n1115 = BU34_Q[7];
         assign n1114 = BU34_Q[8];
         assign n1113 = BU34_Q[9];
         assign n1112 = BU34_Q[10];
         assign n1111 = BU34_Q[11];
         assign n1110 = BU34_Q[12];
         assign n1109 = BU34_Q[13];
         assign n1108 = BU34_Q[14];
         assign n1107 = BU34_Q[15];
         assign n1106 = BU34_Q[16];
         assign n1105 = BU34_Q[17];
         assign n1104 = BU34_Q[18];
         assign n1103 = BU34_Q[19];
         assign n1102 = BU34_Q[20];
         assign n1101 = BU34_Q[21];
         assign n1100 = BU34_Q[22];
         assign n1099 = BU34_Q[23];
         assign n1098 = BU34_Q[24];
         assign n1097 = BU34_Q[25];
         assign n1096 = BU34_Q[26];
         assign n1095 = BU34_Q[27];
      wire BU34_CLK;
         assign BU34_CLK = n1088;
      C_REG_FD_V7_0 #(
         "0000000000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         28    /* c_width*/
      )
      BU34(
         .D(BU34_D),
         .Q(BU34_Q),
         .CLK(BU34_CLK)
      );

      wire [0 : 0] BU156_D;
         assign BU156_D[0] = 1'b0;
      wire [0 : 0] BU156_Q;
         assign n1179 = BU156_Q[0];
      wire BU156_CLK;
         assign BU156_CLK = n1088;
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
      BU156(
         .D(BU156_D),
         .Q(BU156_Q),
         .CLK(BU156_CLK)
      );

      wire [27 : 0] BU95_D;
         assign BU95_D[0] = 1'b0;
         assign BU95_D[1] = 1'b0;
         assign BU95_D[2] = 1'b0;
         assign BU95_D[3] = 1'b0;
         assign BU95_D[4] = 1'b0;
         assign BU95_D[5] = 1'b0;
         assign BU95_D[6] = 1'b0;
         assign BU95_D[7] = 1'b0;
         assign BU95_D[8] = 1'b0;
         assign BU95_D[9] = 1'b0;
         assign BU95_D[10] = 1'b0;
         assign BU95_D[11] = 1'b0;
         assign BU95_D[12] = 1'b0;
         assign BU95_D[13] = 1'b0;
         assign BU95_D[14] = 1'b0;
         assign BU95_D[15] = 1'b0;
         assign BU95_D[16] = 1'b0;
         assign BU95_D[17] = 1'b0;
         assign BU95_D[18] = 1'b0;
         assign BU95_D[19] = 1'b0;
         assign BU95_D[20] = 1'b0;
         assign BU95_D[21] = 1'b0;
         assign BU95_D[22] = 1'b0;
         assign BU95_D[23] = 1'b0;
         assign BU95_D[24] = 1'b0;
         assign BU95_D[25] = 1'b0;
         assign BU95_D[26] = 1'b0;
         assign BU95_D[27] = 1'b0;
      wire [27 : 0] BU95_Q;
         assign n1150 = BU95_Q[0];
         assign n1149 = BU95_Q[1];
         assign n1148 = BU95_Q[2];
         assign n1147 = BU95_Q[3];
         assign n1146 = BU95_Q[4];
         assign n1145 = BU95_Q[5];
         assign n1144 = BU95_Q[6];
         assign n1143 = BU95_Q[7];
         assign n1142 = BU95_Q[8];
         assign n1141 = BU95_Q[9];
         assign n1140 = BU95_Q[10];
         assign n1139 = BU95_Q[11];
         assign n1138 = BU95_Q[12];
         assign n1137 = BU95_Q[13];
         assign n1136 = BU95_Q[14];
         assign n1135 = BU95_Q[15];
         assign n1134 = BU95_Q[16];
         assign n1133 = BU95_Q[17];
         assign n1132 = BU95_Q[18];
         assign n1131 = BU95_Q[19];
         assign n1130 = BU95_Q[20];
         assign n1129 = BU95_Q[21];
         assign n1128 = BU95_Q[22];
         assign n1127 = BU95_Q[23];
         assign n1126 = BU95_Q[24];
         assign n1125 = BU95_Q[25];
         assign n1124 = BU95_Q[26];
         assign n1123 = BU95_Q[27];
      wire BU95_CLK;
         assign BU95_CLK = n1088;
      C_REG_FD_V7_0 #(
         "0000000000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         28    /* c_width*/
      )
      BU95(
         .D(BU95_D),
         .Q(BU95_Q),
         .CLK(BU95_CLK)
      );

      defparam BU646.INIT = 'hf690;
      wire BU646_I0;
         assign BU646_I0 = n1465;
      wire BU646_I1;
         assign BU646_I1 = n1494;
      wire BU646_I2;
         assign BU646_I2 = n1552;
      wire BU646_I3;
         assign BU646_I3 = n1580;
      wire BU646_O;
         assign n1636 = BU646_O;
      LUT4       BU646(
         .I0(BU646_I0),
         .I1(BU646_I1),
         .I2(BU646_I2),
         .I3(BU646_I3),
         .O(BU646_O)
      );

      defparam BU658.INIT = 'hf690;
      wire BU658_I0;
         assign BU658_I0 = n1465;
      wire BU658_I1;
         assign BU658_I1 = n1494;
      wire BU658_I2;
         assign BU658_I2 = n1551;
      wire BU658_I3;
         assign BU658_I3 = n1579;
      wire BU658_O;
         assign n1635 = BU658_O;
      LUT4       BU658(
         .I0(BU658_I0),
         .I1(BU658_I1),
         .I2(BU658_I2),
         .I3(BU658_I3),
         .O(BU658_O)
      );

      defparam BU670.INIT = 'hf690;
      wire BU670_I0;
         assign BU670_I0 = n1465;
      wire BU670_I1;
         assign BU670_I1 = n1494;
      wire BU670_I2;
         assign BU670_I2 = n1550;
      wire BU670_I3;
         assign BU670_I3 = n1578;
      wire BU670_O;
         assign n1634 = BU670_O;
      LUT4       BU670(
         .I0(BU670_I0),
         .I1(BU670_I1),
         .I2(BU670_I2),
         .I3(BU670_I3),
         .O(BU670_O)
      );

      defparam BU682.INIT = 'hf690;
      wire BU682_I0;
         assign BU682_I0 = n1465;
      wire BU682_I1;
         assign BU682_I1 = n1494;
      wire BU682_I2;
         assign BU682_I2 = n1549;
      wire BU682_I3;
         assign BU682_I3 = n1577;
      wire BU682_O;
         assign n1633 = BU682_O;
      LUT4       BU682(
         .I0(BU682_I0),
         .I1(BU682_I1),
         .I2(BU682_I2),
         .I3(BU682_I3),
         .O(BU682_O)
      );

      defparam BU694.INIT = 'hf690;
      wire BU694_I0;
         assign BU694_I0 = n1465;
      wire BU694_I1;
         assign BU694_I1 = n1494;
      wire BU694_I2;
         assign BU694_I2 = n1548;
      wire BU694_I3;
         assign BU694_I3 = n1576;
      wire BU694_O;
         assign n1632 = BU694_O;
      LUT4       BU694(
         .I0(BU694_I0),
         .I1(BU694_I1),
         .I2(BU694_I2),
         .I3(BU694_I3),
         .O(BU694_O)
      );

      defparam BU706.INIT = 'hf690;
      wire BU706_I0;
         assign BU706_I0 = n1465;
      wire BU706_I1;
         assign BU706_I1 = n1494;
      wire BU706_I2;
         assign BU706_I2 = n1547;
      wire BU706_I3;
         assign BU706_I3 = n1575;
      wire BU706_O;
         assign n1631 = BU706_O;
      LUT4       BU706(
         .I0(BU706_I0),
         .I1(BU706_I1),
         .I2(BU706_I2),
         .I3(BU706_I3),
         .O(BU706_O)
      );

      defparam BU718.INIT = 'hf690;
      wire BU718_I0;
         assign BU718_I0 = n1465;
      wire BU718_I1;
         assign BU718_I1 = n1494;
      wire BU718_I2;
         assign BU718_I2 = n1546;
      wire BU718_I3;
         assign BU718_I3 = n1574;
      wire BU718_O;
         assign n1630 = BU718_O;
      LUT4       BU718(
         .I0(BU718_I0),
         .I1(BU718_I1),
         .I2(BU718_I2),
         .I3(BU718_I3),
         .O(BU718_O)
      );

      defparam BU730.INIT = 'hf690;
      wire BU730_I0;
         assign BU730_I0 = n1465;
      wire BU730_I1;
         assign BU730_I1 = n1494;
      wire BU730_I2;
         assign BU730_I2 = n1545;
      wire BU730_I3;
         assign BU730_I3 = n1573;
      wire BU730_O;
         assign n1629 = BU730_O;
      LUT4       BU730(
         .I0(BU730_I0),
         .I1(BU730_I1),
         .I2(BU730_I2),
         .I3(BU730_I3),
         .O(BU730_O)
      );

      defparam BU742.INIT = 'hf690;
      wire BU742_I0;
         assign BU742_I0 = n1465;
      wire BU742_I1;
         assign BU742_I1 = n1494;
      wire BU742_I2;
         assign BU742_I2 = n1544;
      wire BU742_I3;
         assign BU742_I3 = n1572;
      wire BU742_O;
         assign n1628 = BU742_O;
      LUT4       BU742(
         .I0(BU742_I0),
         .I1(BU742_I1),
         .I2(BU742_I2),
         .I3(BU742_I3),
         .O(BU742_O)
      );

      defparam BU754.INIT = 'hf690;
      wire BU754_I0;
         assign BU754_I0 = n1465;
      wire BU754_I1;
         assign BU754_I1 = n1494;
      wire BU754_I2;
         assign BU754_I2 = n1543;
      wire BU754_I3;
         assign BU754_I3 = n1571;
      wire BU754_O;
         assign n1627 = BU754_O;
      LUT4       BU754(
         .I0(BU754_I0),
         .I1(BU754_I1),
         .I2(BU754_I2),
         .I3(BU754_I3),
         .O(BU754_O)
      );

      defparam BU766.INIT = 'hf690;
      wire BU766_I0;
         assign BU766_I0 = n1465;
      wire BU766_I1;
         assign BU766_I1 = n1494;
      wire BU766_I2;
         assign BU766_I2 = n1542;
      wire BU766_I3;
         assign BU766_I3 = n1570;
      wire BU766_O;
         assign n1626 = BU766_O;
      LUT4       BU766(
         .I0(BU766_I0),
         .I1(BU766_I1),
         .I2(BU766_I2),
         .I3(BU766_I3),
         .O(BU766_O)
      );

      defparam BU778.INIT = 'hf690;
      wire BU778_I0;
         assign BU778_I0 = n1465;
      wire BU778_I1;
         assign BU778_I1 = n1494;
      wire BU778_I2;
         assign BU778_I2 = n1541;
      wire BU778_I3;
         assign BU778_I3 = n1569;
      wire BU778_O;
         assign n1625 = BU778_O;
      LUT4       BU778(
         .I0(BU778_I0),
         .I1(BU778_I1),
         .I2(BU778_I2),
         .I3(BU778_I3),
         .O(BU778_O)
      );

      defparam BU790.INIT = 'hf690;
      wire BU790_I0;
         assign BU790_I0 = n1465;
      wire BU790_I1;
         assign BU790_I1 = n1494;
      wire BU790_I2;
         assign BU790_I2 = n1540;
      wire BU790_I3;
         assign BU790_I3 = n1568;
      wire BU790_O;
         assign n1624 = BU790_O;
      LUT4       BU790(
         .I0(BU790_I0),
         .I1(BU790_I1),
         .I2(BU790_I2),
         .I3(BU790_I3),
         .O(BU790_O)
      );

      defparam BU802.INIT = 'hf690;
      wire BU802_I0;
         assign BU802_I0 = n1465;
      wire BU802_I1;
         assign BU802_I1 = n1494;
      wire BU802_I2;
         assign BU802_I2 = n1539;
      wire BU802_I3;
         assign BU802_I3 = n1567;
      wire BU802_O;
         assign n1623 = BU802_O;
      LUT4       BU802(
         .I0(BU802_I0),
         .I1(BU802_I1),
         .I2(BU802_I2),
         .I3(BU802_I3),
         .O(BU802_O)
      );

      defparam BU814.INIT = 'hf690;
      wire BU814_I0;
         assign BU814_I0 = n1465;
      wire BU814_I1;
         assign BU814_I1 = n1494;
      wire BU814_I2;
         assign BU814_I2 = n1538;
      wire BU814_I3;
         assign BU814_I3 = n1566;
      wire BU814_O;
         assign n1622 = BU814_O;
      LUT4       BU814(
         .I0(BU814_I0),
         .I1(BU814_I1),
         .I2(BU814_I2),
         .I3(BU814_I3),
         .O(BU814_O)
      );

      defparam BU826.INIT = 'hf690;
      wire BU826_I0;
         assign BU826_I0 = n1465;
      wire BU826_I1;
         assign BU826_I1 = n1494;
      wire BU826_I2;
         assign BU826_I2 = n1537;
      wire BU826_I3;
         assign BU826_I3 = n1565;
      wire BU826_O;
         assign n1621 = BU826_O;
      LUT4       BU826(
         .I0(BU826_I0),
         .I1(BU826_I1),
         .I2(BU826_I2),
         .I3(BU826_I3),
         .O(BU826_O)
      );

      defparam BU838.INIT = 'hf690;
      wire BU838_I0;
         assign BU838_I0 = n1465;
      wire BU838_I1;
         assign BU838_I1 = n1494;
      wire BU838_I2;
         assign BU838_I2 = n1536;
      wire BU838_I3;
         assign BU838_I3 = n1564;
      wire BU838_O;
         assign n1620 = BU838_O;
      LUT4       BU838(
         .I0(BU838_I0),
         .I1(BU838_I1),
         .I2(BU838_I2),
         .I3(BU838_I3),
         .O(BU838_O)
      );

      defparam BU850.INIT = 'hf690;
      wire BU850_I0;
         assign BU850_I0 = n1465;
      wire BU850_I1;
         assign BU850_I1 = n1494;
      wire BU850_I2;
         assign BU850_I2 = n1535;
      wire BU850_I3;
         assign BU850_I3 = n1563;
      wire BU850_O;
         assign n1619 = BU850_O;
      LUT4       BU850(
         .I0(BU850_I0),
         .I1(BU850_I1),
         .I2(BU850_I2),
         .I3(BU850_I3),
         .O(BU850_O)
      );

      defparam BU862.INIT = 'hf690;
      wire BU862_I0;
         assign BU862_I0 = n1465;
      wire BU862_I1;
         assign BU862_I1 = n1494;
      wire BU862_I2;
         assign BU862_I2 = n1534;
      wire BU862_I3;
         assign BU862_I3 = n1562;
      wire BU862_O;
         assign n1618 = BU862_O;
      LUT4       BU862(
         .I0(BU862_I0),
         .I1(BU862_I1),
         .I2(BU862_I2),
         .I3(BU862_I3),
         .O(BU862_O)
      );

      defparam BU874.INIT = 'hf690;
      wire BU874_I0;
         assign BU874_I0 = n1465;
      wire BU874_I1;
         assign BU874_I1 = n1494;
      wire BU874_I2;
         assign BU874_I2 = n1533;
      wire BU874_I3;
         assign BU874_I3 = n1561;
      wire BU874_O;
         assign n1617 = BU874_O;
      LUT4       BU874(
         .I0(BU874_I0),
         .I1(BU874_I1),
         .I2(BU874_I2),
         .I3(BU874_I3),
         .O(BU874_O)
      );

      defparam BU886.INIT = 'hf690;
      wire BU886_I0;
         assign BU886_I0 = n1465;
      wire BU886_I1;
         assign BU886_I1 = n1494;
      wire BU886_I2;
         assign BU886_I2 = n1532;
      wire BU886_I3;
         assign BU886_I3 = n1560;
      wire BU886_O;
         assign n1616 = BU886_O;
      LUT4       BU886(
         .I0(BU886_I0),
         .I1(BU886_I1),
         .I2(BU886_I2),
         .I3(BU886_I3),
         .O(BU886_O)
      );

      defparam BU898.INIT = 'hf690;
      wire BU898_I0;
         assign BU898_I0 = n1465;
      wire BU898_I1;
         assign BU898_I1 = n1494;
      wire BU898_I2;
         assign BU898_I2 = n1531;
      wire BU898_I3;
         assign BU898_I3 = n1559;
      wire BU898_O;
         assign n1615 = BU898_O;
      LUT4       BU898(
         .I0(BU898_I0),
         .I1(BU898_I1),
         .I2(BU898_I2),
         .I3(BU898_I3),
         .O(BU898_O)
      );

      defparam BU910.INIT = 'hf690;
      wire BU910_I0;
         assign BU910_I0 = n1465;
      wire BU910_I1;
         assign BU910_I1 = n1494;
      wire BU910_I2;
         assign BU910_I2 = n1530;
      wire BU910_I3;
         assign BU910_I3 = n1558;
      wire BU910_O;
         assign n1614 = BU910_O;
      LUT4       BU910(
         .I0(BU910_I0),
         .I1(BU910_I1),
         .I2(BU910_I2),
         .I3(BU910_I3),
         .O(BU910_O)
      );

      defparam BU922.INIT = 'hf690;
      wire BU922_I0;
         assign BU922_I0 = n1465;
      wire BU922_I1;
         assign BU922_I1 = n1494;
      wire BU922_I2;
         assign BU922_I2 = n1529;
      wire BU922_I3;
         assign BU922_I3 = n1557;
      wire BU922_O;
         assign n1613 = BU922_O;
      LUT4       BU922(
         .I0(BU922_I0),
         .I1(BU922_I1),
         .I2(BU922_I2),
         .I3(BU922_I3),
         .O(BU922_O)
      );

      defparam BU934.INIT = 'hf690;
      wire BU934_I0;
         assign BU934_I0 = n1465;
      wire BU934_I1;
         assign BU934_I1 = n1494;
      wire BU934_I2;
         assign BU934_I2 = n1528;
      wire BU934_I3;
         assign BU934_I3 = n1556;
      wire BU934_O;
         assign n1612 = BU934_O;
      LUT4       BU934(
         .I0(BU934_I0),
         .I1(BU934_I1),
         .I2(BU934_I2),
         .I3(BU934_I3),
         .O(BU934_O)
      );

      defparam BU946.INIT = 'hf690;
      wire BU946_I0;
         assign BU946_I0 = n1465;
      wire BU946_I1;
         assign BU946_I1 = n1494;
      wire BU946_I2;
         assign BU946_I2 = n1527;
      wire BU946_I3;
         assign BU946_I3 = n1555;
      wire BU946_O;
         assign n1611 = BU946_O;
      LUT4       BU946(
         .I0(BU946_I0),
         .I1(BU946_I1),
         .I2(BU946_I2),
         .I3(BU946_I3),
         .O(BU946_O)
      );

      defparam BU958.INIT = 'hf690;
      wire BU958_I0;
         assign BU958_I0 = n1465;
      wire BU958_I1;
         assign BU958_I1 = n1494;
      wire BU958_I2;
         assign BU958_I2 = n1526;
      wire BU958_I3;
         assign BU958_I3 = n1554;
      wire BU958_O;
         assign n1610 = BU958_O;
      LUT4       BU958(
         .I0(BU958_I0),
         .I1(BU958_I1),
         .I2(BU958_I2),
         .I3(BU958_I3),
         .O(BU958_O)
      );

      defparam BU970.INIT = 'hf690;
      wire BU970_I0;
         assign BU970_I0 = n1465;
      wire BU970_I1;
         assign BU970_I1 = n1494;
      wire BU970_I2;
         assign BU970_I2 = n1525;
      wire BU970_I3;
         assign BU970_I3 = n1553;
      wire BU970_O;
         assign n1609 = BU970_O;
      LUT4       BU970(
         .I0(BU970_I0),
         .I1(BU970_I1),
         .I2(BU970_I2),
         .I3(BU970_I3),
         .O(BU970_O)
      );

      defparam BU1330.INIT = 'h5555;
      wire BU1330_I0;
         assign BU1330_I0 = n1465;
      wire BU1330_I1;
         assign BU1330_I1 = 1'b0;
      wire BU1330_I2;
         assign BU1330_I2 = 1'b0;
      wire BU1330_I3;
         assign BU1330_I3 = 1'b0;
      wire BU1330_O;
         assign n1665 = BU1330_O;
      LUT4       BU1330(
         .I0(BU1330_I0),
         .I1(BU1330_I1),
         .I2(BU1330_I2),
         .I3(BU1330_I3),
         .O(BU1330_O)
      );

      defparam BU1342.INIT = 'hca53;
      wire BU1342_I0;
         assign BU1342_I0 = 1'b1;
      wire BU1342_I1;
         assign BU1342_I1 = 1'b1;
      wire BU1342_I2;
         assign BU1342_I2 = n1666;
      wire BU1342_I3;
         assign BU1342_I3 = n1665;
      wire BU1342_O;
         assign n1845 = BU1342_O;
      LUT4       BU1342(
         .I0(BU1342_I0),
         .I1(BU1342_I1),
         .I2(BU1342_I2),
         .I3(BU1342_I3),
         .O(BU1342_O)
      );

      wire [27 : 0] BU523_D;
         assign BU523_D[0] = n1122;
         assign BU523_D[1] = n1121;
         assign BU523_D[2] = n1120;
         assign BU523_D[3] = n1119;
         assign BU523_D[4] = n1118;
         assign BU523_D[5] = n1117;
         assign BU523_D[6] = n1116;
         assign BU523_D[7] = n1115;
         assign BU523_D[8] = n1114;
         assign BU523_D[9] = n1113;
         assign BU523_D[10] = n1112;
         assign BU523_D[11] = n1111;
         assign BU523_D[12] = n1110;
         assign BU523_D[13] = n1109;
         assign BU523_D[14] = n1108;
         assign BU523_D[15] = n1107;
         assign BU523_D[16] = n1106;
         assign BU523_D[17] = n1105;
         assign BU523_D[18] = n1104;
         assign BU523_D[19] = n1103;
         assign BU523_D[20] = n1102;
         assign BU523_D[21] = n1101;
         assign BU523_D[22] = n1100;
         assign BU523_D[23] = n1099;
         assign BU523_D[24] = n1098;
         assign BU523_D[25] = n1097;
         assign BU523_D[26] = n1096;
         assign BU523_D[27] = n1095;
      wire [27 : 0] BU523_Q;
         assign n1552 = BU523_Q[0];
         assign n1551 = BU523_Q[1];
         assign n1550 = BU523_Q[2];
         assign n1549 = BU523_Q[3];
         assign n1548 = BU523_Q[4];
         assign n1547 = BU523_Q[5];
         assign n1546 = BU523_Q[6];
         assign n1545 = BU523_Q[7];
         assign n1544 = BU523_Q[8];
         assign n1543 = BU523_Q[9];
         assign n1542 = BU523_Q[10];
         assign n1541 = BU523_Q[11];
         assign n1540 = BU523_Q[12];
         assign n1539 = BU523_Q[13];
         assign n1538 = BU523_Q[14];
         assign n1537 = BU523_Q[15];
         assign n1536 = BU523_Q[16];
         assign n1535 = BU523_Q[17];
         assign n1534 = BU523_Q[18];
         assign n1533 = BU523_Q[19];
         assign n1532 = BU523_Q[20];
         assign n1531 = BU523_Q[21];
         assign n1530 = BU523_Q[22];
         assign n1529 = BU523_Q[23];
         assign n1528 = BU523_Q[24];
         assign n1527 = BU523_Q[25];
         assign n1526 = BU523_Q[26];
         assign n1525 = BU523_Q[27];
      wire BU523_CLK;
         assign BU523_CLK = n1088;
      C_REG_FD_V7_0 #(
         "0000000000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         28    /* c_width*/
      )
      BU523(
         .D(BU523_D),
         .Q(BU523_Q),
         .CLK(BU523_CLK)
      );

      defparam BU1336.INIT = 'h5555;
      wire BU1336_I0;
         assign BU1336_I0 = n1494;
      wire BU1336_I1;
         assign BU1336_I1 = 1'b0;
      wire BU1336_I2;
         assign BU1336_I2 = 1'b0;
      wire BU1336_I3;
         assign BU1336_I3 = 1'b0;
      wire BU1336_O;
         assign n1666 = BU1336_O;
      LUT4       BU1336(
         .I0(BU1336_I0),
         .I1(BU1336_I1),
         .I2(BU1336_I2),
         .I3(BU1336_I3),
         .O(BU1336_O)
      );

      wire [0 : 0] BU1347_D;
         assign BU1347_D[0] = n1845;
      wire [0 : 0] BU1347_Q;
         assign n416 = BU1347_Q[0];
      wire BU1347_CLK;
         assign BU1347_CLK = n1088;
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
      BU1347(
         .D(BU1347_D),
         .Q(BU1347_Q),
         .CLK(BU1347_CLK)
      );

      defparam BU652.INIT = 'hf690;
      wire BU652_I0;
         assign BU652_I0 = n1465;
      wire BU652_I1;
         assign BU652_I1 = n1494;
      wire BU652_I2;
         assign BU652_I2 = n1580;
      wire BU652_I3;
         assign BU652_I3 = n1552;
      wire BU652_O;
         assign n1664 = BU652_O;
      LUT4       BU652(
         .I0(BU652_I0),
         .I1(BU652_I1),
         .I2(BU652_I2),
         .I3(BU652_I3),
         .O(BU652_O)
      );

      defparam BU664.INIT = 'hf690;
      wire BU664_I0;
         assign BU664_I0 = n1465;
      wire BU664_I1;
         assign BU664_I1 = n1494;
      wire BU664_I2;
         assign BU664_I2 = n1579;
      wire BU664_I3;
         assign BU664_I3 = n1551;
      wire BU664_O;
         assign n1663 = BU664_O;
      LUT4       BU664(
         .I0(BU664_I0),
         .I1(BU664_I1),
         .I2(BU664_I2),
         .I3(BU664_I3),
         .O(BU664_O)
      );

      defparam BU676.INIT = 'hf690;
      wire BU676_I0;
         assign BU676_I0 = n1465;
      wire BU676_I1;
         assign BU676_I1 = n1494;
      wire BU676_I2;
         assign BU676_I2 = n1578;
      wire BU676_I3;
         assign BU676_I3 = n1550;
      wire BU676_O;
         assign n1662 = BU676_O;
      LUT4       BU676(
         .I0(BU676_I0),
         .I1(BU676_I1),
         .I2(BU676_I2),
         .I3(BU676_I3),
         .O(BU676_O)
      );

      defparam BU688.INIT = 'hf690;
      wire BU688_I0;
         assign BU688_I0 = n1465;
      wire BU688_I1;
         assign BU688_I1 = n1494;
      wire BU688_I2;
         assign BU688_I2 = n1577;
      wire BU688_I3;
         assign BU688_I3 = n1549;
      wire BU688_O;
         assign n1661 = BU688_O;
      LUT4       BU688(
         .I0(BU688_I0),
         .I1(BU688_I1),
         .I2(BU688_I2),
         .I3(BU688_I3),
         .O(BU688_O)
      );

      defparam BU700.INIT = 'hf690;
      wire BU700_I0;
         assign BU700_I0 = n1465;
      wire BU700_I1;
         assign BU700_I1 = n1494;
      wire BU700_I2;
         assign BU700_I2 = n1576;
      wire BU700_I3;
         assign BU700_I3 = n1548;
      wire BU700_O;
         assign n1660 = BU700_O;
      LUT4       BU700(
         .I0(BU700_I0),
         .I1(BU700_I1),
         .I2(BU700_I2),
         .I3(BU700_I3),
         .O(BU700_O)
      );

      defparam BU712.INIT = 'hf690;
      wire BU712_I0;
         assign BU712_I0 = n1465;
      wire BU712_I1;
         assign BU712_I1 = n1494;
      wire BU712_I2;
         assign BU712_I2 = n1575;
      wire BU712_I3;
         assign BU712_I3 = n1547;
      wire BU712_O;
         assign n1659 = BU712_O;
      LUT4       BU712(
         .I0(BU712_I0),
         .I1(BU712_I1),
         .I2(BU712_I2),
         .I3(BU712_I3),
         .O(BU712_O)
      );

      defparam BU724.INIT = 'hf690;
      wire BU724_I0;
         assign BU724_I0 = n1465;
      wire BU724_I1;
         assign BU724_I1 = n1494;
      wire BU724_I2;
         assign BU724_I2 = n1574;
      wire BU724_I3;
         assign BU724_I3 = n1546;
      wire BU724_O;
         assign n1658 = BU724_O;
      LUT4       BU724(
         .I0(BU724_I0),
         .I1(BU724_I1),
         .I2(BU724_I2),
         .I3(BU724_I3),
         .O(BU724_O)
      );

      defparam BU736.INIT = 'hf690;
      wire BU736_I0;
         assign BU736_I0 = n1465;
      wire BU736_I1;
         assign BU736_I1 = n1494;
      wire BU736_I2;
         assign BU736_I2 = n1573;
      wire BU736_I3;
         assign BU736_I3 = n1545;
      wire BU736_O;
         assign n1657 = BU736_O;
      LUT4       BU736(
         .I0(BU736_I0),
         .I1(BU736_I1),
         .I2(BU736_I2),
         .I3(BU736_I3),
         .O(BU736_O)
      );

      defparam BU748.INIT = 'hf690;
      wire BU748_I0;
         assign BU748_I0 = n1465;
      wire BU748_I1;
         assign BU748_I1 = n1494;
      wire BU748_I2;
         assign BU748_I2 = n1572;
      wire BU748_I3;
         assign BU748_I3 = n1544;
      wire BU748_O;
         assign n1656 = BU748_O;
      LUT4       BU748(
         .I0(BU748_I0),
         .I1(BU748_I1),
         .I2(BU748_I2),
         .I3(BU748_I3),
         .O(BU748_O)
      );

      defparam BU760.INIT = 'hf690;
      wire BU760_I0;
         assign BU760_I0 = n1465;
      wire BU760_I1;
         assign BU760_I1 = n1494;
      wire BU760_I2;
         assign BU760_I2 = n1571;
      wire BU760_I3;
         assign BU760_I3 = n1543;
      wire BU760_O;
         assign n1655 = BU760_O;
      LUT4       BU760(
         .I0(BU760_I0),
         .I1(BU760_I1),
         .I2(BU760_I2),
         .I3(BU760_I3),
         .O(BU760_O)
      );

      defparam BU772.INIT = 'hf690;
      wire BU772_I0;
         assign BU772_I0 = n1465;
      wire BU772_I1;
         assign BU772_I1 = n1494;
      wire BU772_I2;
         assign BU772_I2 = n1570;
      wire BU772_I3;
         assign BU772_I3 = n1542;
      wire BU772_O;
         assign n1654 = BU772_O;
      LUT4       BU772(
         .I0(BU772_I0),
         .I1(BU772_I1),
         .I2(BU772_I2),
         .I3(BU772_I3),
         .O(BU772_O)
      );

      defparam BU784.INIT = 'hf690;
      wire BU784_I0;
         assign BU784_I0 = n1465;
      wire BU784_I1;
         assign BU784_I1 = n1494;
      wire BU784_I2;
         assign BU784_I2 = n1569;
      wire BU784_I3;
         assign BU784_I3 = n1541;
      wire BU784_O;
         assign n1653 = BU784_O;
      LUT4       BU784(
         .I0(BU784_I0),
         .I1(BU784_I1),
         .I2(BU784_I2),
         .I3(BU784_I3),
         .O(BU784_O)
      );

      defparam BU796.INIT = 'hf690;
      wire BU796_I0;
         assign BU796_I0 = n1465;
      wire BU796_I1;
         assign BU796_I1 = n1494;
      wire BU796_I2;
         assign BU796_I2 = n1568;
      wire BU796_I3;
         assign BU796_I3 = n1540;
      wire BU796_O;
         assign n1652 = BU796_O;
      LUT4       BU796(
         .I0(BU796_I0),
         .I1(BU796_I1),
         .I2(BU796_I2),
         .I3(BU796_I3),
         .O(BU796_O)
      );

      defparam BU808.INIT = 'hf690;
      wire BU808_I0;
         assign BU808_I0 = n1465;
      wire BU808_I1;
         assign BU808_I1 = n1494;
      wire BU808_I2;
         assign BU808_I2 = n1567;
      wire BU808_I3;
         assign BU808_I3 = n1539;
      wire BU808_O;
         assign n1651 = BU808_O;
      LUT4       BU808(
         .I0(BU808_I0),
         .I1(BU808_I1),
         .I2(BU808_I2),
         .I3(BU808_I3),
         .O(BU808_O)
      );

      defparam BU820.INIT = 'hf690;
      wire BU820_I0;
         assign BU820_I0 = n1465;
      wire BU820_I1;
         assign BU820_I1 = n1494;
      wire BU820_I2;
         assign BU820_I2 = n1566;
      wire BU820_I3;
         assign BU820_I3 = n1538;
      wire BU820_O;
         assign n1650 = BU820_O;
      LUT4       BU820(
         .I0(BU820_I0),
         .I1(BU820_I1),
         .I2(BU820_I2),
         .I3(BU820_I3),
         .O(BU820_O)
      );

      defparam BU832.INIT = 'hf690;
      wire BU832_I0;
         assign BU832_I0 = n1465;
      wire BU832_I1;
         assign BU832_I1 = n1494;
      wire BU832_I2;
         assign BU832_I2 = n1565;
      wire BU832_I3;
         assign BU832_I3 = n1537;
      wire BU832_O;
         assign n1649 = BU832_O;
      LUT4       BU832(
         .I0(BU832_I0),
         .I1(BU832_I1),
         .I2(BU832_I2),
         .I3(BU832_I3),
         .O(BU832_O)
      );

      defparam BU844.INIT = 'hf690;
      wire BU844_I0;
         assign BU844_I0 = n1465;
      wire BU844_I1;
         assign BU844_I1 = n1494;
      wire BU844_I2;
         assign BU844_I2 = n1564;
      wire BU844_I3;
         assign BU844_I3 = n1536;
      wire BU844_O;
         assign n1648 = BU844_O;
      LUT4       BU844(
         .I0(BU844_I0),
         .I1(BU844_I1),
         .I2(BU844_I2),
         .I3(BU844_I3),
         .O(BU844_O)
      );

      defparam BU856.INIT = 'hf690;
      wire BU856_I0;
         assign BU856_I0 = n1465;
      wire BU856_I1;
         assign BU856_I1 = n1494;
      wire BU856_I2;
         assign BU856_I2 = n1563;
      wire BU856_I3;
         assign BU856_I3 = n1535;
      wire BU856_O;
         assign n1647 = BU856_O;
      LUT4       BU856(
         .I0(BU856_I0),
         .I1(BU856_I1),
         .I2(BU856_I2),
         .I3(BU856_I3),
         .O(BU856_O)
      );

      defparam BU868.INIT = 'hf690;
      wire BU868_I0;
         assign BU868_I0 = n1465;
      wire BU868_I1;
         assign BU868_I1 = n1494;
      wire BU868_I2;
         assign BU868_I2 = n1562;
      wire BU868_I3;
         assign BU868_I3 = n1534;
      wire BU868_O;
         assign n1646 = BU868_O;
      LUT4       BU868(
         .I0(BU868_I0),
         .I1(BU868_I1),
         .I2(BU868_I2),
         .I3(BU868_I3),
         .O(BU868_O)
      );

      defparam BU880.INIT = 'hf690;
      wire BU880_I0;
         assign BU880_I0 = n1465;
      wire BU880_I1;
         assign BU880_I1 = n1494;
      wire BU880_I2;
         assign BU880_I2 = n1561;
      wire BU880_I3;
         assign BU880_I3 = n1533;
      wire BU880_O;
         assign n1645 = BU880_O;
      LUT4       BU880(
         .I0(BU880_I0),
         .I1(BU880_I1),
         .I2(BU880_I2),
         .I3(BU880_I3),
         .O(BU880_O)
      );

      defparam BU892.INIT = 'hf690;
      wire BU892_I0;
         assign BU892_I0 = n1465;
      wire BU892_I1;
         assign BU892_I1 = n1494;
      wire BU892_I2;
         assign BU892_I2 = n1560;
      wire BU892_I3;
         assign BU892_I3 = n1532;
      wire BU892_O;
         assign n1644 = BU892_O;
      LUT4       BU892(
         .I0(BU892_I0),
         .I1(BU892_I1),
         .I2(BU892_I2),
         .I3(BU892_I3),
         .O(BU892_O)
      );

      defparam BU904.INIT = 'hf690;
      wire BU904_I0;
         assign BU904_I0 = n1465;
      wire BU904_I1;
         assign BU904_I1 = n1494;
      wire BU904_I2;
         assign BU904_I2 = n1559;
      wire BU904_I3;
         assign BU904_I3 = n1531;
      wire BU904_O;
         assign n1643 = BU904_O;
      LUT4       BU904(
         .I0(BU904_I0),
         .I1(BU904_I1),
         .I2(BU904_I2),
         .I3(BU904_I3),
         .O(BU904_O)
      );

      defparam BU916.INIT = 'hf690;
      wire BU916_I0;
         assign BU916_I0 = n1465;
      wire BU916_I1;
         assign BU916_I1 = n1494;
      wire BU916_I2;
         assign BU916_I2 = n1558;
      wire BU916_I3;
         assign BU916_I3 = n1530;
      wire BU916_O;
         assign n1642 = BU916_O;
      LUT4       BU916(
         .I0(BU916_I0),
         .I1(BU916_I1),
         .I2(BU916_I2),
         .I3(BU916_I3),
         .O(BU916_O)
      );

      defparam BU928.INIT = 'hf690;
      wire BU928_I0;
         assign BU928_I0 = n1465;
      wire BU928_I1;
         assign BU928_I1 = n1494;
      wire BU928_I2;
         assign BU928_I2 = n1557;
      wire BU928_I3;
         assign BU928_I3 = n1529;
      wire BU928_O;
         assign n1641 = BU928_O;
      LUT4       BU928(
         .I0(BU928_I0),
         .I1(BU928_I1),
         .I2(BU928_I2),
         .I3(BU928_I3),
         .O(BU928_O)
      );

      defparam BU940.INIT = 'hf690;
      wire BU940_I0;
         assign BU940_I0 = n1465;
      wire BU940_I1;
         assign BU940_I1 = n1494;
      wire BU940_I2;
         assign BU940_I2 = n1556;
      wire BU940_I3;
         assign BU940_I3 = n1528;
      wire BU940_O;
         assign n1640 = BU940_O;
      LUT4       BU940(
         .I0(BU940_I0),
         .I1(BU940_I1),
         .I2(BU940_I2),
         .I3(BU940_I3),
         .O(BU940_O)
      );

      defparam BU952.INIT = 'hf690;
      wire BU952_I0;
         assign BU952_I0 = n1465;
      wire BU952_I1;
         assign BU952_I1 = n1494;
      wire BU952_I2;
         assign BU952_I2 = n1555;
      wire BU952_I3;
         assign BU952_I3 = n1527;
      wire BU952_O;
         assign n1639 = BU952_O;
      LUT4       BU952(
         .I0(BU952_I0),
         .I1(BU952_I1),
         .I2(BU952_I2),
         .I3(BU952_I3),
         .O(BU952_O)
      );

      defparam BU964.INIT = 'hf690;
      wire BU964_I0;
         assign BU964_I0 = n1465;
      wire BU964_I1;
         assign BU964_I1 = n1494;
      wire BU964_I2;
         assign BU964_I2 = n1554;
      wire BU964_I3;
         assign BU964_I3 = n1526;
      wire BU964_O;
         assign n1638 = BU964_O;
      LUT4       BU964(
         .I0(BU964_I0),
         .I1(BU964_I1),
         .I2(BU964_I2),
         .I3(BU964_I3),
         .O(BU964_O)
      );

      defparam BU976.INIT = 'hf690;
      wire BU976_I0;
         assign BU976_I0 = n1465;
      wire BU976_I1;
         assign BU976_I1 = n1494;
      wire BU976_I2;
         assign BU976_I2 = n1553;
      wire BU976_I3;
         assign BU976_I3 = n1525;
      wire BU976_O;
         assign n1637 = BU976_O;
      LUT4       BU976(
         .I0(BU976_I0),
         .I1(BU976_I1),
         .I2(BU976_I2),
         .I3(BU976_I3),
         .O(BU976_O)
      );

      defparam BU1355.INIT = 'ha3c5;
      wire BU1355_I0;
         assign BU1355_I0 = 1'b1;
      wire BU1355_I1;
         assign BU1355_I1 = 1'b1;
      wire BU1355_I2;
         assign BU1355_I2 = n1666;
      wire BU1355_I3;
         assign BU1355_I3 = n1665;
      wire BU1355_O;
         assign n1846 = BU1355_O;
      LUT4       BU1355(
         .I0(BU1355_I0),
         .I1(BU1355_I1),
         .I2(BU1355_I2),
         .I3(BU1355_I3),
         .O(BU1355_O)
      );

      wire [27 : 0] BU584_D;
         assign BU584_D[0] = n1150;
         assign BU584_D[1] = n1149;
         assign BU584_D[2] = n1148;
         assign BU584_D[3] = n1147;
         assign BU584_D[4] = n1146;
         assign BU584_D[5] = n1145;
         assign BU584_D[6] = n1144;
         assign BU584_D[7] = n1143;
         assign BU584_D[8] = n1142;
         assign BU584_D[9] = n1141;
         assign BU584_D[10] = n1140;
         assign BU584_D[11] = n1139;
         assign BU584_D[12] = n1138;
         assign BU584_D[13] = n1137;
         assign BU584_D[14] = n1136;
         assign BU584_D[15] = n1135;
         assign BU584_D[16] = n1134;
         assign BU584_D[17] = n1133;
         assign BU584_D[18] = n1132;
         assign BU584_D[19] = n1131;
         assign BU584_D[20] = n1130;
         assign BU584_D[21] = n1129;
         assign BU584_D[22] = n1128;
         assign BU584_D[23] = n1127;
         assign BU584_D[24] = n1126;
         assign BU584_D[25] = n1125;
         assign BU584_D[26] = n1124;
         assign BU584_D[27] = n1123;
      wire [27 : 0] BU584_Q;
         assign n1580 = BU584_Q[0];
         assign n1579 = BU584_Q[1];
         assign n1578 = BU584_Q[2];
         assign n1577 = BU584_Q[3];
         assign n1576 = BU584_Q[4];
         assign n1575 = BU584_Q[5];
         assign n1574 = BU584_Q[6];
         assign n1573 = BU584_Q[7];
         assign n1572 = BU584_Q[8];
         assign n1571 = BU584_Q[9];
         assign n1570 = BU584_Q[10];
         assign n1569 = BU584_Q[11];
         assign n1568 = BU584_Q[12];
         assign n1567 = BU584_Q[13];
         assign n1566 = BU584_Q[14];
         assign n1565 = BU584_Q[15];
         assign n1564 = BU584_Q[16];
         assign n1563 = BU584_Q[17];
         assign n1562 = BU584_Q[18];
         assign n1561 = BU584_Q[19];
         assign n1560 = BU584_Q[20];
         assign n1559 = BU584_Q[21];
         assign n1558 = BU584_Q[22];
         assign n1557 = BU584_Q[23];
         assign n1556 = BU584_Q[24];
         assign n1555 = BU584_Q[25];
         assign n1554 = BU584_Q[26];
         assign n1553 = BU584_Q[27];
      wire BU584_CLK;
         assign BU584_CLK = n1088;
      C_REG_FD_V7_0 #(
         "0000000000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         28    /* c_width*/
      )
      BU584(
         .D(BU584_D),
         .Q(BU584_Q),
         .CLK(BU584_CLK)
      );

      wire [0 : 0] BU1360_D;
         assign BU1360_D[0] = n1846;
      wire [0 : 0] BU1360_Q;
         assign n417 = BU1360_Q[0];
      wire BU1360_CLK;
         assign BU1360_CLK = n1088;
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
      BU1360(
         .D(BU1360_D),
         .Q(BU1360_Q),
         .CLK(BU1360_CLK)
      );

      wire [28 : 0] BU163_A;
         assign BU163_A[0] = n1122;
         assign BU163_A[1] = n1121;
         assign BU163_A[2] = n1120;
         assign BU163_A[3] = n1119;
         assign BU163_A[4] = n1118;
         assign BU163_A[5] = n1117;
         assign BU163_A[6] = n1116;
         assign BU163_A[7] = n1115;
         assign BU163_A[8] = n1114;
         assign BU163_A[9] = n1113;
         assign BU163_A[10] = n1112;
         assign BU163_A[11] = n1111;
         assign BU163_A[12] = n1110;
         assign BU163_A[13] = n1109;
         assign BU163_A[14] = n1108;
         assign BU163_A[15] = n1107;
         assign BU163_A[16] = n1106;
         assign BU163_A[17] = n1105;
         assign BU163_A[18] = n1104;
         assign BU163_A[19] = n1103;
         assign BU163_A[20] = n1102;
         assign BU163_A[21] = n1101;
         assign BU163_A[22] = n1100;
         assign BU163_A[23] = n1099;
         assign BU163_A[24] = n1098;
         assign BU163_A[25] = n1097;
         assign BU163_A[26] = n1096;
         assign BU163_A[27] = n1095;
         assign BU163_A[28] = n1095;
      wire [28 : 0] BU163_B;
         assign BU163_B[0] = n1150;
         assign BU163_B[1] = n1149;
         assign BU163_B[2] = n1148;
         assign BU163_B[3] = n1147;
         assign BU163_B[4] = n1146;
         assign BU163_B[5] = n1145;
         assign BU163_B[6] = n1144;
         assign BU163_B[7] = n1143;
         assign BU163_B[8] = n1142;
         assign BU163_B[9] = n1141;
         assign BU163_B[10] = n1140;
         assign BU163_B[11] = n1139;
         assign BU163_B[12] = n1138;
         assign BU163_B[13] = n1137;
         assign BU163_B[14] = n1136;
         assign BU163_B[15] = n1135;
         assign BU163_B[16] = n1134;
         assign BU163_B[17] = n1133;
         assign BU163_B[18] = n1132;
         assign BU163_B[19] = n1131;
         assign BU163_B[20] = n1130;
         assign BU163_B[21] = n1129;
         assign BU163_B[22] = n1128;
         assign BU163_B[23] = n1127;
         assign BU163_B[24] = n1126;
         assign BU163_B[25] = n1125;
         assign BU163_B[26] = n1124;
         assign BU163_B[27] = n1123;
         assign BU163_B[28] = n1123;
      wire BU163_ADD;
         assign BU163_ADD = 1'b0;
      wire [28 : 0] BU163_Q;
         assign n1465 = BU163_Q[28];
      wire BU163_CLK;
         assign BU163_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "00000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         29    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "00000000000000000000000000000"    /* c_b_value*/,
         29    /* c_b_width*/,
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
         28    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         29    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "00000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU163(
         .A(BU163_A),
         .B(BU163_B),
         .ADD(BU163_ADD),
         .Q(BU163_Q),
         .CLK(BU163_CLK)
      );

      wire [28 : 0] BU343_A;
         assign BU343_A[0] = n1122;
         assign BU343_A[1] = n1121;
         assign BU343_A[2] = n1120;
         assign BU343_A[3] = n1119;
         assign BU343_A[4] = n1118;
         assign BU343_A[5] = n1117;
         assign BU343_A[6] = n1116;
         assign BU343_A[7] = n1115;
         assign BU343_A[8] = n1114;
         assign BU343_A[9] = n1113;
         assign BU343_A[10] = n1112;
         assign BU343_A[11] = n1111;
         assign BU343_A[12] = n1110;
         assign BU343_A[13] = n1109;
         assign BU343_A[14] = n1108;
         assign BU343_A[15] = n1107;
         assign BU343_A[16] = n1106;
         assign BU343_A[17] = n1105;
         assign BU343_A[18] = n1104;
         assign BU343_A[19] = n1103;
         assign BU343_A[20] = n1102;
         assign BU343_A[21] = n1101;
         assign BU343_A[22] = n1100;
         assign BU343_A[23] = n1099;
         assign BU343_A[24] = n1098;
         assign BU343_A[25] = n1097;
         assign BU343_A[26] = n1096;
         assign BU343_A[27] = n1095;
         assign BU343_A[28] = n1095;
      wire [28 : 0] BU343_B;
         assign BU343_B[0] = n1150;
         assign BU343_B[1] = n1149;
         assign BU343_B[2] = n1148;
         assign BU343_B[3] = n1147;
         assign BU343_B[4] = n1146;
         assign BU343_B[5] = n1145;
         assign BU343_B[6] = n1144;
         assign BU343_B[7] = n1143;
         assign BU343_B[8] = n1142;
         assign BU343_B[9] = n1141;
         assign BU343_B[10] = n1140;
         assign BU343_B[11] = n1139;
         assign BU343_B[12] = n1138;
         assign BU343_B[13] = n1137;
         assign BU343_B[14] = n1136;
         assign BU343_B[15] = n1135;
         assign BU343_B[16] = n1134;
         assign BU343_B[17] = n1133;
         assign BU343_B[18] = n1132;
         assign BU343_B[19] = n1131;
         assign BU343_B[20] = n1130;
         assign BU343_B[21] = n1129;
         assign BU343_B[22] = n1128;
         assign BU343_B[23] = n1127;
         assign BU343_B[24] = n1126;
         assign BU343_B[25] = n1125;
         assign BU343_B[26] = n1124;
         assign BU343_B[27] = n1123;
         assign BU343_B[28] = n1123;
      wire BU343_ADD;
         assign BU343_ADD = 1'b1;
      wire [28 : 0] BU343_Q;
         assign n1494 = BU343_Q[28];
      wire BU343_CLK;
         assign BU343_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "00000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         29    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "00000000000000000000000000000"    /* c_b_value*/,
         29    /* c_b_width*/,
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
         28    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         29    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "00000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU343(
         .A(BU343_A),
         .B(BU343_B),
         .ADD(BU343_ADD),
         .Q(BU343_Q),
         .CLK(BU343_CLK)
      );

      wire [0 : 0] BU1367_D;
         assign BU1367_D[0] = n1179;
      wire [0 : 0] BU1367_Q;
         assign n1847 = BU1367_Q[0];
      wire BU1367_CLK;
         assign BU1367_CLK = n1088;
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
      BU1367(
         .D(BU1367_D),
         .Q(BU1367_Q),
         .CLK(BU1367_CLK)
      );

      wire [0 : 0] BU1374_D;
         assign BU1374_D[0] = n1847;
      wire [0 : 0] BU1374_Q;
         assign n418 = BU1374_Q[0];
      wire BU1374_CLK;
         assign BU1374_CLK = n1088;
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
      BU1374(
         .D(BU1374_D),
         .Q(BU1374_Q),
         .CLK(BU1374_CLK)
      );

      wire [27 : 0] BU981_A;
         assign BU981_A[0] = 1'b0;
         assign BU981_A[1] = 1'b0;
         assign BU981_A[2] = 1'b0;
         assign BU981_A[3] = 1'b0;
         assign BU981_A[4] = 1'b0;
         assign BU981_A[5] = 1'b0;
         assign BU981_A[6] = 1'b0;
         assign BU981_A[7] = 1'b0;
         assign BU981_A[8] = 1'b0;
         assign BU981_A[9] = 1'b0;
         assign BU981_A[10] = 1'b0;
         assign BU981_A[11] = 1'b0;
         assign BU981_A[12] = 1'b0;
         assign BU981_A[13] = 1'b0;
         assign BU981_A[14] = 1'b0;
         assign BU981_A[15] = 1'b0;
         assign BU981_A[16] = 1'b0;
         assign BU981_A[17] = 1'b0;
         assign BU981_A[18] = 1'b0;
         assign BU981_A[19] = 1'b0;
         assign BU981_A[20] = 1'b0;
         assign BU981_A[21] = 1'b0;
         assign BU981_A[22] = 1'b0;
         assign BU981_A[23] = 1'b0;
         assign BU981_A[24] = 1'b0;
         assign BU981_A[25] = 1'b0;
         assign BU981_A[26] = 1'b0;
         assign BU981_A[27] = 1'b0;
      wire [27 : 0] BU981_B;
         assign BU981_B[0] = n1636;
         assign BU981_B[1] = n1635;
         assign BU981_B[2] = n1634;
         assign BU981_B[3] = n1633;
         assign BU981_B[4] = n1632;
         assign BU981_B[5] = n1631;
         assign BU981_B[6] = n1630;
         assign BU981_B[7] = n1629;
         assign BU981_B[8] = n1628;
         assign BU981_B[9] = n1627;
         assign BU981_B[10] = n1626;
         assign BU981_B[11] = n1625;
         assign BU981_B[12] = n1624;
         assign BU981_B[13] = n1623;
         assign BU981_B[14] = n1622;
         assign BU981_B[15] = n1621;
         assign BU981_B[16] = n1620;
         assign BU981_B[17] = n1619;
         assign BU981_B[18] = n1618;
         assign BU981_B[19] = n1617;
         assign BU981_B[20] = n1616;
         assign BU981_B[21] = n1615;
         assign BU981_B[22] = n1614;
         assign BU981_B[23] = n1613;
         assign BU981_B[24] = n1612;
         assign BU981_B[25] = n1611;
         assign BU981_B[26] = n1610;
         assign BU981_B[27] = n1609;
      wire BU981_ADD;
         assign BU981_ADD = n1666;
      wire [27 : 0] BU981_Q;
         assign n359 = BU981_Q[0];
         assign n358 = BU981_Q[1];
         assign n357 = BU981_Q[2];
         assign n356 = BU981_Q[3];
         assign n355 = BU981_Q[4];
         assign n354 = BU981_Q[5];
         assign n353 = BU981_Q[6];
         assign n352 = BU981_Q[7];
         assign n351 = BU981_Q[8];
         assign n350 = BU981_Q[9];
         assign n349 = BU981_Q[10];
         assign n348 = BU981_Q[11];
         assign n347 = BU981_Q[12];
         assign n346 = BU981_Q[13];
         assign n345 = BU981_Q[14];
         assign n344 = BU981_Q[15];
         assign n343 = BU981_Q[16];
         assign n342 = BU981_Q[17];
         assign n341 = BU981_Q[18];
         assign n340 = BU981_Q[19];
         assign n339 = BU981_Q[20];
         assign n338 = BU981_Q[21];
         assign n337 = BU981_Q[22];
         assign n336 = BU981_Q[23];
         assign n335 = BU981_Q[24];
         assign n334 = BU981_Q[25];
         assign n333 = BU981_Q[26];
         assign n332 = BU981_Q[27];
      wire BU981_CLK;
         assign BU981_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU981(
         .A(BU981_A),
         .B(BU981_B),
         .ADD(BU981_ADD),
         .Q(BU981_Q),
         .CLK(BU981_CLK)
      );

      wire [27 : 0] BU1155_A;
         assign BU1155_A[0] = 1'b0;
         assign BU1155_A[1] = 1'b0;
         assign BU1155_A[2] = 1'b0;
         assign BU1155_A[3] = 1'b0;
         assign BU1155_A[4] = 1'b0;
         assign BU1155_A[5] = 1'b0;
         assign BU1155_A[6] = 1'b0;
         assign BU1155_A[7] = 1'b0;
         assign BU1155_A[8] = 1'b0;
         assign BU1155_A[9] = 1'b0;
         assign BU1155_A[10] = 1'b0;
         assign BU1155_A[11] = 1'b0;
         assign BU1155_A[12] = 1'b0;
         assign BU1155_A[13] = 1'b0;
         assign BU1155_A[14] = 1'b0;
         assign BU1155_A[15] = 1'b0;
         assign BU1155_A[16] = 1'b0;
         assign BU1155_A[17] = 1'b0;
         assign BU1155_A[18] = 1'b0;
         assign BU1155_A[19] = 1'b0;
         assign BU1155_A[20] = 1'b0;
         assign BU1155_A[21] = 1'b0;
         assign BU1155_A[22] = 1'b0;
         assign BU1155_A[23] = 1'b0;
         assign BU1155_A[24] = 1'b0;
         assign BU1155_A[25] = 1'b0;
         assign BU1155_A[26] = 1'b0;
         assign BU1155_A[27] = 1'b0;
      wire [27 : 0] BU1155_B;
         assign BU1155_B[0] = n1664;
         assign BU1155_B[1] = n1663;
         assign BU1155_B[2] = n1662;
         assign BU1155_B[3] = n1661;
         assign BU1155_B[4] = n1660;
         assign BU1155_B[5] = n1659;
         assign BU1155_B[6] = n1658;
         assign BU1155_B[7] = n1657;
         assign BU1155_B[8] = n1656;
         assign BU1155_B[9] = n1655;
         assign BU1155_B[10] = n1654;
         assign BU1155_B[11] = n1653;
         assign BU1155_B[12] = n1652;
         assign BU1155_B[13] = n1651;
         assign BU1155_B[14] = n1650;
         assign BU1155_B[15] = n1649;
         assign BU1155_B[16] = n1648;
         assign BU1155_B[17] = n1647;
         assign BU1155_B[18] = n1646;
         assign BU1155_B[19] = n1645;
         assign BU1155_B[20] = n1644;
         assign BU1155_B[21] = n1643;
         assign BU1155_B[22] = n1642;
         assign BU1155_B[23] = n1641;
         assign BU1155_B[24] = n1640;
         assign BU1155_B[25] = n1639;
         assign BU1155_B[26] = n1638;
         assign BU1155_B[27] = n1637;
      wire BU1155_ADD;
         assign BU1155_ADD = n1665;
      wire [27 : 0] BU1155_Q;
         assign n387 = BU1155_Q[0];
         assign n386 = BU1155_Q[1];
         assign n385 = BU1155_Q[2];
         assign n384 = BU1155_Q[3];
         assign n383 = BU1155_Q[4];
         assign n382 = BU1155_Q[5];
         assign n381 = BU1155_Q[6];
         assign n380 = BU1155_Q[7];
         assign n379 = BU1155_Q[8];
         assign n378 = BU1155_Q[9];
         assign n377 = BU1155_Q[10];
         assign n376 = BU1155_Q[11];
         assign n375 = BU1155_Q[12];
         assign n374 = BU1155_Q[13];
         assign n373 = BU1155_Q[14];
         assign n372 = BU1155_Q[15];
         assign n371 = BU1155_Q[16];
         assign n370 = BU1155_Q[17];
         assign n369 = BU1155_Q[18];
         assign n368 = BU1155_Q[19];
         assign n367 = BU1155_Q[20];
         assign n366 = BU1155_Q[21];
         assign n365 = BU1155_Q[22];
         assign n364 = BU1155_Q[23];
         assign n363 = BU1155_Q[24];
         assign n362 = BU1155_Q[25];
         assign n361 = BU1155_Q[26];
         assign n360 = BU1155_Q[27];
      wire BU1155_CLK;
         assign BU1155_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1155(
         .A(BU1155_A),
         .B(BU1155_B),
         .ADD(BU1155_ADD),
         .Q(BU1155_Q),
         .CLK(BU1155_CLK)
      );

      wire [27 : 0] BU1393_A;
         assign BU1393_A[0] = n359;
         assign BU1393_A[1] = n358;
         assign BU1393_A[2] = n357;
         assign BU1393_A[3] = n356;
         assign BU1393_A[4] = n355;
         assign BU1393_A[5] = n354;
         assign BU1393_A[6] = n353;
         assign BU1393_A[7] = n352;
         assign BU1393_A[8] = n351;
         assign BU1393_A[9] = n350;
         assign BU1393_A[10] = n349;
         assign BU1393_A[11] = n348;
         assign BU1393_A[12] = n347;
         assign BU1393_A[13] = n346;
         assign BU1393_A[14] = n345;
         assign BU1393_A[15] = n344;
         assign BU1393_A[16] = n343;
         assign BU1393_A[17] = n342;
         assign BU1393_A[18] = n341;
         assign BU1393_A[19] = n340;
         assign BU1393_A[20] = n339;
         assign BU1393_A[21] = n338;
         assign BU1393_A[22] = n337;
         assign BU1393_A[23] = n336;
         assign BU1393_A[24] = n335;
         assign BU1393_A[25] = n334;
         assign BU1393_A[26] = n333;
         assign BU1393_A[27] = n332;
      wire [27 : 0] BU1393_B;
         assign BU1393_B[0] = n386;
         assign BU1393_B[1] = n385;
         assign BU1393_B[2] = n384;
         assign BU1393_B[3] = n383;
         assign BU1393_B[4] = n382;
         assign BU1393_B[5] = n381;
         assign BU1393_B[6] = n380;
         assign BU1393_B[7] = n379;
         assign BU1393_B[8] = n378;
         assign BU1393_B[9] = n377;
         assign BU1393_B[10] = n376;
         assign BU1393_B[11] = n375;
         assign BU1393_B[12] = n374;
         assign BU1393_B[13] = n373;
         assign BU1393_B[14] = n372;
         assign BU1393_B[15] = n371;
         assign BU1393_B[16] = n370;
         assign BU1393_B[17] = n369;
         assign BU1393_B[18] = n368;
         assign BU1393_B[19] = n367;
         assign BU1393_B[20] = n366;
         assign BU1393_B[21] = n365;
         assign BU1393_B[22] = n364;
         assign BU1393_B[23] = n363;
         assign BU1393_B[24] = n362;
         assign BU1393_B[25] = n361;
         assign BU1393_B[26] = n360;
         assign BU1393_B[27] = n360;
      wire BU1393_ADD;
         assign BU1393_ADD = n11856;
      wire [27 : 0] BU1393_Q;
         assign n7795 = BU1393_Q[0];
         assign n7794 = BU1393_Q[1];
         assign n7793 = BU1393_Q[2];
         assign n7792 = BU1393_Q[3];
         assign n7791 = BU1393_Q[4];
         assign n7790 = BU1393_Q[5];
         assign n7789 = BU1393_Q[6];
         assign n7788 = BU1393_Q[7];
         assign n7787 = BU1393_Q[8];
         assign n7786 = BU1393_Q[9];
         assign n7785 = BU1393_Q[10];
         assign n7784 = BU1393_Q[11];
         assign n7783 = BU1393_Q[12];
         assign n7782 = BU1393_Q[13];
         assign n7781 = BU1393_Q[14];
         assign n7780 = BU1393_Q[15];
         assign n7779 = BU1393_Q[16];
         assign n7778 = BU1393_Q[17];
         assign n7777 = BU1393_Q[18];
         assign n7776 = BU1393_Q[19];
         assign n7775 = BU1393_Q[20];
         assign n7774 = BU1393_Q[21];
         assign n7773 = BU1393_Q[22];
         assign n7772 = BU1393_Q[23];
         assign n7771 = BU1393_Q[24];
         assign n7770 = BU1393_Q[25];
         assign n7769 = BU1393_Q[26];
         assign n7768 = BU1393_Q[27];
      wire BU1393_CLK;
         assign BU1393_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1393(
         .A(BU1393_A),
         .B(BU1393_B),
         .ADD(BU1393_ADD),
         .Q(BU1393_Q),
         .CLK(BU1393_CLK)
      );

      defparam BU1568.INIT = 'ha53c;
      wire BU1568_I0;
         assign BU1568_I0 = n360;
      wire BU1568_I1;
         assign BU1568_I1 = 1'b0;
      wire BU1568_I2;
         assign BU1568_I2 = 1'b0;
      wire BU1568_I3;
         assign BU1568_I3 = 1'b1;
      wire BU1568_O;
         assign n11856 = BU1568_O;
      LUT4       BU1568(
         .I0(BU1568_I0),
         .I1(BU1568_I1),
         .I2(BU1568_I2),
         .I3(BU1568_I3),
         .O(BU1568_O)
      );

      wire [27 : 0] BU1573_A;
         assign BU1573_A[0] = n387;
         assign BU1573_A[1] = n386;
         assign BU1573_A[2] = n385;
         assign BU1573_A[3] = n384;
         assign BU1573_A[4] = n383;
         assign BU1573_A[5] = n382;
         assign BU1573_A[6] = n381;
         assign BU1573_A[7] = n380;
         assign BU1573_A[8] = n379;
         assign BU1573_A[9] = n378;
         assign BU1573_A[10] = n377;
         assign BU1573_A[11] = n376;
         assign BU1573_A[12] = n375;
         assign BU1573_A[13] = n374;
         assign BU1573_A[14] = n373;
         assign BU1573_A[15] = n372;
         assign BU1573_A[16] = n371;
         assign BU1573_A[17] = n370;
         assign BU1573_A[18] = n369;
         assign BU1573_A[19] = n368;
         assign BU1573_A[20] = n367;
         assign BU1573_A[21] = n366;
         assign BU1573_A[22] = n365;
         assign BU1573_A[23] = n364;
         assign BU1573_A[24] = n363;
         assign BU1573_A[25] = n362;
         assign BU1573_A[26] = n361;
         assign BU1573_A[27] = n360;
      wire [27 : 0] BU1573_B;
         assign BU1573_B[0] = n358;
         assign BU1573_B[1] = n357;
         assign BU1573_B[2] = n356;
         assign BU1573_B[3] = n355;
         assign BU1573_B[4] = n354;
         assign BU1573_B[5] = n353;
         assign BU1573_B[6] = n352;
         assign BU1573_B[7] = n351;
         assign BU1573_B[8] = n350;
         assign BU1573_B[9] = n349;
         assign BU1573_B[10] = n348;
         assign BU1573_B[11] = n347;
         assign BU1573_B[12] = n346;
         assign BU1573_B[13] = n345;
         assign BU1573_B[14] = n344;
         assign BU1573_B[15] = n343;
         assign BU1573_B[16] = n342;
         assign BU1573_B[17] = n341;
         assign BU1573_B[18] = n340;
         assign BU1573_B[19] = n339;
         assign BU1573_B[20] = n338;
         assign BU1573_B[21] = n337;
         assign BU1573_B[22] = n336;
         assign BU1573_B[23] = n335;
         assign BU1573_B[24] = n334;
         assign BU1573_B[25] = n333;
         assign BU1573_B[26] = n332;
         assign BU1573_B[27] = n332;
      wire BU1573_ADD;
         assign BU1573_ADD = n11857;
      wire [27 : 0] BU1573_Q;
         assign n9027 = BU1573_Q[0];
         assign n9026 = BU1573_Q[1];
         assign n9025 = BU1573_Q[2];
         assign n9024 = BU1573_Q[3];
         assign n9023 = BU1573_Q[4];
         assign n9022 = BU1573_Q[5];
         assign n9021 = BU1573_Q[6];
         assign n9020 = BU1573_Q[7];
         assign n9019 = BU1573_Q[8];
         assign n9018 = BU1573_Q[9];
         assign n9017 = BU1573_Q[10];
         assign n9016 = BU1573_Q[11];
         assign n9015 = BU1573_Q[12];
         assign n9014 = BU1573_Q[13];
         assign n9013 = BU1573_Q[14];
         assign n9012 = BU1573_Q[15];
         assign n9011 = BU1573_Q[16];
         assign n9010 = BU1573_Q[17];
         assign n9009 = BU1573_Q[18];
         assign n9008 = BU1573_Q[19];
         assign n9007 = BU1573_Q[20];
         assign n9006 = BU1573_Q[21];
         assign n9005 = BU1573_Q[22];
         assign n9004 = BU1573_Q[23];
         assign n9003 = BU1573_Q[24];
         assign n9002 = BU1573_Q[25];
         assign n9001 = BU1573_Q[26];
         assign n9000 = BU1573_Q[27];
      wire BU1573_CLK;
         assign BU1573_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1573(
         .A(BU1573_A),
         .B(BU1573_B),
         .ADD(BU1573_ADD),
         .Q(BU1573_Q),
         .CLK(BU1573_CLK)
      );

      defparam BU1748.INIT = 'ha3a3;
      wire BU1748_I0;
         assign BU1748_I0 = n360;
      wire BU1748_I1;
         assign BU1748_I1 = 1'b0;
      wire BU1748_I2;
         assign BU1748_I2 = 1'b1;
      wire BU1748_I3;
         assign BU1748_I3 = 1'b0;
      wire BU1748_O;
         assign n11857 = BU1748_O;
      LUT4       BU1748(
         .I0(BU1748_I0),
         .I1(BU1748_I1),
         .I2(BU1748_I2),
         .I3(BU1748_I3),
         .O(BU1748_O)
      );

      wire [27 : 0] BU1755_A;
         assign BU1755_A[0] = 1'b0;
         assign BU1755_A[1] = 1'b0;
         assign BU1755_A[2] = 1'b0;
         assign BU1755_A[3] = 1'b0;
         assign BU1755_A[4] = 1'b0;
         assign BU1755_A[5] = 1'b0;
         assign BU1755_A[6] = 1'b0;
         assign BU1755_A[7] = 1'b0;
         assign BU1755_A[8] = 1'b0;
         assign BU1755_A[9] = 1'b0;
         assign BU1755_A[10] = 1'b0;
         assign BU1755_A[11] = 1'b0;
         assign BU1755_A[12] = 1'b0;
         assign BU1755_A[13] = 1'b0;
         assign BU1755_A[14] = 1'b0;
         assign BU1755_A[15] = 1'b0;
         assign BU1755_A[16] = 1'b0;
         assign BU1755_A[17] = 1'b0;
         assign BU1755_A[18] = 1'b0;
         assign BU1755_A[19] = 1'b0;
         assign BU1755_A[20] = 1'b0;
         assign BU1755_A[21] = 1'b0;
         assign BU1755_A[22] = 1'b0;
         assign BU1755_A[23] = 1'b0;
         assign BU1755_A[24] = 1'b0;
         assign BU1755_A[25] = 1'b0;
         assign BU1755_A[26] = 1'b0;
         assign BU1755_A[27] = 1'b0;
      wire [27 : 0] BU1755_B;
         assign BU1755_B[0] = 1'b0;
         assign BU1755_B[1] = 1'b0;
         assign BU1755_B[2] = 1'b1;
         assign BU1755_B[3] = 1'b0;
         assign BU1755_B[4] = 1'b1;
         assign BU1755_B[5] = 1'b0;
         assign BU1755_B[6] = 1'b0;
         assign BU1755_B[7] = 1'b0;
         assign BU1755_B[8] = 1'b0;
         assign BU1755_B[9] = 1'b0;
         assign BU1755_B[10] = 1'b0;
         assign BU1755_B[11] = 1'b0;
         assign BU1755_B[12] = 1'b1;
         assign BU1755_B[13] = 1'b0;
         assign BU1755_B[14] = 1'b0;
         assign BU1755_B[15] = 1'b1;
         assign BU1755_B[16] = 1'b1;
         assign BU1755_B[17] = 1'b1;
         assign BU1755_B[18] = 1'b0;
         assign BU1755_B[19] = 1'b1;
         assign BU1755_B[20] = 1'b0;
         assign BU1755_B[21] = 1'b0;
         assign BU1755_B[22] = 1'b1;
         assign BU1755_B[23] = 1'b0;
         assign BU1755_B[24] = 1'b0;
         assign BU1755_B[25] = 1'b0;
         assign BU1755_B[26] = 1'b0;
         assign BU1755_B[27] = 1'b0;
      wire BU1755_ADD;
         assign BU1755_ADD = n13626;
      wire [27 : 0] BU1755_S;
         assign n13597 = BU1755_S[27];
      wire [27 : 0] BU1755_Q;
         assign n10259 = BU1755_Q[0];
         assign n10258 = BU1755_Q[1];
         assign n10257 = BU1755_Q[2];
         assign n10256 = BU1755_Q[3];
         assign n10255 = BU1755_Q[4];
         assign n10254 = BU1755_Q[5];
         assign n10253 = BU1755_Q[6];
         assign n10252 = BU1755_Q[7];
         assign n10251 = BU1755_Q[8];
         assign n10250 = BU1755_Q[9];
         assign n10249 = BU1755_Q[10];
         assign n10248 = BU1755_Q[11];
         assign n10247 = BU1755_Q[12];
         assign n10246 = BU1755_Q[13];
         assign n10245 = BU1755_Q[14];
         assign n10244 = BU1755_Q[15];
         assign n10243 = BU1755_Q[16];
         assign n10242 = BU1755_Q[17];
         assign n10241 = BU1755_Q[18];
         assign n10240 = BU1755_Q[19];
         assign n10239 = BU1755_Q[20];
         assign n10238 = BU1755_Q[21];
         assign n10237 = BU1755_Q[22];
         assign n10236 = BU1755_Q[23];
         assign n10235 = BU1755_Q[24];
         assign n10234 = BU1755_Q[25];
         assign n10233 = BU1755_Q[26];
         assign n10232 = BU1755_Q[27];
      wire BU1755_CLK;
         assign BU1755_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1755(
         .A(BU1755_A),
         .B(BU1755_B),
         .ADD(BU1755_ADD),
         .S(BU1755_S),
         .Q(BU1755_Q),
         .CLK(BU1755_CLK)
      );

      defparam BU1930.INIT = 'h5c5c;
      wire BU1930_I0;
         assign BU1930_I0 = n360;
      wire BU1930_I1;
         assign BU1930_I1 = 1'b0;
      wire BU1930_I2;
         assign BU1930_I2 = 1'b1;
      wire BU1930_I3;
         assign BU1930_I3 = 1'b0;
      wire BU1930_O;
         assign n13626 = BU1930_O;
      LUT4       BU1930(
         .I0(BU1930_I0),
         .I1(BU1930_I1),
         .I2(BU1930_I2),
         .I3(BU1930_I3),
         .O(BU1930_O)
      );

      wire [0 : 0] BU1935_D;
         assign BU1935_D[0] = n13597;
      wire [0 : 0] BU1935_Q;
         assign n11097 = BU1935_Q[0];
      wire BU1935_CLK;
         assign BU1935_CLK = n1088;
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
      BU1935(
         .D(BU1935_D),
         .Q(BU1935_Q),
         .CLK(BU1935_CLK)
      );

      wire [0 : 0] BU1944_D;
         assign BU1944_D[0] = n418;
      wire [0 : 0] BU1944_Q;
         assign n10966 = BU1944_Q[0];
      wire BU1944_CLK;
         assign BU1944_CLK = n1088;
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
      BU1944(
         .D(BU1944_D),
         .Q(BU1944_Q),
         .CLK(BU1944_CLK)
      );

      wire [0 : 0] BU1951_D;
         assign BU1951_D[0] = n417;
      wire [0 : 0] BU1951_Q;
         assign n10965 = BU1951_Q[0];
      wire BU1951_CLK;
         assign BU1951_CLK = n1088;
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
      BU1951(
         .D(BU1951_D),
         .Q(BU1951_Q),
         .CLK(BU1951_CLK)
      );

      wire [0 : 0] BU1958_D;
         assign BU1958_D[0] = n416;
      wire [0 : 0] BU1958_Q;
         assign n10964 = BU1958_Q[0];
      wire BU1958_CLK;
         assign BU1958_CLK = n1088;
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
      BU1958(
         .D(BU1958_D),
         .Q(BU1958_Q),
         .CLK(BU1958_CLK)
      );

      wire [0 : 0] BU1965_D;
         assign BU1965_D[0] = 1'b1;
      wire [0 : 0] BU1965_Q;
         assign n11096 = BU1965_Q[0];
      wire BU1965_CLK;
         assign BU1965_CLK = n1088;
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
      BU1965(
         .D(BU1965_D),
         .Q(BU1965_Q),
         .CLK(BU1965_CLK)
      );

      wire [27 : 0] BU1981_A;
         assign BU1981_A[0] = n7795;
         assign BU1981_A[1] = n7794;
         assign BU1981_A[2] = n7793;
         assign BU1981_A[3] = n7792;
         assign BU1981_A[4] = n7791;
         assign BU1981_A[5] = n7790;
         assign BU1981_A[6] = n7789;
         assign BU1981_A[7] = n7788;
         assign BU1981_A[8] = n7787;
         assign BU1981_A[9] = n7786;
         assign BU1981_A[10] = n7785;
         assign BU1981_A[11] = n7784;
         assign BU1981_A[12] = n7783;
         assign BU1981_A[13] = n7782;
         assign BU1981_A[14] = n7781;
         assign BU1981_A[15] = n7780;
         assign BU1981_A[16] = n7779;
         assign BU1981_A[17] = n7778;
         assign BU1981_A[18] = n7777;
         assign BU1981_A[19] = n7776;
         assign BU1981_A[20] = n7775;
         assign BU1981_A[21] = n7774;
         assign BU1981_A[22] = n7773;
         assign BU1981_A[23] = n7772;
         assign BU1981_A[24] = n7771;
         assign BU1981_A[25] = n7770;
         assign BU1981_A[26] = n7769;
         assign BU1981_A[27] = n7768;
      wire [27 : 0] BU1981_B;
         assign BU1981_B[0] = n9025;
         assign BU1981_B[1] = n9024;
         assign BU1981_B[2] = n9023;
         assign BU1981_B[3] = n9022;
         assign BU1981_B[4] = n9021;
         assign BU1981_B[5] = n9020;
         assign BU1981_B[6] = n9019;
         assign BU1981_B[7] = n9018;
         assign BU1981_B[8] = n9017;
         assign BU1981_B[9] = n9016;
         assign BU1981_B[10] = n9015;
         assign BU1981_B[11] = n9014;
         assign BU1981_B[12] = n9013;
         assign BU1981_B[13] = n9012;
         assign BU1981_B[14] = n9011;
         assign BU1981_B[15] = n9010;
         assign BU1981_B[16] = n9009;
         assign BU1981_B[17] = n9008;
         assign BU1981_B[18] = n9007;
         assign BU1981_B[19] = n9006;
         assign BU1981_B[20] = n9005;
         assign BU1981_B[21] = n9004;
         assign BU1981_B[22] = n9003;
         assign BU1981_B[23] = n9002;
         assign BU1981_B[24] = n9001;
         assign BU1981_B[25] = n9000;
         assign BU1981_B[26] = n9000;
         assign BU1981_B[27] = n9000;
      wire BU1981_ADD;
         assign BU1981_ADD = n15036;
      wire [27 : 0] BU1981_Q;
         assign n7767 = BU1981_Q[0];
         assign n7766 = BU1981_Q[1];
         assign n7765 = BU1981_Q[2];
         assign n7764 = BU1981_Q[3];
         assign n7763 = BU1981_Q[4];
         assign n7762 = BU1981_Q[5];
         assign n7761 = BU1981_Q[6];
         assign n7760 = BU1981_Q[7];
         assign n7759 = BU1981_Q[8];
         assign n7758 = BU1981_Q[9];
         assign n7757 = BU1981_Q[10];
         assign n7756 = BU1981_Q[11];
         assign n7755 = BU1981_Q[12];
         assign n7754 = BU1981_Q[13];
         assign n7753 = BU1981_Q[14];
         assign n7752 = BU1981_Q[15];
         assign n7751 = BU1981_Q[16];
         assign n7750 = BU1981_Q[17];
         assign n7749 = BU1981_Q[18];
         assign n7748 = BU1981_Q[19];
         assign n7747 = BU1981_Q[20];
         assign n7746 = BU1981_Q[21];
         assign n7745 = BU1981_Q[22];
         assign n7744 = BU1981_Q[23];
         assign n7743 = BU1981_Q[24];
         assign n7742 = BU1981_Q[25];
         assign n7741 = BU1981_Q[26];
         assign n7740 = BU1981_Q[27];
      wire BU1981_CLK;
         assign BU1981_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU1981(
         .A(BU1981_A),
         .B(BU1981_B),
         .ADD(BU1981_ADD),
         .Q(BU1981_Q),
         .CLK(BU1981_CLK)
      );

      defparam BU2156.INIT = 'ha53c;
      wire BU2156_I0;
         assign BU2156_I0 = n9000;
      wire BU2156_I1;
         assign BU2156_I1 = n11097;
      wire BU2156_I2;
         assign BU2156_I2 = 1'b0;
      wire BU2156_I3;
         assign BU2156_I3 = n11096;
      wire BU2156_O;
         assign n15036 = BU2156_O;
      LUT4       BU2156(
         .I0(BU2156_I0),
         .I1(BU2156_I1),
         .I2(BU2156_I2),
         .I3(BU2156_I3),
         .O(BU2156_O)
      );

      wire [27 : 0] BU2161_A;
         assign BU2161_A[0] = n9027;
         assign BU2161_A[1] = n9026;
         assign BU2161_A[2] = n9025;
         assign BU2161_A[3] = n9024;
         assign BU2161_A[4] = n9023;
         assign BU2161_A[5] = n9022;
         assign BU2161_A[6] = n9021;
         assign BU2161_A[7] = n9020;
         assign BU2161_A[8] = n9019;
         assign BU2161_A[9] = n9018;
         assign BU2161_A[10] = n9017;
         assign BU2161_A[11] = n9016;
         assign BU2161_A[12] = n9015;
         assign BU2161_A[13] = n9014;
         assign BU2161_A[14] = n9013;
         assign BU2161_A[15] = n9012;
         assign BU2161_A[16] = n9011;
         assign BU2161_A[17] = n9010;
         assign BU2161_A[18] = n9009;
         assign BU2161_A[19] = n9008;
         assign BU2161_A[20] = n9007;
         assign BU2161_A[21] = n9006;
         assign BU2161_A[22] = n9005;
         assign BU2161_A[23] = n9004;
         assign BU2161_A[24] = n9003;
         assign BU2161_A[25] = n9002;
         assign BU2161_A[26] = n9001;
         assign BU2161_A[27] = n9000;
      wire [27 : 0] BU2161_B;
         assign BU2161_B[0] = n7793;
         assign BU2161_B[1] = n7792;
         assign BU2161_B[2] = n7791;
         assign BU2161_B[3] = n7790;
         assign BU2161_B[4] = n7789;
         assign BU2161_B[5] = n7788;
         assign BU2161_B[6] = n7787;
         assign BU2161_B[7] = n7786;
         assign BU2161_B[8] = n7785;
         assign BU2161_B[9] = n7784;
         assign BU2161_B[10] = n7783;
         assign BU2161_B[11] = n7782;
         assign BU2161_B[12] = n7781;
         assign BU2161_B[13] = n7780;
         assign BU2161_B[14] = n7779;
         assign BU2161_B[15] = n7778;
         assign BU2161_B[16] = n7777;
         assign BU2161_B[17] = n7776;
         assign BU2161_B[18] = n7775;
         assign BU2161_B[19] = n7774;
         assign BU2161_B[20] = n7773;
         assign BU2161_B[21] = n7772;
         assign BU2161_B[22] = n7771;
         assign BU2161_B[23] = n7770;
         assign BU2161_B[24] = n7769;
         assign BU2161_B[25] = n7768;
         assign BU2161_B[26] = n7768;
         assign BU2161_B[27] = n7768;
      wire BU2161_ADD;
         assign BU2161_ADD = n15037;
      wire [27 : 0] BU2161_Q;
         assign n8999 = BU2161_Q[0];
         assign n8998 = BU2161_Q[1];
         assign n8997 = BU2161_Q[2];
         assign n8996 = BU2161_Q[3];
         assign n8995 = BU2161_Q[4];
         assign n8994 = BU2161_Q[5];
         assign n8993 = BU2161_Q[6];
         assign n8992 = BU2161_Q[7];
         assign n8991 = BU2161_Q[8];
         assign n8990 = BU2161_Q[9];
         assign n8989 = BU2161_Q[10];
         assign n8988 = BU2161_Q[11];
         assign n8987 = BU2161_Q[12];
         assign n8986 = BU2161_Q[13];
         assign n8985 = BU2161_Q[14];
         assign n8984 = BU2161_Q[15];
         assign n8983 = BU2161_Q[16];
         assign n8982 = BU2161_Q[17];
         assign n8981 = BU2161_Q[18];
         assign n8980 = BU2161_Q[19];
         assign n8979 = BU2161_Q[20];
         assign n8978 = BU2161_Q[21];
         assign n8977 = BU2161_Q[22];
         assign n8976 = BU2161_Q[23];
         assign n8975 = BU2161_Q[24];
         assign n8974 = BU2161_Q[25];
         assign n8973 = BU2161_Q[26];
         assign n8972 = BU2161_Q[27];
      wire BU2161_CLK;
         assign BU2161_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2161(
         .A(BU2161_A),
         .B(BU2161_B),
         .ADD(BU2161_ADD),
         .Q(BU2161_Q),
         .CLK(BU2161_CLK)
      );

      defparam BU2336.INIT = 'ha3a3;
      wire BU2336_I0;
         assign BU2336_I0 = n9000;
      wire BU2336_I1;
         assign BU2336_I1 = n11097;
      wire BU2336_I2;
         assign BU2336_I2 = n11096;
      wire BU2336_I3;
         assign BU2336_I3 = 1'b0;
      wire BU2336_O;
         assign n15037 = BU2336_O;
      LUT4       BU2336(
         .I0(BU2336_I0),
         .I1(BU2336_I1),
         .I2(BU2336_I2),
         .I3(BU2336_I3),
         .O(BU2336_O)
      );

      wire [27 : 0] BU2343_A;
         assign BU2343_A[0] = n10259;
         assign BU2343_A[1] = n10258;
         assign BU2343_A[2] = n10257;
         assign BU2343_A[3] = n10256;
         assign BU2343_A[4] = n10255;
         assign BU2343_A[5] = n10254;
         assign BU2343_A[6] = n10253;
         assign BU2343_A[7] = n10252;
         assign BU2343_A[8] = n10251;
         assign BU2343_A[9] = n10250;
         assign BU2343_A[10] = n10249;
         assign BU2343_A[11] = n10248;
         assign BU2343_A[12] = n10247;
         assign BU2343_A[13] = n10246;
         assign BU2343_A[14] = n10245;
         assign BU2343_A[15] = n10244;
         assign BU2343_A[16] = n10243;
         assign BU2343_A[17] = n10242;
         assign BU2343_A[18] = n10241;
         assign BU2343_A[19] = n10240;
         assign BU2343_A[20] = n10239;
         assign BU2343_A[21] = n10238;
         assign BU2343_A[22] = n10237;
         assign BU2343_A[23] = n10236;
         assign BU2343_A[24] = n10235;
         assign BU2343_A[25] = n10234;
         assign BU2343_A[26] = n10233;
         assign BU2343_A[27] = n10232;
      wire [27 : 0] BU2343_B;
         assign BU2343_B[0] = 1'b1;
         assign BU2343_B[1] = 1'b0;
         assign BU2343_B[2] = 1'b0;
         assign BU2343_B[3] = 1'b0;
         assign BU2343_B[4] = 1'b0;
         assign BU2343_B[5] = 1'b1;
         assign BU2343_B[6] = 1'b1;
         assign BU2343_B[7] = 1'b1;
         assign BU2343_B[8] = 1'b0;
         assign BU2343_B[9] = 1'b0;
         assign BU2343_B[10] = 1'b1;
         assign BU2343_B[11] = 1'b1;
         assign BU2343_B[12] = 1'b0;
         assign BU2343_B[13] = 1'b1;
         assign BU2343_B[14] = 1'b1;
         assign BU2343_B[15] = 1'b1;
         assign BU2343_B[16] = 1'b1;
         assign BU2343_B[17] = 1'b1;
         assign BU2343_B[18] = 1'b1;
         assign BU2343_B[19] = 1'b0;
         assign BU2343_B[20] = 1'b0;
         assign BU2343_B[21] = 1'b1;
         assign BU2343_B[22] = 1'b0;
         assign BU2343_B[23] = 1'b0;
         assign BU2343_B[24] = 1'b0;
         assign BU2343_B[25] = 1'b0;
         assign BU2343_B[26] = 1'b0;
         assign BU2343_B[27] = 1'b0;
      wire BU2343_ADD;
         assign BU2343_ADD = n16806;
      wire [27 : 0] BU2343_S;
         assign n16777 = BU2343_S[27];
      wire [27 : 0] BU2343_Q;
         assign n10231 = BU2343_Q[0];
         assign n10230 = BU2343_Q[1];
         assign n10229 = BU2343_Q[2];
         assign n10228 = BU2343_Q[3];
         assign n10227 = BU2343_Q[4];
         assign n10226 = BU2343_Q[5];
         assign n10225 = BU2343_Q[6];
         assign n10224 = BU2343_Q[7];
         assign n10223 = BU2343_Q[8];
         assign n10222 = BU2343_Q[9];
         assign n10221 = BU2343_Q[10];
         assign n10220 = BU2343_Q[11];
         assign n10219 = BU2343_Q[12];
         assign n10218 = BU2343_Q[13];
         assign n10217 = BU2343_Q[14];
         assign n10216 = BU2343_Q[15];
         assign n10215 = BU2343_Q[16];
         assign n10214 = BU2343_Q[17];
         assign n10213 = BU2343_Q[18];
         assign n10212 = BU2343_Q[19];
         assign n10211 = BU2343_Q[20];
         assign n10210 = BU2343_Q[21];
         assign n10209 = BU2343_Q[22];
         assign n10208 = BU2343_Q[23];
         assign n10207 = BU2343_Q[24];
         assign n10206 = BU2343_Q[25];
         assign n10205 = BU2343_Q[26];
         assign n10204 = BU2343_Q[27];
      wire BU2343_CLK;
         assign BU2343_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2343(
         .A(BU2343_A),
         .B(BU2343_B),
         .ADD(BU2343_ADD),
         .S(BU2343_S),
         .Q(BU2343_Q),
         .CLK(BU2343_CLK)
      );

      defparam BU2518.INIT = 'h5c5c;
      wire BU2518_I0;
         assign BU2518_I0 = n9000;
      wire BU2518_I1;
         assign BU2518_I1 = n11097;
      wire BU2518_I2;
         assign BU2518_I2 = n11096;
      wire BU2518_I3;
         assign BU2518_I3 = 1'b0;
      wire BU2518_O;
         assign n16806 = BU2518_O;
      LUT4       BU2518(
         .I0(BU2518_I0),
         .I1(BU2518_I1),
         .I2(BU2518_I2),
         .I3(BU2518_I3),
         .O(BU2518_O)
      );

      wire [0 : 0] BU2523_D;
         assign BU2523_D[0] = n16777;
      wire [0 : 0] BU2523_Q;
         assign n11094 = BU2523_Q[0];
      wire BU2523_CLK;
         assign BU2523_CLK = n1088;
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
         assign BU2532_D[0] = n10966;
      wire [0 : 0] BU2532_Q;
         assign n10963 = BU2532_Q[0];
      wire BU2532_CLK;
         assign BU2532_CLK = n1088;
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
         assign BU2539_D[0] = n10965;
      wire [0 : 0] BU2539_Q;
         assign n10962 = BU2539_Q[0];
      wire BU2539_CLK;
         assign BU2539_CLK = n1088;
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
         assign BU2546_D[0] = n10964;
      wire [0 : 0] BU2546_Q;
         assign n10961 = BU2546_Q[0];
      wire BU2546_CLK;
         assign BU2546_CLK = n1088;
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
         assign BU2553_D[0] = n11096;
      wire [0 : 0] BU2553_Q;
         assign n11093 = BU2553_Q[0];
      wire BU2553_CLK;
         assign BU2553_CLK = n1088;
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

      wire [27 : 0] BU2569_A;
         assign BU2569_A[0] = n7767;
         assign BU2569_A[1] = n7766;
         assign BU2569_A[2] = n7765;
         assign BU2569_A[3] = n7764;
         assign BU2569_A[4] = n7763;
         assign BU2569_A[5] = n7762;
         assign BU2569_A[6] = n7761;
         assign BU2569_A[7] = n7760;
         assign BU2569_A[8] = n7759;
         assign BU2569_A[9] = n7758;
         assign BU2569_A[10] = n7757;
         assign BU2569_A[11] = n7756;
         assign BU2569_A[12] = n7755;
         assign BU2569_A[13] = n7754;
         assign BU2569_A[14] = n7753;
         assign BU2569_A[15] = n7752;
         assign BU2569_A[16] = n7751;
         assign BU2569_A[17] = n7750;
         assign BU2569_A[18] = n7749;
         assign BU2569_A[19] = n7748;
         assign BU2569_A[20] = n7747;
         assign BU2569_A[21] = n7746;
         assign BU2569_A[22] = n7745;
         assign BU2569_A[23] = n7744;
         assign BU2569_A[24] = n7743;
         assign BU2569_A[25] = n7742;
         assign BU2569_A[26] = n7741;
         assign BU2569_A[27] = n7740;
      wire [27 : 0] BU2569_B;
         assign BU2569_B[0] = n8996;
         assign BU2569_B[1] = n8995;
         assign BU2569_B[2] = n8994;
         assign BU2569_B[3] = n8993;
         assign BU2569_B[4] = n8992;
         assign BU2569_B[5] = n8991;
         assign BU2569_B[6] = n8990;
         assign BU2569_B[7] = n8989;
         assign BU2569_B[8] = n8988;
         assign BU2569_B[9] = n8987;
         assign BU2569_B[10] = n8986;
         assign BU2569_B[11] = n8985;
         assign BU2569_B[12] = n8984;
         assign BU2569_B[13] = n8983;
         assign BU2569_B[14] = n8982;
         assign BU2569_B[15] = n8981;
         assign BU2569_B[16] = n8980;
         assign BU2569_B[17] = n8979;
         assign BU2569_B[18] = n8978;
         assign BU2569_B[19] = n8977;
         assign BU2569_B[20] = n8976;
         assign BU2569_B[21] = n8975;
         assign BU2569_B[22] = n8974;
         assign BU2569_B[23] = n8973;
         assign BU2569_B[24] = n8972;
         assign BU2569_B[25] = n8972;
         assign BU2569_B[26] = n8972;
         assign BU2569_B[27] = n8972;
      wire BU2569_ADD;
         assign BU2569_ADD = n18216;
      wire [27 : 0] BU2569_Q;
         assign n7739 = BU2569_Q[0];
         assign n7738 = BU2569_Q[1];
         assign n7737 = BU2569_Q[2];
         assign n7736 = BU2569_Q[3];
         assign n7735 = BU2569_Q[4];
         assign n7734 = BU2569_Q[5];
         assign n7733 = BU2569_Q[6];
         assign n7732 = BU2569_Q[7];
         assign n7731 = BU2569_Q[8];
         assign n7730 = BU2569_Q[9];
         assign n7729 = BU2569_Q[10];
         assign n7728 = BU2569_Q[11];
         assign n7727 = BU2569_Q[12];
         assign n7726 = BU2569_Q[13];
         assign n7725 = BU2569_Q[14];
         assign n7724 = BU2569_Q[15];
         assign n7723 = BU2569_Q[16];
         assign n7722 = BU2569_Q[17];
         assign n7721 = BU2569_Q[18];
         assign n7720 = BU2569_Q[19];
         assign n7719 = BU2569_Q[20];
         assign n7718 = BU2569_Q[21];
         assign n7717 = BU2569_Q[22];
         assign n7716 = BU2569_Q[23];
         assign n7715 = BU2569_Q[24];
         assign n7714 = BU2569_Q[25];
         assign n7713 = BU2569_Q[26];
         assign n7712 = BU2569_Q[27];
      wire BU2569_CLK;
         assign BU2569_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
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

      defparam BU2744.INIT = 'ha53c;
      wire BU2744_I0;
         assign BU2744_I0 = n8972;
      wire BU2744_I1;
         assign BU2744_I1 = n11094;
      wire BU2744_I2;
         assign BU2744_I2 = 1'b0;
      wire BU2744_I3;
         assign BU2744_I3 = n11093;
      wire BU2744_O;
         assign n18216 = BU2744_O;
      LUT4       BU2744(
         .I0(BU2744_I0),
         .I1(BU2744_I1),
         .I2(BU2744_I2),
         .I3(BU2744_I3),
         .O(BU2744_O)
      );

      wire [27 : 0] BU2749_A;
         assign BU2749_A[0] = n8999;
         assign BU2749_A[1] = n8998;
         assign BU2749_A[2] = n8997;
         assign BU2749_A[3] = n8996;
         assign BU2749_A[4] = n8995;
         assign BU2749_A[5] = n8994;
         assign BU2749_A[6] = n8993;
         assign BU2749_A[7] = n8992;
         assign BU2749_A[8] = n8991;
         assign BU2749_A[9] = n8990;
         assign BU2749_A[10] = n8989;
         assign BU2749_A[11] = n8988;
         assign BU2749_A[12] = n8987;
         assign BU2749_A[13] = n8986;
         assign BU2749_A[14] = n8985;
         assign BU2749_A[15] = n8984;
         assign BU2749_A[16] = n8983;
         assign BU2749_A[17] = n8982;
         assign BU2749_A[18] = n8981;
         assign BU2749_A[19] = n8980;
         assign BU2749_A[20] = n8979;
         assign BU2749_A[21] = n8978;
         assign BU2749_A[22] = n8977;
         assign BU2749_A[23] = n8976;
         assign BU2749_A[24] = n8975;
         assign BU2749_A[25] = n8974;
         assign BU2749_A[26] = n8973;
         assign BU2749_A[27] = n8972;
      wire [27 : 0] BU2749_B;
         assign BU2749_B[0] = n7764;
         assign BU2749_B[1] = n7763;
         assign BU2749_B[2] = n7762;
         assign BU2749_B[3] = n7761;
         assign BU2749_B[4] = n7760;
         assign BU2749_B[5] = n7759;
         assign BU2749_B[6] = n7758;
         assign BU2749_B[7] = n7757;
         assign BU2749_B[8] = n7756;
         assign BU2749_B[9] = n7755;
         assign BU2749_B[10] = n7754;
         assign BU2749_B[11] = n7753;
         assign BU2749_B[12] = n7752;
         assign BU2749_B[13] = n7751;
         assign BU2749_B[14] = n7750;
         assign BU2749_B[15] = n7749;
         assign BU2749_B[16] = n7748;
         assign BU2749_B[17] = n7747;
         assign BU2749_B[18] = n7746;
         assign BU2749_B[19] = n7745;
         assign BU2749_B[20] = n7744;
         assign BU2749_B[21] = n7743;
         assign BU2749_B[22] = n7742;
         assign BU2749_B[23] = n7741;
         assign BU2749_B[24] = n7740;
         assign BU2749_B[25] = n7740;
         assign BU2749_B[26] = n7740;
         assign BU2749_B[27] = n7740;
      wire BU2749_ADD;
         assign BU2749_ADD = n18217;
      wire [27 : 0] BU2749_Q;
         assign n8971 = BU2749_Q[0];
         assign n8970 = BU2749_Q[1];
         assign n8969 = BU2749_Q[2];
         assign n8968 = BU2749_Q[3];
         assign n8967 = BU2749_Q[4];
         assign n8966 = BU2749_Q[5];
         assign n8965 = BU2749_Q[6];
         assign n8964 = BU2749_Q[7];
         assign n8963 = BU2749_Q[8];
         assign n8962 = BU2749_Q[9];
         assign n8961 = BU2749_Q[10];
         assign n8960 = BU2749_Q[11];
         assign n8959 = BU2749_Q[12];
         assign n8958 = BU2749_Q[13];
         assign n8957 = BU2749_Q[14];
         assign n8956 = BU2749_Q[15];
         assign n8955 = BU2749_Q[16];
         assign n8954 = BU2749_Q[17];
         assign n8953 = BU2749_Q[18];
         assign n8952 = BU2749_Q[19];
         assign n8951 = BU2749_Q[20];
         assign n8950 = BU2749_Q[21];
         assign n8949 = BU2749_Q[22];
         assign n8948 = BU2749_Q[23];
         assign n8947 = BU2749_Q[24];
         assign n8946 = BU2749_Q[25];
         assign n8945 = BU2749_Q[26];
         assign n8944 = BU2749_Q[27];
      wire BU2749_CLK;
         assign BU2749_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2749(
         .A(BU2749_A),
         .B(BU2749_B),
         .ADD(BU2749_ADD),
         .Q(BU2749_Q),
         .CLK(BU2749_CLK)
      );

      defparam BU2924.INIT = 'ha3a3;
      wire BU2924_I0;
         assign BU2924_I0 = n8972;
      wire BU2924_I1;
         assign BU2924_I1 = n11094;
      wire BU2924_I2;
         assign BU2924_I2 = n11093;
      wire BU2924_I3;
         assign BU2924_I3 = 1'b0;
      wire BU2924_O;
         assign n18217 = BU2924_O;
      LUT4       BU2924(
         .I0(BU2924_I0),
         .I1(BU2924_I1),
         .I2(BU2924_I2),
         .I3(BU2924_I3),
         .O(BU2924_O)
      );

      wire [27 : 0] BU2931_A;
         assign BU2931_A[0] = n10231;
         assign BU2931_A[1] = n10230;
         assign BU2931_A[2] = n10229;
         assign BU2931_A[3] = n10228;
         assign BU2931_A[4] = n10227;
         assign BU2931_A[5] = n10226;
         assign BU2931_A[6] = n10225;
         assign BU2931_A[7] = n10224;
         assign BU2931_A[8] = n10223;
         assign BU2931_A[9] = n10222;
         assign BU2931_A[10] = n10221;
         assign BU2931_A[11] = n10220;
         assign BU2931_A[12] = n10219;
         assign BU2931_A[13] = n10218;
         assign BU2931_A[14] = n10217;
         assign BU2931_A[15] = n10216;
         assign BU2931_A[16] = n10215;
         assign BU2931_A[17] = n10214;
         assign BU2931_A[18] = n10213;
         assign BU2931_A[19] = n10212;
         assign BU2931_A[20] = n10211;
         assign BU2931_A[21] = n10210;
         assign BU2931_A[22] = n10209;
         assign BU2931_A[23] = n10208;
         assign BU2931_A[24] = n10207;
         assign BU2931_A[25] = n10206;
         assign BU2931_A[26] = n10205;
         assign BU2931_A[27] = n10204;
      wire [27 : 0] BU2931_B;
         assign BU2931_B[0] = 1'b1;
         assign BU2931_B[1] = 1'b1;
         assign BU2931_B[2] = 1'b1;
         assign BU2931_B[3] = 1'b0;
         assign BU2931_B[4] = 1'b0;
         assign BU2931_B[5] = 1'b0;
         assign BU2931_B[6] = 1'b1;
         assign BU2931_B[7] = 1'b0;
         assign BU2931_B[8] = 1'b0;
         assign BU2931_B[9] = 1'b0;
         assign BU2931_B[10] = 1'b1;
         assign BU2931_B[11] = 1'b0;
         assign BU2931_B[12] = 1'b0;
         assign BU2931_B[13] = 1'b0;
         assign BU2931_B[14] = 1'b1;
         assign BU2931_B[15] = 1'b0;
         assign BU2931_B[16] = 1'b0;
         assign BU2931_B[17] = 1'b0;
         assign BU2931_B[18] = 1'b1;
         assign BU2931_B[19] = 1'b0;
         assign BU2931_B[20] = 1'b1;
         assign BU2931_B[21] = 1'b0;
         assign BU2931_B[22] = 1'b0;
         assign BU2931_B[23] = 1'b0;
         assign BU2931_B[24] = 1'b0;
         assign BU2931_B[25] = 1'b0;
         assign BU2931_B[26] = 1'b0;
         assign BU2931_B[27] = 1'b0;
      wire BU2931_ADD;
         assign BU2931_ADD = n19986;
      wire [27 : 0] BU2931_S;
         assign n19957 = BU2931_S[27];
      wire [27 : 0] BU2931_Q;
         assign n10203 = BU2931_Q[0];
         assign n10202 = BU2931_Q[1];
         assign n10201 = BU2931_Q[2];
         assign n10200 = BU2931_Q[3];
         assign n10199 = BU2931_Q[4];
         assign n10198 = BU2931_Q[5];
         assign n10197 = BU2931_Q[6];
         assign n10196 = BU2931_Q[7];
         assign n10195 = BU2931_Q[8];
         assign n10194 = BU2931_Q[9];
         assign n10193 = BU2931_Q[10];
         assign n10192 = BU2931_Q[11];
         assign n10191 = BU2931_Q[12];
         assign n10190 = BU2931_Q[13];
         assign n10189 = BU2931_Q[14];
         assign n10188 = BU2931_Q[15];
         assign n10187 = BU2931_Q[16];
         assign n10186 = BU2931_Q[17];
         assign n10185 = BU2931_Q[18];
         assign n10184 = BU2931_Q[19];
         assign n10183 = BU2931_Q[20];
         assign n10182 = BU2931_Q[21];
         assign n10181 = BU2931_Q[22];
         assign n10180 = BU2931_Q[23];
         assign n10179 = BU2931_Q[24];
         assign n10178 = BU2931_Q[25];
         assign n10177 = BU2931_Q[26];
         assign n10176 = BU2931_Q[27];
      wire BU2931_CLK;
         assign BU2931_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU2931(
         .A(BU2931_A),
         .B(BU2931_B),
         .ADD(BU2931_ADD),
         .S(BU2931_S),
         .Q(BU2931_Q),
         .CLK(BU2931_CLK)
      );

      defparam BU3106.INIT = 'h5c5c;
      wire BU3106_I0;
         assign BU3106_I0 = n8972;
      wire BU3106_I1;
         assign BU3106_I1 = n11094;
      wire BU3106_I2;
         assign BU3106_I2 = n11093;
      wire BU3106_I3;
         assign BU3106_I3 = 1'b0;
      wire BU3106_O;
         assign n19986 = BU3106_O;
      LUT4       BU3106(
         .I0(BU3106_I0),
         .I1(BU3106_I1),
         .I2(BU3106_I2),
         .I3(BU3106_I3),
         .O(BU3106_O)
      );

      wire [0 : 0] BU3111_D;
         assign BU3111_D[0] = n19957;
      wire [0 : 0] BU3111_Q;
         assign n11091 = BU3111_Q[0];
      wire BU3111_CLK;
         assign BU3111_CLK = n1088;
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
      BU3111(
         .D(BU3111_D),
         .Q(BU3111_Q),
         .CLK(BU3111_CLK)
      );

      wire [0 : 0] BU3120_D;
         assign BU3120_D[0] = n10963;
      wire [0 : 0] BU3120_Q;
         assign n10960 = BU3120_Q[0];
      wire BU3120_CLK;
         assign BU3120_CLK = n1088;
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
      BU3120(
         .D(BU3120_D),
         .Q(BU3120_Q),
         .CLK(BU3120_CLK)
      );

      wire [0 : 0] BU3127_D;
         assign BU3127_D[0] = n10962;
      wire [0 : 0] BU3127_Q;
         assign n10959 = BU3127_Q[0];
      wire BU3127_CLK;
         assign BU3127_CLK = n1088;
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
      BU3127(
         .D(BU3127_D),
         .Q(BU3127_Q),
         .CLK(BU3127_CLK)
      );

      wire [0 : 0] BU3134_D;
         assign BU3134_D[0] = n10961;
      wire [0 : 0] BU3134_Q;
         assign n10958 = BU3134_Q[0];
      wire BU3134_CLK;
         assign BU3134_CLK = n1088;
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
      BU3134(
         .D(BU3134_D),
         .Q(BU3134_Q),
         .CLK(BU3134_CLK)
      );

      wire [0 : 0] BU3141_D;
         assign BU3141_D[0] = n11093;
      wire [0 : 0] BU3141_Q;
         assign n11090 = BU3141_Q[0];
      wire BU3141_CLK;
         assign BU3141_CLK = n1088;
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
      BU3141(
         .D(BU3141_D),
         .Q(BU3141_Q),
         .CLK(BU3141_CLK)
      );

      wire [27 : 0] BU3157_A;
         assign BU3157_A[0] = n7739;
         assign BU3157_A[1] = n7738;
         assign BU3157_A[2] = n7737;
         assign BU3157_A[3] = n7736;
         assign BU3157_A[4] = n7735;
         assign BU3157_A[5] = n7734;
         assign BU3157_A[6] = n7733;
         assign BU3157_A[7] = n7732;
         assign BU3157_A[8] = n7731;
         assign BU3157_A[9] = n7730;
         assign BU3157_A[10] = n7729;
         assign BU3157_A[11] = n7728;
         assign BU3157_A[12] = n7727;
         assign BU3157_A[13] = n7726;
         assign BU3157_A[14] = n7725;
         assign BU3157_A[15] = n7724;
         assign BU3157_A[16] = n7723;
         assign BU3157_A[17] = n7722;
         assign BU3157_A[18] = n7721;
         assign BU3157_A[19] = n7720;
         assign BU3157_A[20] = n7719;
         assign BU3157_A[21] = n7718;
         assign BU3157_A[22] = n7717;
         assign BU3157_A[23] = n7716;
         assign BU3157_A[24] = n7715;
         assign BU3157_A[25] = n7714;
         assign BU3157_A[26] = n7713;
         assign BU3157_A[27] = n7712;
      wire [27 : 0] BU3157_B;
         assign BU3157_B[0] = n8967;
         assign BU3157_B[1] = n8966;
         assign BU3157_B[2] = n8965;
         assign BU3157_B[3] = n8964;
         assign BU3157_B[4] = n8963;
         assign BU3157_B[5] = n8962;
         assign BU3157_B[6] = n8961;
         assign BU3157_B[7] = n8960;
         assign BU3157_B[8] = n8959;
         assign BU3157_B[9] = n8958;
         assign BU3157_B[10] = n8957;
         assign BU3157_B[11] = n8956;
         assign BU3157_B[12] = n8955;
         assign BU3157_B[13] = n8954;
         assign BU3157_B[14] = n8953;
         assign BU3157_B[15] = n8952;
         assign BU3157_B[16] = n8951;
         assign BU3157_B[17] = n8950;
         assign BU3157_B[18] = n8949;
         assign BU3157_B[19] = n8948;
         assign BU3157_B[20] = n8947;
         assign BU3157_B[21] = n8946;
         assign BU3157_B[22] = n8945;
         assign BU3157_B[23] = n8944;
         assign BU3157_B[24] = n8944;
         assign BU3157_B[25] = n8944;
         assign BU3157_B[26] = n8944;
         assign BU3157_B[27] = n8944;
      wire BU3157_ADD;
         assign BU3157_ADD = n21396;
      wire [27 : 0] BU3157_Q;
         assign n7711 = BU3157_Q[0];
         assign n7710 = BU3157_Q[1];
         assign n7709 = BU3157_Q[2];
         assign n7708 = BU3157_Q[3];
         assign n7707 = BU3157_Q[4];
         assign n7706 = BU3157_Q[5];
         assign n7705 = BU3157_Q[6];
         assign n7704 = BU3157_Q[7];
         assign n7703 = BU3157_Q[8];
         assign n7702 = BU3157_Q[9];
         assign n7701 = BU3157_Q[10];
         assign n7700 = BU3157_Q[11];
         assign n7699 = BU3157_Q[12];
         assign n7698 = BU3157_Q[13];
         assign n7697 = BU3157_Q[14];
         assign n7696 = BU3157_Q[15];
         assign n7695 = BU3157_Q[16];
         assign n7694 = BU3157_Q[17];
         assign n7693 = BU3157_Q[18];
         assign n7692 = BU3157_Q[19];
         assign n7691 = BU3157_Q[20];
         assign n7690 = BU3157_Q[21];
         assign n7689 = BU3157_Q[22];
         assign n7688 = BU3157_Q[23];
         assign n7687 = BU3157_Q[24];
         assign n7686 = BU3157_Q[25];
         assign n7685 = BU3157_Q[26];
         assign n7684 = BU3157_Q[27];
      wire BU3157_CLK;
         assign BU3157_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3157(
         .A(BU3157_A),
         .B(BU3157_B),
         .ADD(BU3157_ADD),
         .Q(BU3157_Q),
         .CLK(BU3157_CLK)
      );

      defparam BU3332.INIT = 'ha53c;
      wire BU3332_I0;
         assign BU3332_I0 = n8944;
      wire BU3332_I1;
         assign BU3332_I1 = n11091;
      wire BU3332_I2;
         assign BU3332_I2 = 1'b0;
      wire BU3332_I3;
         assign BU3332_I3 = n11090;
      wire BU3332_O;
         assign n21396 = BU3332_O;
      LUT4       BU3332(
         .I0(BU3332_I0),
         .I1(BU3332_I1),
         .I2(BU3332_I2),
         .I3(BU3332_I3),
         .O(BU3332_O)
      );

      wire [27 : 0] BU3337_A;
         assign BU3337_A[0] = n8971;
         assign BU3337_A[1] = n8970;
         assign BU3337_A[2] = n8969;
         assign BU3337_A[3] = n8968;
         assign BU3337_A[4] = n8967;
         assign BU3337_A[5] = n8966;
         assign BU3337_A[6] = n8965;
         assign BU3337_A[7] = n8964;
         assign BU3337_A[8] = n8963;
         assign BU3337_A[9] = n8962;
         assign BU3337_A[10] = n8961;
         assign BU3337_A[11] = n8960;
         assign BU3337_A[12] = n8959;
         assign BU3337_A[13] = n8958;
         assign BU3337_A[14] = n8957;
         assign BU3337_A[15] = n8956;
         assign BU3337_A[16] = n8955;
         assign BU3337_A[17] = n8954;
         assign BU3337_A[18] = n8953;
         assign BU3337_A[19] = n8952;
         assign BU3337_A[20] = n8951;
         assign BU3337_A[21] = n8950;
         assign BU3337_A[22] = n8949;
         assign BU3337_A[23] = n8948;
         assign BU3337_A[24] = n8947;
         assign BU3337_A[25] = n8946;
         assign BU3337_A[26] = n8945;
         assign BU3337_A[27] = n8944;
      wire [27 : 0] BU3337_B;
         assign BU3337_B[0] = n7735;
         assign BU3337_B[1] = n7734;
         assign BU3337_B[2] = n7733;
         assign BU3337_B[3] = n7732;
         assign BU3337_B[4] = n7731;
         assign BU3337_B[5] = n7730;
         assign BU3337_B[6] = n7729;
         assign BU3337_B[7] = n7728;
         assign BU3337_B[8] = n7727;
         assign BU3337_B[9] = n7726;
         assign BU3337_B[10] = n7725;
         assign BU3337_B[11] = n7724;
         assign BU3337_B[12] = n7723;
         assign BU3337_B[13] = n7722;
         assign BU3337_B[14] = n7721;
         assign BU3337_B[15] = n7720;
         assign BU3337_B[16] = n7719;
         assign BU3337_B[17] = n7718;
         assign BU3337_B[18] = n7717;
         assign BU3337_B[19] = n7716;
         assign BU3337_B[20] = n7715;
         assign BU3337_B[21] = n7714;
         assign BU3337_B[22] = n7713;
         assign BU3337_B[23] = n7712;
         assign BU3337_B[24] = n7712;
         assign BU3337_B[25] = n7712;
         assign BU3337_B[26] = n7712;
         assign BU3337_B[27] = n7712;
      wire BU3337_ADD;
         assign BU3337_ADD = n21397;
      wire [27 : 0] BU3337_Q;
         assign n8943 = BU3337_Q[0];
         assign n8942 = BU3337_Q[1];
         assign n8941 = BU3337_Q[2];
         assign n8940 = BU3337_Q[3];
         assign n8939 = BU3337_Q[4];
         assign n8938 = BU3337_Q[5];
         assign n8937 = BU3337_Q[6];
         assign n8936 = BU3337_Q[7];
         assign n8935 = BU3337_Q[8];
         assign n8934 = BU3337_Q[9];
         assign n8933 = BU3337_Q[10];
         assign n8932 = BU3337_Q[11];
         assign n8931 = BU3337_Q[12];
         assign n8930 = BU3337_Q[13];
         assign n8929 = BU3337_Q[14];
         assign n8928 = BU3337_Q[15];
         assign n8927 = BU3337_Q[16];
         assign n8926 = BU3337_Q[17];
         assign n8925 = BU3337_Q[18];
         assign n8924 = BU3337_Q[19];
         assign n8923 = BU3337_Q[20];
         assign n8922 = BU3337_Q[21];
         assign n8921 = BU3337_Q[22];
         assign n8920 = BU3337_Q[23];
         assign n8919 = BU3337_Q[24];
         assign n8918 = BU3337_Q[25];
         assign n8917 = BU3337_Q[26];
         assign n8916 = BU3337_Q[27];
      wire BU3337_CLK;
         assign BU3337_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3337(
         .A(BU3337_A),
         .B(BU3337_B),
         .ADD(BU3337_ADD),
         .Q(BU3337_Q),
         .CLK(BU3337_CLK)
      );

      defparam BU3512.INIT = 'ha3a3;
      wire BU3512_I0;
         assign BU3512_I0 = n8944;
      wire BU3512_I1;
         assign BU3512_I1 = n11091;
      wire BU3512_I2;
         assign BU3512_I2 = n11090;
      wire BU3512_I3;
         assign BU3512_I3 = 1'b0;
      wire BU3512_O;
         assign n21397 = BU3512_O;
      LUT4       BU3512(
         .I0(BU3512_I0),
         .I1(BU3512_I1),
         .I2(BU3512_I2),
         .I3(BU3512_I3),
         .O(BU3512_O)
      );

      wire [27 : 0] BU3519_A;
         assign BU3519_A[0] = n10203;
         assign BU3519_A[1] = n10202;
         assign BU3519_A[2] = n10201;
         assign BU3519_A[3] = n10200;
         assign BU3519_A[4] = n10199;
         assign BU3519_A[5] = n10198;
         assign BU3519_A[6] = n10197;
         assign BU3519_A[7] = n10196;
         assign BU3519_A[8] = n10195;
         assign BU3519_A[9] = n10194;
         assign BU3519_A[10] = n10193;
         assign BU3519_A[11] = n10192;
         assign BU3519_A[12] = n10191;
         assign BU3519_A[13] = n10190;
         assign BU3519_A[14] = n10189;
         assign BU3519_A[15] = n10188;
         assign BU3519_A[16] = n10187;
         assign BU3519_A[17] = n10186;
         assign BU3519_A[18] = n10185;
         assign BU3519_A[19] = n10184;
         assign BU3519_A[20] = n10183;
         assign BU3519_A[21] = n10182;
         assign BU3519_A[22] = n10181;
         assign BU3519_A[23] = n10180;
         assign BU3519_A[24] = n10179;
         assign BU3519_A[25] = n10178;
         assign BU3519_A[26] = n10177;
         assign BU3519_A[27] = n10176;
      wire [27 : 0] BU3519_B;
         assign BU3519_B[0] = 1'b1;
         assign BU3519_B[1] = 1'b0;
         assign BU3519_B[2] = 1'b1;
         assign BU3519_B[3] = 1'b0;
         assign BU3519_B[4] = 1'b1;
         assign BU3519_B[5] = 1'b1;
         assign BU3519_B[6] = 1'b0;
         assign BU3519_B[7] = 1'b0;
         assign BU3519_B[8] = 1'b0;
         assign BU3519_B[9] = 1'b0;
         assign BU3519_B[10] = 1'b1;
         assign BU3519_B[11] = 1'b1;
         assign BU3519_B[12] = 1'b0;
         assign BU3519_B[13] = 1'b1;
         assign BU3519_B[14] = 1'b0;
         assign BU3519_B[15] = 1'b0;
         assign BU3519_B[16] = 1'b0;
         assign BU3519_B[17] = 1'b1;
         assign BU3519_B[18] = 1'b0;
         assign BU3519_B[19] = 1'b1;
         assign BU3519_B[20] = 1'b0;
         assign BU3519_B[21] = 1'b0;
         assign BU3519_B[22] = 1'b0;
         assign BU3519_B[23] = 1'b0;
         assign BU3519_B[24] = 1'b0;
         assign BU3519_B[25] = 1'b0;
         assign BU3519_B[26] = 1'b0;
         assign BU3519_B[27] = 1'b0;
      wire BU3519_ADD;
         assign BU3519_ADD = n23166;
      wire [27 : 0] BU3519_S;
         assign n23137 = BU3519_S[27];
      wire [27 : 0] BU3519_Q;
         assign n10175 = BU3519_Q[0];
         assign n10174 = BU3519_Q[1];
         assign n10173 = BU3519_Q[2];
         assign n10172 = BU3519_Q[3];
         assign n10171 = BU3519_Q[4];
         assign n10170 = BU3519_Q[5];
         assign n10169 = BU3519_Q[6];
         assign n10168 = BU3519_Q[7];
         assign n10167 = BU3519_Q[8];
         assign n10166 = BU3519_Q[9];
         assign n10165 = BU3519_Q[10];
         assign n10164 = BU3519_Q[11];
         assign n10163 = BU3519_Q[12];
         assign n10162 = BU3519_Q[13];
         assign n10161 = BU3519_Q[14];
         assign n10160 = BU3519_Q[15];
         assign n10159 = BU3519_Q[16];
         assign n10158 = BU3519_Q[17];
         assign n10157 = BU3519_Q[18];
         assign n10156 = BU3519_Q[19];
         assign n10155 = BU3519_Q[20];
         assign n10154 = BU3519_Q[21];
         assign n10153 = BU3519_Q[22];
         assign n10152 = BU3519_Q[23];
         assign n10151 = BU3519_Q[24];
         assign n10150 = BU3519_Q[25];
         assign n10149 = BU3519_Q[26];
         assign n10148 = BU3519_Q[27];
      wire BU3519_CLK;
         assign BU3519_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3519(
         .A(BU3519_A),
         .B(BU3519_B),
         .ADD(BU3519_ADD),
         .S(BU3519_S),
         .Q(BU3519_Q),
         .CLK(BU3519_CLK)
      );

      defparam BU3694.INIT = 'h5c5c;
      wire BU3694_I0;
         assign BU3694_I0 = n8944;
      wire BU3694_I1;
         assign BU3694_I1 = n11091;
      wire BU3694_I2;
         assign BU3694_I2 = n11090;
      wire BU3694_I3;
         assign BU3694_I3 = 1'b0;
      wire BU3694_O;
         assign n23166 = BU3694_O;
      LUT4       BU3694(
         .I0(BU3694_I0),
         .I1(BU3694_I1),
         .I2(BU3694_I2),
         .I3(BU3694_I3),
         .O(BU3694_O)
      );

      wire [0 : 0] BU3699_D;
         assign BU3699_D[0] = n23137;
      wire [0 : 0] BU3699_Q;
         assign n11088 = BU3699_Q[0];
      wire BU3699_CLK;
         assign BU3699_CLK = n1088;
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
      BU3699(
         .D(BU3699_D),
         .Q(BU3699_Q),
         .CLK(BU3699_CLK)
      );

      wire [0 : 0] BU3708_D;
         assign BU3708_D[0] = n10960;
      wire [0 : 0] BU3708_Q;
         assign n10957 = BU3708_Q[0];
      wire BU3708_CLK;
         assign BU3708_CLK = n1088;
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
      BU3708(
         .D(BU3708_D),
         .Q(BU3708_Q),
         .CLK(BU3708_CLK)
      );

      wire [0 : 0] BU3715_D;
         assign BU3715_D[0] = n10959;
      wire [0 : 0] BU3715_Q;
         assign n10956 = BU3715_Q[0];
      wire BU3715_CLK;
         assign BU3715_CLK = n1088;
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
      BU3715(
         .D(BU3715_D),
         .Q(BU3715_Q),
         .CLK(BU3715_CLK)
      );

      wire [0 : 0] BU3722_D;
         assign BU3722_D[0] = n10958;
      wire [0 : 0] BU3722_Q;
         assign n10955 = BU3722_Q[0];
      wire BU3722_CLK;
         assign BU3722_CLK = n1088;
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
      BU3722(
         .D(BU3722_D),
         .Q(BU3722_Q),
         .CLK(BU3722_CLK)
      );

      wire [0 : 0] BU3729_D;
         assign BU3729_D[0] = n11090;
      wire [0 : 0] BU3729_Q;
         assign n11087 = BU3729_Q[0];
      wire BU3729_CLK;
         assign BU3729_CLK = n1088;
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
      BU3729(
         .D(BU3729_D),
         .Q(BU3729_Q),
         .CLK(BU3729_CLK)
      );

      wire [27 : 0] BU3745_A;
         assign BU3745_A[0] = n7711;
         assign BU3745_A[1] = n7710;
         assign BU3745_A[2] = n7709;
         assign BU3745_A[3] = n7708;
         assign BU3745_A[4] = n7707;
         assign BU3745_A[5] = n7706;
         assign BU3745_A[6] = n7705;
         assign BU3745_A[7] = n7704;
         assign BU3745_A[8] = n7703;
         assign BU3745_A[9] = n7702;
         assign BU3745_A[10] = n7701;
         assign BU3745_A[11] = n7700;
         assign BU3745_A[12] = n7699;
         assign BU3745_A[13] = n7698;
         assign BU3745_A[14] = n7697;
         assign BU3745_A[15] = n7696;
         assign BU3745_A[16] = n7695;
         assign BU3745_A[17] = n7694;
         assign BU3745_A[18] = n7693;
         assign BU3745_A[19] = n7692;
         assign BU3745_A[20] = n7691;
         assign BU3745_A[21] = n7690;
         assign BU3745_A[22] = n7689;
         assign BU3745_A[23] = n7688;
         assign BU3745_A[24] = n7687;
         assign BU3745_A[25] = n7686;
         assign BU3745_A[26] = n7685;
         assign BU3745_A[27] = n7684;
      wire [27 : 0] BU3745_B;
         assign BU3745_B[0] = n8938;
         assign BU3745_B[1] = n8937;
         assign BU3745_B[2] = n8936;
         assign BU3745_B[3] = n8935;
         assign BU3745_B[4] = n8934;
         assign BU3745_B[5] = n8933;
         assign BU3745_B[6] = n8932;
         assign BU3745_B[7] = n8931;
         assign BU3745_B[8] = n8930;
         assign BU3745_B[9] = n8929;
         assign BU3745_B[10] = n8928;
         assign BU3745_B[11] = n8927;
         assign BU3745_B[12] = n8926;
         assign BU3745_B[13] = n8925;
         assign BU3745_B[14] = n8924;
         assign BU3745_B[15] = n8923;
         assign BU3745_B[16] = n8922;
         assign BU3745_B[17] = n8921;
         assign BU3745_B[18] = n8920;
         assign BU3745_B[19] = n8919;
         assign BU3745_B[20] = n8918;
         assign BU3745_B[21] = n8917;
         assign BU3745_B[22] = n8916;
         assign BU3745_B[23] = n8916;
         assign BU3745_B[24] = n8916;
         assign BU3745_B[25] = n8916;
         assign BU3745_B[26] = n8916;
         assign BU3745_B[27] = n8916;
      wire BU3745_ADD;
         assign BU3745_ADD = n24576;
      wire [27 : 0] BU3745_Q;
         assign n7683 = BU3745_Q[0];
         assign n7682 = BU3745_Q[1];
         assign n7681 = BU3745_Q[2];
         assign n7680 = BU3745_Q[3];
         assign n7679 = BU3745_Q[4];
         assign n7678 = BU3745_Q[5];
         assign n7677 = BU3745_Q[6];
         assign n7676 = BU3745_Q[7];
         assign n7675 = BU3745_Q[8];
         assign n7674 = BU3745_Q[9];
         assign n7673 = BU3745_Q[10];
         assign n7672 = BU3745_Q[11];
         assign n7671 = BU3745_Q[12];
         assign n7670 = BU3745_Q[13];
         assign n7669 = BU3745_Q[14];
         assign n7668 = BU3745_Q[15];
         assign n7667 = BU3745_Q[16];
         assign n7666 = BU3745_Q[17];
         assign n7665 = BU3745_Q[18];
         assign n7664 = BU3745_Q[19];
         assign n7663 = BU3745_Q[20];
         assign n7662 = BU3745_Q[21];
         assign n7661 = BU3745_Q[22];
         assign n7660 = BU3745_Q[23];
         assign n7659 = BU3745_Q[24];
         assign n7658 = BU3745_Q[25];
         assign n7657 = BU3745_Q[26];
         assign n7656 = BU3745_Q[27];
      wire BU3745_CLK;
         assign BU3745_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3745(
         .A(BU3745_A),
         .B(BU3745_B),
         .ADD(BU3745_ADD),
         .Q(BU3745_Q),
         .CLK(BU3745_CLK)
      );

      defparam BU3920.INIT = 'ha53c;
      wire BU3920_I0;
         assign BU3920_I0 = n8916;
      wire BU3920_I1;
         assign BU3920_I1 = n11088;
      wire BU3920_I2;
         assign BU3920_I2 = 1'b0;
      wire BU3920_I3;
         assign BU3920_I3 = n11087;
      wire BU3920_O;
         assign n24576 = BU3920_O;
      LUT4       BU3920(
         .I0(BU3920_I0),
         .I1(BU3920_I1),
         .I2(BU3920_I2),
         .I3(BU3920_I3),
         .O(BU3920_O)
      );

      wire [27 : 0] BU3925_A;
         assign BU3925_A[0] = n8943;
         assign BU3925_A[1] = n8942;
         assign BU3925_A[2] = n8941;
         assign BU3925_A[3] = n8940;
         assign BU3925_A[4] = n8939;
         assign BU3925_A[5] = n8938;
         assign BU3925_A[6] = n8937;
         assign BU3925_A[7] = n8936;
         assign BU3925_A[8] = n8935;
         assign BU3925_A[9] = n8934;
         assign BU3925_A[10] = n8933;
         assign BU3925_A[11] = n8932;
         assign BU3925_A[12] = n8931;
         assign BU3925_A[13] = n8930;
         assign BU3925_A[14] = n8929;
         assign BU3925_A[15] = n8928;
         assign BU3925_A[16] = n8927;
         assign BU3925_A[17] = n8926;
         assign BU3925_A[18] = n8925;
         assign BU3925_A[19] = n8924;
         assign BU3925_A[20] = n8923;
         assign BU3925_A[21] = n8922;
         assign BU3925_A[22] = n8921;
         assign BU3925_A[23] = n8920;
         assign BU3925_A[24] = n8919;
         assign BU3925_A[25] = n8918;
         assign BU3925_A[26] = n8917;
         assign BU3925_A[27] = n8916;
      wire [27 : 0] BU3925_B;
         assign BU3925_B[0] = n7706;
         assign BU3925_B[1] = n7705;
         assign BU3925_B[2] = n7704;
         assign BU3925_B[3] = n7703;
         assign BU3925_B[4] = n7702;
         assign BU3925_B[5] = n7701;
         assign BU3925_B[6] = n7700;
         assign BU3925_B[7] = n7699;
         assign BU3925_B[8] = n7698;
         assign BU3925_B[9] = n7697;
         assign BU3925_B[10] = n7696;
         assign BU3925_B[11] = n7695;
         assign BU3925_B[12] = n7694;
         assign BU3925_B[13] = n7693;
         assign BU3925_B[14] = n7692;
         assign BU3925_B[15] = n7691;
         assign BU3925_B[16] = n7690;
         assign BU3925_B[17] = n7689;
         assign BU3925_B[18] = n7688;
         assign BU3925_B[19] = n7687;
         assign BU3925_B[20] = n7686;
         assign BU3925_B[21] = n7685;
         assign BU3925_B[22] = n7684;
         assign BU3925_B[23] = n7684;
         assign BU3925_B[24] = n7684;
         assign BU3925_B[25] = n7684;
         assign BU3925_B[26] = n7684;
         assign BU3925_B[27] = n7684;
      wire BU3925_ADD;
         assign BU3925_ADD = n24577;
      wire [27 : 0] BU3925_Q;
         assign n8915 = BU3925_Q[0];
         assign n8914 = BU3925_Q[1];
         assign n8913 = BU3925_Q[2];
         assign n8912 = BU3925_Q[3];
         assign n8911 = BU3925_Q[4];
         assign n8910 = BU3925_Q[5];
         assign n8909 = BU3925_Q[6];
         assign n8908 = BU3925_Q[7];
         assign n8907 = BU3925_Q[8];
         assign n8906 = BU3925_Q[9];
         assign n8905 = BU3925_Q[10];
         assign n8904 = BU3925_Q[11];
         assign n8903 = BU3925_Q[12];
         assign n8902 = BU3925_Q[13];
         assign n8901 = BU3925_Q[14];
         assign n8900 = BU3925_Q[15];
         assign n8899 = BU3925_Q[16];
         assign n8898 = BU3925_Q[17];
         assign n8897 = BU3925_Q[18];
         assign n8896 = BU3925_Q[19];
         assign n8895 = BU3925_Q[20];
         assign n8894 = BU3925_Q[21];
         assign n8893 = BU3925_Q[22];
         assign n8892 = BU3925_Q[23];
         assign n8891 = BU3925_Q[24];
         assign n8890 = BU3925_Q[25];
         assign n8889 = BU3925_Q[26];
         assign n8888 = BU3925_Q[27];
      wire BU3925_CLK;
         assign BU3925_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU3925(
         .A(BU3925_A),
         .B(BU3925_B),
         .ADD(BU3925_ADD),
         .Q(BU3925_Q),
         .CLK(BU3925_CLK)
      );

      defparam BU4100.INIT = 'ha3a3;
      wire BU4100_I0;
         assign BU4100_I0 = n8916;
      wire BU4100_I1;
         assign BU4100_I1 = n11088;
      wire BU4100_I2;
         assign BU4100_I2 = n11087;
      wire BU4100_I3;
         assign BU4100_I3 = 1'b0;
      wire BU4100_O;
         assign n24577 = BU4100_O;
      LUT4       BU4100(
         .I0(BU4100_I0),
         .I1(BU4100_I1),
         .I2(BU4100_I2),
         .I3(BU4100_I3),
         .O(BU4100_O)
      );

      wire [27 : 0] BU4107_A;
         assign BU4107_A[0] = n10175;
         assign BU4107_A[1] = n10174;
         assign BU4107_A[2] = n10173;
         assign BU4107_A[3] = n10172;
         assign BU4107_A[4] = n10171;
         assign BU4107_A[5] = n10170;
         assign BU4107_A[6] = n10169;
         assign BU4107_A[7] = n10168;
         assign BU4107_A[8] = n10167;
         assign BU4107_A[9] = n10166;
         assign BU4107_A[10] = n10165;
         assign BU4107_A[11] = n10164;
         assign BU4107_A[12] = n10163;
         assign BU4107_A[13] = n10162;
         assign BU4107_A[14] = n10161;
         assign BU4107_A[15] = n10160;
         assign BU4107_A[16] = n10159;
         assign BU4107_A[17] = n10158;
         assign BU4107_A[18] = n10157;
         assign BU4107_A[19] = n10156;
         assign BU4107_A[20] = n10155;
         assign BU4107_A[21] = n10154;
         assign BU4107_A[22] = n10153;
         assign BU4107_A[23] = n10152;
         assign BU4107_A[24] = n10151;
         assign BU4107_A[25] = n10150;
         assign BU4107_A[26] = n10149;
         assign BU4107_A[27] = n10148;
      wire [27 : 0] BU4107_B;
         assign BU4107_B[0] = 1'b0;
         assign BU4107_B[1] = 1'b0;
         assign BU4107_B[2] = 1'b0;
         assign BU4107_B[3] = 1'b0;
         assign BU4107_B[4] = 1'b0;
         assign BU4107_B[5] = 1'b1;
         assign BU4107_B[6] = 1'b1;
         assign BU4107_B[7] = 1'b0;
         assign BU4107_B[8] = 1'b1;
         assign BU4107_B[9] = 1'b1;
         assign BU4107_B[10] = 1'b1;
         assign BU4107_B[11] = 1'b0;
         assign BU4107_B[12] = 1'b1;
         assign BU4107_B[13] = 1'b0;
         assign BU4107_B[14] = 1'b0;
         assign BU4107_B[15] = 1'b0;
         assign BU4107_B[16] = 1'b1;
         assign BU4107_B[17] = 1'b0;
         assign BU4107_B[18] = 1'b1;
         assign BU4107_B[19] = 1'b0;
         assign BU4107_B[20] = 1'b0;
         assign BU4107_B[21] = 1'b0;
         assign BU4107_B[22] = 1'b0;
         assign BU4107_B[23] = 1'b0;
         assign BU4107_B[24] = 1'b0;
         assign BU4107_B[25] = 1'b0;
         assign BU4107_B[26] = 1'b0;
         assign BU4107_B[27] = 1'b0;
      wire BU4107_ADD;
         assign BU4107_ADD = n26346;
      wire [27 : 0] BU4107_S;
         assign n26317 = BU4107_S[27];
      wire [27 : 0] BU4107_Q;
         assign n10147 = BU4107_Q[0];
         assign n10146 = BU4107_Q[1];
         assign n10145 = BU4107_Q[2];
         assign n10144 = BU4107_Q[3];
         assign n10143 = BU4107_Q[4];
         assign n10142 = BU4107_Q[5];
         assign n10141 = BU4107_Q[6];
         assign n10140 = BU4107_Q[7];
         assign n10139 = BU4107_Q[8];
         assign n10138 = BU4107_Q[9];
         assign n10137 = BU4107_Q[10];
         assign n10136 = BU4107_Q[11];
         assign n10135 = BU4107_Q[12];
         assign n10134 = BU4107_Q[13];
         assign n10133 = BU4107_Q[14];
         assign n10132 = BU4107_Q[15];
         assign n10131 = BU4107_Q[16];
         assign n10130 = BU4107_Q[17];
         assign n10129 = BU4107_Q[18];
         assign n10128 = BU4107_Q[19];
         assign n10127 = BU4107_Q[20];
         assign n10126 = BU4107_Q[21];
         assign n10125 = BU4107_Q[22];
         assign n10124 = BU4107_Q[23];
         assign n10123 = BU4107_Q[24];
         assign n10122 = BU4107_Q[25];
         assign n10121 = BU4107_Q[26];
         assign n10120 = BU4107_Q[27];
      wire BU4107_CLK;
         assign BU4107_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4107(
         .A(BU4107_A),
         .B(BU4107_B),
         .ADD(BU4107_ADD),
         .S(BU4107_S),
         .Q(BU4107_Q),
         .CLK(BU4107_CLK)
      );

      defparam BU4282.INIT = 'h5c5c;
      wire BU4282_I0;
         assign BU4282_I0 = n8916;
      wire BU4282_I1;
         assign BU4282_I1 = n11088;
      wire BU4282_I2;
         assign BU4282_I2 = n11087;
      wire BU4282_I3;
         assign BU4282_I3 = 1'b0;
      wire BU4282_O;
         assign n26346 = BU4282_O;
      LUT4       BU4282(
         .I0(BU4282_I0),
         .I1(BU4282_I1),
         .I2(BU4282_I2),
         .I3(BU4282_I3),
         .O(BU4282_O)
      );

      wire [0 : 0] BU4287_D;
         assign BU4287_D[0] = n26317;
      wire [0 : 0] BU4287_Q;
         assign n11085 = BU4287_Q[0];
      wire BU4287_CLK;
         assign BU4287_CLK = n1088;
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
      BU4287(
         .D(BU4287_D),
         .Q(BU4287_Q),
         .CLK(BU4287_CLK)
      );

      wire [0 : 0] BU4296_D;
         assign BU4296_D[0] = n10957;
      wire [0 : 0] BU4296_Q;
         assign n10954 = BU4296_Q[0];
      wire BU4296_CLK;
         assign BU4296_CLK = n1088;
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
      BU4296(
         .D(BU4296_D),
         .Q(BU4296_Q),
         .CLK(BU4296_CLK)
      );

      wire [0 : 0] BU4303_D;
         assign BU4303_D[0] = n10956;
      wire [0 : 0] BU4303_Q;
         assign n10953 = BU4303_Q[0];
      wire BU4303_CLK;
         assign BU4303_CLK = n1088;
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
      BU4303(
         .D(BU4303_D),
         .Q(BU4303_Q),
         .CLK(BU4303_CLK)
      );

      wire [0 : 0] BU4310_D;
         assign BU4310_D[0] = n10955;
      wire [0 : 0] BU4310_Q;
         assign n10952 = BU4310_Q[0];
      wire BU4310_CLK;
         assign BU4310_CLK = n1088;
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
      BU4310(
         .D(BU4310_D),
         .Q(BU4310_Q),
         .CLK(BU4310_CLK)
      );

      wire [0 : 0] BU4317_D;
         assign BU4317_D[0] = n11087;
      wire [0 : 0] BU4317_Q;
         assign n11084 = BU4317_Q[0];
      wire BU4317_CLK;
         assign BU4317_CLK = n1088;
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
      BU4317(
         .D(BU4317_D),
         .Q(BU4317_Q),
         .CLK(BU4317_CLK)
      );

      wire [27 : 0] BU4333_A;
         assign BU4333_A[0] = n7683;
         assign BU4333_A[1] = n7682;
         assign BU4333_A[2] = n7681;
         assign BU4333_A[3] = n7680;
         assign BU4333_A[4] = n7679;
         assign BU4333_A[5] = n7678;
         assign BU4333_A[6] = n7677;
         assign BU4333_A[7] = n7676;
         assign BU4333_A[8] = n7675;
         assign BU4333_A[9] = n7674;
         assign BU4333_A[10] = n7673;
         assign BU4333_A[11] = n7672;
         assign BU4333_A[12] = n7671;
         assign BU4333_A[13] = n7670;
         assign BU4333_A[14] = n7669;
         assign BU4333_A[15] = n7668;
         assign BU4333_A[16] = n7667;
         assign BU4333_A[17] = n7666;
         assign BU4333_A[18] = n7665;
         assign BU4333_A[19] = n7664;
         assign BU4333_A[20] = n7663;
         assign BU4333_A[21] = n7662;
         assign BU4333_A[22] = n7661;
         assign BU4333_A[23] = n7660;
         assign BU4333_A[24] = n7659;
         assign BU4333_A[25] = n7658;
         assign BU4333_A[26] = n7657;
         assign BU4333_A[27] = n7656;
      wire [27 : 0] BU4333_B;
         assign BU4333_B[0] = n8909;
         assign BU4333_B[1] = n8908;
         assign BU4333_B[2] = n8907;
         assign BU4333_B[3] = n8906;
         assign BU4333_B[4] = n8905;
         assign BU4333_B[5] = n8904;
         assign BU4333_B[6] = n8903;
         assign BU4333_B[7] = n8902;
         assign BU4333_B[8] = n8901;
         assign BU4333_B[9] = n8900;
         assign BU4333_B[10] = n8899;
         assign BU4333_B[11] = n8898;
         assign BU4333_B[12] = n8897;
         assign BU4333_B[13] = n8896;
         assign BU4333_B[14] = n8895;
         assign BU4333_B[15] = n8894;
         assign BU4333_B[16] = n8893;
         assign BU4333_B[17] = n8892;
         assign BU4333_B[18] = n8891;
         assign BU4333_B[19] = n8890;
         assign BU4333_B[20] = n8889;
         assign BU4333_B[21] = n8888;
         assign BU4333_B[22] = n8888;
         assign BU4333_B[23] = n8888;
         assign BU4333_B[24] = n8888;
         assign BU4333_B[25] = n8888;
         assign BU4333_B[26] = n8888;
         assign BU4333_B[27] = n8888;
      wire BU4333_ADD;
         assign BU4333_ADD = n27756;
      wire [27 : 0] BU4333_Q;
         assign n7655 = BU4333_Q[0];
         assign n7654 = BU4333_Q[1];
         assign n7653 = BU4333_Q[2];
         assign n7652 = BU4333_Q[3];
         assign n7651 = BU4333_Q[4];
         assign n7650 = BU4333_Q[5];
         assign n7649 = BU4333_Q[6];
         assign n7648 = BU4333_Q[7];
         assign n7647 = BU4333_Q[8];
         assign n7646 = BU4333_Q[9];
         assign n7645 = BU4333_Q[10];
         assign n7644 = BU4333_Q[11];
         assign n7643 = BU4333_Q[12];
         assign n7642 = BU4333_Q[13];
         assign n7641 = BU4333_Q[14];
         assign n7640 = BU4333_Q[15];
         assign n7639 = BU4333_Q[16];
         assign n7638 = BU4333_Q[17];
         assign n7637 = BU4333_Q[18];
         assign n7636 = BU4333_Q[19];
         assign n7635 = BU4333_Q[20];
         assign n7634 = BU4333_Q[21];
         assign n7633 = BU4333_Q[22];
         assign n7632 = BU4333_Q[23];
         assign n7631 = BU4333_Q[24];
         assign n7630 = BU4333_Q[25];
         assign n7629 = BU4333_Q[26];
         assign n7628 = BU4333_Q[27];
      wire BU4333_CLK;
         assign BU4333_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4333(
         .A(BU4333_A),
         .B(BU4333_B),
         .ADD(BU4333_ADD),
         .Q(BU4333_Q),
         .CLK(BU4333_CLK)
      );

      defparam BU4508.INIT = 'ha53c;
      wire BU4508_I0;
         assign BU4508_I0 = n8888;
      wire BU4508_I1;
         assign BU4508_I1 = n11085;
      wire BU4508_I2;
         assign BU4508_I2 = 1'b0;
      wire BU4508_I3;
         assign BU4508_I3 = n11084;
      wire BU4508_O;
         assign n27756 = BU4508_O;
      LUT4       BU4508(
         .I0(BU4508_I0),
         .I1(BU4508_I1),
         .I2(BU4508_I2),
         .I3(BU4508_I3),
         .O(BU4508_O)
      );

      wire [27 : 0] BU4513_A;
         assign BU4513_A[0] = n8915;
         assign BU4513_A[1] = n8914;
         assign BU4513_A[2] = n8913;
         assign BU4513_A[3] = n8912;
         assign BU4513_A[4] = n8911;
         assign BU4513_A[5] = n8910;
         assign BU4513_A[6] = n8909;
         assign BU4513_A[7] = n8908;
         assign BU4513_A[8] = n8907;
         assign BU4513_A[9] = n8906;
         assign BU4513_A[10] = n8905;
         assign BU4513_A[11] = n8904;
         assign BU4513_A[12] = n8903;
         assign BU4513_A[13] = n8902;
         assign BU4513_A[14] = n8901;
         assign BU4513_A[15] = n8900;
         assign BU4513_A[16] = n8899;
         assign BU4513_A[17] = n8898;
         assign BU4513_A[18] = n8897;
         assign BU4513_A[19] = n8896;
         assign BU4513_A[20] = n8895;
         assign BU4513_A[21] = n8894;
         assign BU4513_A[22] = n8893;
         assign BU4513_A[23] = n8892;
         assign BU4513_A[24] = n8891;
         assign BU4513_A[25] = n8890;
         assign BU4513_A[26] = n8889;
         assign BU4513_A[27] = n8888;
      wire [27 : 0] BU4513_B;
         assign BU4513_B[0] = n7677;
         assign BU4513_B[1] = n7676;
         assign BU4513_B[2] = n7675;
         assign BU4513_B[3] = n7674;
         assign BU4513_B[4] = n7673;
         assign BU4513_B[5] = n7672;
         assign BU4513_B[6] = n7671;
         assign BU4513_B[7] = n7670;
         assign BU4513_B[8] = n7669;
         assign BU4513_B[9] = n7668;
         assign BU4513_B[10] = n7667;
         assign BU4513_B[11] = n7666;
         assign BU4513_B[12] = n7665;
         assign BU4513_B[13] = n7664;
         assign BU4513_B[14] = n7663;
         assign BU4513_B[15] = n7662;
         assign BU4513_B[16] = n7661;
         assign BU4513_B[17] = n7660;
         assign BU4513_B[18] = n7659;
         assign BU4513_B[19] = n7658;
         assign BU4513_B[20] = n7657;
         assign BU4513_B[21] = n7656;
         assign BU4513_B[22] = n7656;
         assign BU4513_B[23] = n7656;
         assign BU4513_B[24] = n7656;
         assign BU4513_B[25] = n7656;
         assign BU4513_B[26] = n7656;
         assign BU4513_B[27] = n7656;
      wire BU4513_ADD;
         assign BU4513_ADD = n27757;
      wire [27 : 0] BU4513_Q;
         assign n8887 = BU4513_Q[0];
         assign n8886 = BU4513_Q[1];
         assign n8885 = BU4513_Q[2];
         assign n8884 = BU4513_Q[3];
         assign n8883 = BU4513_Q[4];
         assign n8882 = BU4513_Q[5];
         assign n8881 = BU4513_Q[6];
         assign n8880 = BU4513_Q[7];
         assign n8879 = BU4513_Q[8];
         assign n8878 = BU4513_Q[9];
         assign n8877 = BU4513_Q[10];
         assign n8876 = BU4513_Q[11];
         assign n8875 = BU4513_Q[12];
         assign n8874 = BU4513_Q[13];
         assign n8873 = BU4513_Q[14];
         assign n8872 = BU4513_Q[15];
         assign n8871 = BU4513_Q[16];
         assign n8870 = BU4513_Q[17];
         assign n8869 = BU4513_Q[18];
         assign n8868 = BU4513_Q[19];
         assign n8867 = BU4513_Q[20];
         assign n8866 = BU4513_Q[21];
         assign n8865 = BU4513_Q[22];
         assign n8864 = BU4513_Q[23];
         assign n8863 = BU4513_Q[24];
         assign n8862 = BU4513_Q[25];
         assign n8861 = BU4513_Q[26];
         assign n8860 = BU4513_Q[27];
      wire BU4513_CLK;
         assign BU4513_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4513(
         .A(BU4513_A),
         .B(BU4513_B),
         .ADD(BU4513_ADD),
         .Q(BU4513_Q),
         .CLK(BU4513_CLK)
      );

      defparam BU4688.INIT = 'ha3a3;
      wire BU4688_I0;
         assign BU4688_I0 = n8888;
      wire BU4688_I1;
         assign BU4688_I1 = n11085;
      wire BU4688_I2;
         assign BU4688_I2 = n11084;
      wire BU4688_I3;
         assign BU4688_I3 = 1'b0;
      wire BU4688_O;
         assign n27757 = BU4688_O;
      LUT4       BU4688(
         .I0(BU4688_I0),
         .I1(BU4688_I1),
         .I2(BU4688_I2),
         .I3(BU4688_I3),
         .O(BU4688_O)
      );

      wire [27 : 0] BU4695_A;
         assign BU4695_A[0] = n10147;
         assign BU4695_A[1] = n10146;
         assign BU4695_A[2] = n10145;
         assign BU4695_A[3] = n10144;
         assign BU4695_A[4] = n10143;
         assign BU4695_A[5] = n10142;
         assign BU4695_A[6] = n10141;
         assign BU4695_A[7] = n10140;
         assign BU4695_A[8] = n10139;
         assign BU4695_A[9] = n10138;
         assign BU4695_A[10] = n10137;
         assign BU4695_A[11] = n10136;
         assign BU4695_A[12] = n10135;
         assign BU4695_A[13] = n10134;
         assign BU4695_A[14] = n10133;
         assign BU4695_A[15] = n10132;
         assign BU4695_A[16] = n10131;
         assign BU4695_A[17] = n10130;
         assign BU4695_A[18] = n10129;
         assign BU4695_A[19] = n10128;
         assign BU4695_A[20] = n10127;
         assign BU4695_A[21] = n10126;
         assign BU4695_A[22] = n10125;
         assign BU4695_A[23] = n10124;
         assign BU4695_A[24] = n10123;
         assign BU4695_A[25] = n10122;
         assign BU4695_A[26] = n10121;
         assign BU4695_A[27] = n10120;
      wire [27 : 0] BU4695_B;
         assign BU4695_B[0] = 1'b0;
         assign BU4695_B[1] = 1'b0;
         assign BU4695_B[2] = 1'b0;
         assign BU4695_B[3] = 1'b1;
         assign BU4695_B[4] = 1'b1;
         assign BU4695_B[5] = 1'b0;
         assign BU4695_B[6] = 1'b1;
         assign BU4695_B[7] = 1'b1;
         assign BU4695_B[8] = 1'b1;
         assign BU4695_B[9] = 1'b1;
         assign BU4695_B[10] = 1'b0;
         assign BU4695_B[11] = 1'b1;
         assign BU4695_B[12] = 1'b0;
         assign BU4695_B[13] = 1'b0;
         assign BU4695_B[14] = 1'b0;
         assign BU4695_B[15] = 1'b1;
         assign BU4695_B[16] = 1'b0;
         assign BU4695_B[17] = 1'b1;
         assign BU4695_B[18] = 1'b0;
         assign BU4695_B[19] = 1'b0;
         assign BU4695_B[20] = 1'b0;
         assign BU4695_B[21] = 1'b0;
         assign BU4695_B[22] = 1'b0;
         assign BU4695_B[23] = 1'b0;
         assign BU4695_B[24] = 1'b0;
         assign BU4695_B[25] = 1'b0;
         assign BU4695_B[26] = 1'b0;
         assign BU4695_B[27] = 1'b0;
      wire BU4695_ADD;
         assign BU4695_ADD = n29526;
      wire [27 : 0] BU4695_S;
         assign n29497 = BU4695_S[27];
      wire [27 : 0] BU4695_Q;
         assign n10119 = BU4695_Q[0];
         assign n10118 = BU4695_Q[1];
         assign n10117 = BU4695_Q[2];
         assign n10116 = BU4695_Q[3];
         assign n10115 = BU4695_Q[4];
         assign n10114 = BU4695_Q[5];
         assign n10113 = BU4695_Q[6];
         assign n10112 = BU4695_Q[7];
         assign n10111 = BU4695_Q[8];
         assign n10110 = BU4695_Q[9];
         assign n10109 = BU4695_Q[10];
         assign n10108 = BU4695_Q[11];
         assign n10107 = BU4695_Q[12];
         assign n10106 = BU4695_Q[13];
         assign n10105 = BU4695_Q[14];
         assign n10104 = BU4695_Q[15];
         assign n10103 = BU4695_Q[16];
         assign n10102 = BU4695_Q[17];
         assign n10101 = BU4695_Q[18];
         assign n10100 = BU4695_Q[19];
         assign n10099 = BU4695_Q[20];
         assign n10098 = BU4695_Q[21];
         assign n10097 = BU4695_Q[22];
         assign n10096 = BU4695_Q[23];
         assign n10095 = BU4695_Q[24];
         assign n10094 = BU4695_Q[25];
         assign n10093 = BU4695_Q[26];
         assign n10092 = BU4695_Q[27];
      wire BU4695_CLK;
         assign BU4695_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4695(
         .A(BU4695_A),
         .B(BU4695_B),
         .ADD(BU4695_ADD),
         .S(BU4695_S),
         .Q(BU4695_Q),
         .CLK(BU4695_CLK)
      );

      defparam BU4870.INIT = 'h5c5c;
      wire BU4870_I0;
         assign BU4870_I0 = n8888;
      wire BU4870_I1;
         assign BU4870_I1 = n11085;
      wire BU4870_I2;
         assign BU4870_I2 = n11084;
      wire BU4870_I3;
         assign BU4870_I3 = 1'b0;
      wire BU4870_O;
         assign n29526 = BU4870_O;
      LUT4       BU4870(
         .I0(BU4870_I0),
         .I1(BU4870_I1),
         .I2(BU4870_I2),
         .I3(BU4870_I3),
         .O(BU4870_O)
      );

      wire [0 : 0] BU4875_D;
         assign BU4875_D[0] = n29497;
      wire [0 : 0] BU4875_Q;
         assign n11082 = BU4875_Q[0];
      wire BU4875_CLK;
         assign BU4875_CLK = n1088;
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
      BU4875(
         .D(BU4875_D),
         .Q(BU4875_Q),
         .CLK(BU4875_CLK)
      );

      wire [0 : 0] BU4884_D;
         assign BU4884_D[0] = n10954;
      wire [0 : 0] BU4884_Q;
         assign n10951 = BU4884_Q[0];
      wire BU4884_CLK;
         assign BU4884_CLK = n1088;
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
      BU4884(
         .D(BU4884_D),
         .Q(BU4884_Q),
         .CLK(BU4884_CLK)
      );

      wire [0 : 0] BU4891_D;
         assign BU4891_D[0] = n10953;
      wire [0 : 0] BU4891_Q;
         assign n10950 = BU4891_Q[0];
      wire BU4891_CLK;
         assign BU4891_CLK = n1088;
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
      BU4891(
         .D(BU4891_D),
         .Q(BU4891_Q),
         .CLK(BU4891_CLK)
      );

      wire [0 : 0] BU4898_D;
         assign BU4898_D[0] = n10952;
      wire [0 : 0] BU4898_Q;
         assign n10949 = BU4898_Q[0];
      wire BU4898_CLK;
         assign BU4898_CLK = n1088;
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
      BU4898(
         .D(BU4898_D),
         .Q(BU4898_Q),
         .CLK(BU4898_CLK)
      );

      wire [0 : 0] BU4905_D;
         assign BU4905_D[0] = n11084;
      wire [0 : 0] BU4905_Q;
         assign n11081 = BU4905_Q[0];
      wire BU4905_CLK;
         assign BU4905_CLK = n1088;
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
      BU4905(
         .D(BU4905_D),
         .Q(BU4905_Q),
         .CLK(BU4905_CLK)
      );

      wire [27 : 0] BU4921_A;
         assign BU4921_A[0] = n7655;
         assign BU4921_A[1] = n7654;
         assign BU4921_A[2] = n7653;
         assign BU4921_A[3] = n7652;
         assign BU4921_A[4] = n7651;
         assign BU4921_A[5] = n7650;
         assign BU4921_A[6] = n7649;
         assign BU4921_A[7] = n7648;
         assign BU4921_A[8] = n7647;
         assign BU4921_A[9] = n7646;
         assign BU4921_A[10] = n7645;
         assign BU4921_A[11] = n7644;
         assign BU4921_A[12] = n7643;
         assign BU4921_A[13] = n7642;
         assign BU4921_A[14] = n7641;
         assign BU4921_A[15] = n7640;
         assign BU4921_A[16] = n7639;
         assign BU4921_A[17] = n7638;
         assign BU4921_A[18] = n7637;
         assign BU4921_A[19] = n7636;
         assign BU4921_A[20] = n7635;
         assign BU4921_A[21] = n7634;
         assign BU4921_A[22] = n7633;
         assign BU4921_A[23] = n7632;
         assign BU4921_A[24] = n7631;
         assign BU4921_A[25] = n7630;
         assign BU4921_A[26] = n7629;
         assign BU4921_A[27] = n7628;
      wire [27 : 0] BU4921_B;
         assign BU4921_B[0] = n8880;
         assign BU4921_B[1] = n8879;
         assign BU4921_B[2] = n8878;
         assign BU4921_B[3] = n8877;
         assign BU4921_B[4] = n8876;
         assign BU4921_B[5] = n8875;
         assign BU4921_B[6] = n8874;
         assign BU4921_B[7] = n8873;
         assign BU4921_B[8] = n8872;
         assign BU4921_B[9] = n8871;
         assign BU4921_B[10] = n8870;
         assign BU4921_B[11] = n8869;
         assign BU4921_B[12] = n8868;
         assign BU4921_B[13] = n8867;
         assign BU4921_B[14] = n8866;
         assign BU4921_B[15] = n8865;
         assign BU4921_B[16] = n8864;
         assign BU4921_B[17] = n8863;
         assign BU4921_B[18] = n8862;
         assign BU4921_B[19] = n8861;
         assign BU4921_B[20] = n8860;
         assign BU4921_B[21] = n8860;
         assign BU4921_B[22] = n8860;
         assign BU4921_B[23] = n8860;
         assign BU4921_B[24] = n8860;
         assign BU4921_B[25] = n8860;
         assign BU4921_B[26] = n8860;
         assign BU4921_B[27] = n8860;
      wire BU4921_ADD;
         assign BU4921_ADD = n30936;
      wire [27 : 0] BU4921_Q;
         assign n7627 = BU4921_Q[0];
         assign n7626 = BU4921_Q[1];
         assign n7625 = BU4921_Q[2];
         assign n7624 = BU4921_Q[3];
         assign n7623 = BU4921_Q[4];
         assign n7622 = BU4921_Q[5];
         assign n7621 = BU4921_Q[6];
         assign n7620 = BU4921_Q[7];
         assign n7619 = BU4921_Q[8];
         assign n7618 = BU4921_Q[9];
         assign n7617 = BU4921_Q[10];
         assign n7616 = BU4921_Q[11];
         assign n7615 = BU4921_Q[12];
         assign n7614 = BU4921_Q[13];
         assign n7613 = BU4921_Q[14];
         assign n7612 = BU4921_Q[15];
         assign n7611 = BU4921_Q[16];
         assign n7610 = BU4921_Q[17];
         assign n7609 = BU4921_Q[18];
         assign n7608 = BU4921_Q[19];
         assign n7607 = BU4921_Q[20];
         assign n7606 = BU4921_Q[21];
         assign n7605 = BU4921_Q[22];
         assign n7604 = BU4921_Q[23];
         assign n7603 = BU4921_Q[24];
         assign n7602 = BU4921_Q[25];
         assign n7601 = BU4921_Q[26];
         assign n7600 = BU4921_Q[27];
      wire BU4921_CLK;
         assign BU4921_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU4921(
         .A(BU4921_A),
         .B(BU4921_B),
         .ADD(BU4921_ADD),
         .Q(BU4921_Q),
         .CLK(BU4921_CLK)
      );

      defparam BU5096.INIT = 'ha53c;
      wire BU5096_I0;
         assign BU5096_I0 = n8860;
      wire BU5096_I1;
         assign BU5096_I1 = n11082;
      wire BU5096_I2;
         assign BU5096_I2 = 1'b0;
      wire BU5096_I3;
         assign BU5096_I3 = n11081;
      wire BU5096_O;
         assign n30936 = BU5096_O;
      LUT4       BU5096(
         .I0(BU5096_I0),
         .I1(BU5096_I1),
         .I2(BU5096_I2),
         .I3(BU5096_I3),
         .O(BU5096_O)
      );

      wire [27 : 0] BU5101_A;
         assign BU5101_A[0] = n8887;
         assign BU5101_A[1] = n8886;
         assign BU5101_A[2] = n8885;
         assign BU5101_A[3] = n8884;
         assign BU5101_A[4] = n8883;
         assign BU5101_A[5] = n8882;
         assign BU5101_A[6] = n8881;
         assign BU5101_A[7] = n8880;
         assign BU5101_A[8] = n8879;
         assign BU5101_A[9] = n8878;
         assign BU5101_A[10] = n8877;
         assign BU5101_A[11] = n8876;
         assign BU5101_A[12] = n8875;
         assign BU5101_A[13] = n8874;
         assign BU5101_A[14] = n8873;
         assign BU5101_A[15] = n8872;
         assign BU5101_A[16] = n8871;
         assign BU5101_A[17] = n8870;
         assign BU5101_A[18] = n8869;
         assign BU5101_A[19] = n8868;
         assign BU5101_A[20] = n8867;
         assign BU5101_A[21] = n8866;
         assign BU5101_A[22] = n8865;
         assign BU5101_A[23] = n8864;
         assign BU5101_A[24] = n8863;
         assign BU5101_A[25] = n8862;
         assign BU5101_A[26] = n8861;
         assign BU5101_A[27] = n8860;
      wire [27 : 0] BU5101_B;
         assign BU5101_B[0] = n7648;
         assign BU5101_B[1] = n7647;
         assign BU5101_B[2] = n7646;
         assign BU5101_B[3] = n7645;
         assign BU5101_B[4] = n7644;
         assign BU5101_B[5] = n7643;
         assign BU5101_B[6] = n7642;
         assign BU5101_B[7] = n7641;
         assign BU5101_B[8] = n7640;
         assign BU5101_B[9] = n7639;
         assign BU5101_B[10] = n7638;
         assign BU5101_B[11] = n7637;
         assign BU5101_B[12] = n7636;
         assign BU5101_B[13] = n7635;
         assign BU5101_B[14] = n7634;
         assign BU5101_B[15] = n7633;
         assign BU5101_B[16] = n7632;
         assign BU5101_B[17] = n7631;
         assign BU5101_B[18] = n7630;
         assign BU5101_B[19] = n7629;
         assign BU5101_B[20] = n7628;
         assign BU5101_B[21] = n7628;
         assign BU5101_B[22] = n7628;
         assign BU5101_B[23] = n7628;
         assign BU5101_B[24] = n7628;
         assign BU5101_B[25] = n7628;
         assign BU5101_B[26] = n7628;
         assign BU5101_B[27] = n7628;
      wire BU5101_ADD;
         assign BU5101_ADD = n30937;
      wire [27 : 0] BU5101_Q;
         assign n8859 = BU5101_Q[0];
         assign n8858 = BU5101_Q[1];
         assign n8857 = BU5101_Q[2];
         assign n8856 = BU5101_Q[3];
         assign n8855 = BU5101_Q[4];
         assign n8854 = BU5101_Q[5];
         assign n8853 = BU5101_Q[6];
         assign n8852 = BU5101_Q[7];
         assign n8851 = BU5101_Q[8];
         assign n8850 = BU5101_Q[9];
         assign n8849 = BU5101_Q[10];
         assign n8848 = BU5101_Q[11];
         assign n8847 = BU5101_Q[12];
         assign n8846 = BU5101_Q[13];
         assign n8845 = BU5101_Q[14];
         assign n8844 = BU5101_Q[15];
         assign n8843 = BU5101_Q[16];
         assign n8842 = BU5101_Q[17];
         assign n8841 = BU5101_Q[18];
         assign n8840 = BU5101_Q[19];
         assign n8839 = BU5101_Q[20];
         assign n8838 = BU5101_Q[21];
         assign n8837 = BU5101_Q[22];
         assign n8836 = BU5101_Q[23];
         assign n8835 = BU5101_Q[24];
         assign n8834 = BU5101_Q[25];
         assign n8833 = BU5101_Q[26];
         assign n8832 = BU5101_Q[27];
      wire BU5101_CLK;
         assign BU5101_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5101(
         .A(BU5101_A),
         .B(BU5101_B),
         .ADD(BU5101_ADD),
         .Q(BU5101_Q),
         .CLK(BU5101_CLK)
      );

      defparam BU5276.INIT = 'ha3a3;
      wire BU5276_I0;
         assign BU5276_I0 = n8860;
      wire BU5276_I1;
         assign BU5276_I1 = n11082;
      wire BU5276_I2;
         assign BU5276_I2 = n11081;
      wire BU5276_I3;
         assign BU5276_I3 = 1'b0;
      wire BU5276_O;
         assign n30937 = BU5276_O;
      LUT4       BU5276(
         .I0(BU5276_I0),
         .I1(BU5276_I1),
         .I2(BU5276_I2),
         .I3(BU5276_I3),
         .O(BU5276_O)
      );

      wire [27 : 0] BU5283_A;
         assign BU5283_A[0] = n10119;
         assign BU5283_A[1] = n10118;
         assign BU5283_A[2] = n10117;
         assign BU5283_A[3] = n10116;
         assign BU5283_A[4] = n10115;
         assign BU5283_A[5] = n10114;
         assign BU5283_A[6] = n10113;
         assign BU5283_A[7] = n10112;
         assign BU5283_A[8] = n10111;
         assign BU5283_A[9] = n10110;
         assign BU5283_A[10] = n10109;
         assign BU5283_A[11] = n10108;
         assign BU5283_A[12] = n10107;
         assign BU5283_A[13] = n10106;
         assign BU5283_A[14] = n10105;
         assign BU5283_A[15] = n10104;
         assign BU5283_A[16] = n10103;
         assign BU5283_A[17] = n10102;
         assign BU5283_A[18] = n10101;
         assign BU5283_A[19] = n10100;
         assign BU5283_A[20] = n10099;
         assign BU5283_A[21] = n10098;
         assign BU5283_A[22] = n10097;
         assign BU5283_A[23] = n10096;
         assign BU5283_A[24] = n10095;
         assign BU5283_A[25] = n10094;
         assign BU5283_A[26] = n10093;
         assign BU5283_A[27] = n10092;
      wire [27 : 0] BU5283_B;
         assign BU5283_B[0] = 1'b1;
         assign BU5283_B[1] = 1'b0;
         assign BU5283_B[2] = 1'b0;
         assign BU5283_B[3] = 1'b0;
         assign BU5283_B[4] = 1'b1;
         assign BU5283_B[5] = 1'b1;
         assign BU5283_B[6] = 1'b1;
         assign BU5283_B[7] = 1'b1;
         assign BU5283_B[8] = 1'b1;
         assign BU5283_B[9] = 1'b0;
         assign BU5283_B[10] = 1'b1;
         assign BU5283_B[11] = 1'b0;
         assign BU5283_B[12] = 1'b0;
         assign BU5283_B[13] = 1'b0;
         assign BU5283_B[14] = 1'b1;
         assign BU5283_B[15] = 1'b0;
         assign BU5283_B[16] = 1'b1;
         assign BU5283_B[17] = 1'b0;
         assign BU5283_B[18] = 1'b0;
         assign BU5283_B[19] = 1'b0;
         assign BU5283_B[20] = 1'b0;
         assign BU5283_B[21] = 1'b0;
         assign BU5283_B[22] = 1'b0;
         assign BU5283_B[23] = 1'b0;
         assign BU5283_B[24] = 1'b0;
         assign BU5283_B[25] = 1'b0;
         assign BU5283_B[26] = 1'b0;
         assign BU5283_B[27] = 1'b0;
      wire BU5283_ADD;
         assign BU5283_ADD = n32706;
      wire [27 : 0] BU5283_S;
         assign n32677 = BU5283_S[27];
      wire [27 : 0] BU5283_Q;
         assign n10091 = BU5283_Q[0];
         assign n10090 = BU5283_Q[1];
         assign n10089 = BU5283_Q[2];
         assign n10088 = BU5283_Q[3];
         assign n10087 = BU5283_Q[4];
         assign n10086 = BU5283_Q[5];
         assign n10085 = BU5283_Q[6];
         assign n10084 = BU5283_Q[7];
         assign n10083 = BU5283_Q[8];
         assign n10082 = BU5283_Q[9];
         assign n10081 = BU5283_Q[10];
         assign n10080 = BU5283_Q[11];
         assign n10079 = BU5283_Q[12];
         assign n10078 = BU5283_Q[13];
         assign n10077 = BU5283_Q[14];
         assign n10076 = BU5283_Q[15];
         assign n10075 = BU5283_Q[16];
         assign n10074 = BU5283_Q[17];
         assign n10073 = BU5283_Q[18];
         assign n10072 = BU5283_Q[19];
         assign n10071 = BU5283_Q[20];
         assign n10070 = BU5283_Q[21];
         assign n10069 = BU5283_Q[22];
         assign n10068 = BU5283_Q[23];
         assign n10067 = BU5283_Q[24];
         assign n10066 = BU5283_Q[25];
         assign n10065 = BU5283_Q[26];
         assign n10064 = BU5283_Q[27];
      wire BU5283_CLK;
         assign BU5283_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5283(
         .A(BU5283_A),
         .B(BU5283_B),
         .ADD(BU5283_ADD),
         .S(BU5283_S),
         .Q(BU5283_Q),
         .CLK(BU5283_CLK)
      );

      defparam BU5458.INIT = 'h5c5c;
      wire BU5458_I0;
         assign BU5458_I0 = n8860;
      wire BU5458_I1;
         assign BU5458_I1 = n11082;
      wire BU5458_I2;
         assign BU5458_I2 = n11081;
      wire BU5458_I3;
         assign BU5458_I3 = 1'b0;
      wire BU5458_O;
         assign n32706 = BU5458_O;
      LUT4       BU5458(
         .I0(BU5458_I0),
         .I1(BU5458_I1),
         .I2(BU5458_I2),
         .I3(BU5458_I3),
         .O(BU5458_O)
      );

      wire [0 : 0] BU5463_D;
         assign BU5463_D[0] = n32677;
      wire [0 : 0] BU5463_Q;
         assign n11079 = BU5463_Q[0];
      wire BU5463_CLK;
         assign BU5463_CLK = n1088;
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
      BU5463(
         .D(BU5463_D),
         .Q(BU5463_Q),
         .CLK(BU5463_CLK)
      );

      wire [0 : 0] BU5472_D;
         assign BU5472_D[0] = n10951;
      wire [0 : 0] BU5472_Q;
         assign n10948 = BU5472_Q[0];
      wire BU5472_CLK;
         assign BU5472_CLK = n1088;
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
      BU5472(
         .D(BU5472_D),
         .Q(BU5472_Q),
         .CLK(BU5472_CLK)
      );

      wire [0 : 0] BU5479_D;
         assign BU5479_D[0] = n10950;
      wire [0 : 0] BU5479_Q;
         assign n10947 = BU5479_Q[0];
      wire BU5479_CLK;
         assign BU5479_CLK = n1088;
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
      BU5479(
         .D(BU5479_D),
         .Q(BU5479_Q),
         .CLK(BU5479_CLK)
      );

      wire [0 : 0] BU5486_D;
         assign BU5486_D[0] = n10949;
      wire [0 : 0] BU5486_Q;
         assign n10946 = BU5486_Q[0];
      wire BU5486_CLK;
         assign BU5486_CLK = n1088;
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
      BU5486(
         .D(BU5486_D),
         .Q(BU5486_Q),
         .CLK(BU5486_CLK)
      );

      wire [0 : 0] BU5493_D;
         assign BU5493_D[0] = n11081;
      wire [0 : 0] BU5493_Q;
         assign n11078 = BU5493_Q[0];
      wire BU5493_CLK;
         assign BU5493_CLK = n1088;
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
      BU5493(
         .D(BU5493_D),
         .Q(BU5493_Q),
         .CLK(BU5493_CLK)
      );

      wire [27 : 0] BU5509_A;
         assign BU5509_A[0] = n7627;
         assign BU5509_A[1] = n7626;
         assign BU5509_A[2] = n7625;
         assign BU5509_A[3] = n7624;
         assign BU5509_A[4] = n7623;
         assign BU5509_A[5] = n7622;
         assign BU5509_A[6] = n7621;
         assign BU5509_A[7] = n7620;
         assign BU5509_A[8] = n7619;
         assign BU5509_A[9] = n7618;
         assign BU5509_A[10] = n7617;
         assign BU5509_A[11] = n7616;
         assign BU5509_A[12] = n7615;
         assign BU5509_A[13] = n7614;
         assign BU5509_A[14] = n7613;
         assign BU5509_A[15] = n7612;
         assign BU5509_A[16] = n7611;
         assign BU5509_A[17] = n7610;
         assign BU5509_A[18] = n7609;
         assign BU5509_A[19] = n7608;
         assign BU5509_A[20] = n7607;
         assign BU5509_A[21] = n7606;
         assign BU5509_A[22] = n7605;
         assign BU5509_A[23] = n7604;
         assign BU5509_A[24] = n7603;
         assign BU5509_A[25] = n7602;
         assign BU5509_A[26] = n7601;
         assign BU5509_A[27] = n7600;
      wire [27 : 0] BU5509_B;
         assign BU5509_B[0] = n8851;
         assign BU5509_B[1] = n8850;
         assign BU5509_B[2] = n8849;
         assign BU5509_B[3] = n8848;
         assign BU5509_B[4] = n8847;
         assign BU5509_B[5] = n8846;
         assign BU5509_B[6] = n8845;
         assign BU5509_B[7] = n8844;
         assign BU5509_B[8] = n8843;
         assign BU5509_B[9] = n8842;
         assign BU5509_B[10] = n8841;
         assign BU5509_B[11] = n8840;
         assign BU5509_B[12] = n8839;
         assign BU5509_B[13] = n8838;
         assign BU5509_B[14] = n8837;
         assign BU5509_B[15] = n8836;
         assign BU5509_B[16] = n8835;
         assign BU5509_B[17] = n8834;
         assign BU5509_B[18] = n8833;
         assign BU5509_B[19] = n8832;
         assign BU5509_B[20] = n8832;
         assign BU5509_B[21] = n8832;
         assign BU5509_B[22] = n8832;
         assign BU5509_B[23] = n8832;
         assign BU5509_B[24] = n8832;
         assign BU5509_B[25] = n8832;
         assign BU5509_B[26] = n8832;
         assign BU5509_B[27] = n8832;
      wire BU5509_ADD;
         assign BU5509_ADD = n34116;
      wire [27 : 0] BU5509_Q;
         assign n7599 = BU5509_Q[0];
         assign n7598 = BU5509_Q[1];
         assign n7597 = BU5509_Q[2];
         assign n7596 = BU5509_Q[3];
         assign n7595 = BU5509_Q[4];
         assign n7594 = BU5509_Q[5];
         assign n7593 = BU5509_Q[6];
         assign n7592 = BU5509_Q[7];
         assign n7591 = BU5509_Q[8];
         assign n7590 = BU5509_Q[9];
         assign n7589 = BU5509_Q[10];
         assign n7588 = BU5509_Q[11];
         assign n7587 = BU5509_Q[12];
         assign n7586 = BU5509_Q[13];
         assign n7585 = BU5509_Q[14];
         assign n7584 = BU5509_Q[15];
         assign n7583 = BU5509_Q[16];
         assign n7582 = BU5509_Q[17];
         assign n7581 = BU5509_Q[18];
         assign n7580 = BU5509_Q[19];
         assign n7579 = BU5509_Q[20];
         assign n7578 = BU5509_Q[21];
         assign n7577 = BU5509_Q[22];
         assign n7576 = BU5509_Q[23];
         assign n7575 = BU5509_Q[24];
         assign n7574 = BU5509_Q[25];
         assign n7573 = BU5509_Q[26];
         assign n7572 = BU5509_Q[27];
      wire BU5509_CLK;
         assign BU5509_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5509(
         .A(BU5509_A),
         .B(BU5509_B),
         .ADD(BU5509_ADD),
         .Q(BU5509_Q),
         .CLK(BU5509_CLK)
      );

      defparam BU5684.INIT = 'ha53c;
      wire BU5684_I0;
         assign BU5684_I0 = n8832;
      wire BU5684_I1;
         assign BU5684_I1 = n11079;
      wire BU5684_I2;
         assign BU5684_I2 = 1'b0;
      wire BU5684_I3;
         assign BU5684_I3 = n11078;
      wire BU5684_O;
         assign n34116 = BU5684_O;
      LUT4       BU5684(
         .I0(BU5684_I0),
         .I1(BU5684_I1),
         .I2(BU5684_I2),
         .I3(BU5684_I3),
         .O(BU5684_O)
      );

      wire [27 : 0] BU5689_A;
         assign BU5689_A[0] = n8859;
         assign BU5689_A[1] = n8858;
         assign BU5689_A[2] = n8857;
         assign BU5689_A[3] = n8856;
         assign BU5689_A[4] = n8855;
         assign BU5689_A[5] = n8854;
         assign BU5689_A[6] = n8853;
         assign BU5689_A[7] = n8852;
         assign BU5689_A[8] = n8851;
         assign BU5689_A[9] = n8850;
         assign BU5689_A[10] = n8849;
         assign BU5689_A[11] = n8848;
         assign BU5689_A[12] = n8847;
         assign BU5689_A[13] = n8846;
         assign BU5689_A[14] = n8845;
         assign BU5689_A[15] = n8844;
         assign BU5689_A[16] = n8843;
         assign BU5689_A[17] = n8842;
         assign BU5689_A[18] = n8841;
         assign BU5689_A[19] = n8840;
         assign BU5689_A[20] = n8839;
         assign BU5689_A[21] = n8838;
         assign BU5689_A[22] = n8837;
         assign BU5689_A[23] = n8836;
         assign BU5689_A[24] = n8835;
         assign BU5689_A[25] = n8834;
         assign BU5689_A[26] = n8833;
         assign BU5689_A[27] = n8832;
      wire [27 : 0] BU5689_B;
         assign BU5689_B[0] = n7619;
         assign BU5689_B[1] = n7618;
         assign BU5689_B[2] = n7617;
         assign BU5689_B[3] = n7616;
         assign BU5689_B[4] = n7615;
         assign BU5689_B[5] = n7614;
         assign BU5689_B[6] = n7613;
         assign BU5689_B[7] = n7612;
         assign BU5689_B[8] = n7611;
         assign BU5689_B[9] = n7610;
         assign BU5689_B[10] = n7609;
         assign BU5689_B[11] = n7608;
         assign BU5689_B[12] = n7607;
         assign BU5689_B[13] = n7606;
         assign BU5689_B[14] = n7605;
         assign BU5689_B[15] = n7604;
         assign BU5689_B[16] = n7603;
         assign BU5689_B[17] = n7602;
         assign BU5689_B[18] = n7601;
         assign BU5689_B[19] = n7600;
         assign BU5689_B[20] = n7600;
         assign BU5689_B[21] = n7600;
         assign BU5689_B[22] = n7600;
         assign BU5689_B[23] = n7600;
         assign BU5689_B[24] = n7600;
         assign BU5689_B[25] = n7600;
         assign BU5689_B[26] = n7600;
         assign BU5689_B[27] = n7600;
      wire BU5689_ADD;
         assign BU5689_ADD = n34117;
      wire [27 : 0] BU5689_Q;
         assign n8831 = BU5689_Q[0];
         assign n8830 = BU5689_Q[1];
         assign n8829 = BU5689_Q[2];
         assign n8828 = BU5689_Q[3];
         assign n8827 = BU5689_Q[4];
         assign n8826 = BU5689_Q[5];
         assign n8825 = BU5689_Q[6];
         assign n8824 = BU5689_Q[7];
         assign n8823 = BU5689_Q[8];
         assign n8822 = BU5689_Q[9];
         assign n8821 = BU5689_Q[10];
         assign n8820 = BU5689_Q[11];
         assign n8819 = BU5689_Q[12];
         assign n8818 = BU5689_Q[13];
         assign n8817 = BU5689_Q[14];
         assign n8816 = BU5689_Q[15];
         assign n8815 = BU5689_Q[16];
         assign n8814 = BU5689_Q[17];
         assign n8813 = BU5689_Q[18];
         assign n8812 = BU5689_Q[19];
         assign n8811 = BU5689_Q[20];
         assign n8810 = BU5689_Q[21];
         assign n8809 = BU5689_Q[22];
         assign n8808 = BU5689_Q[23];
         assign n8807 = BU5689_Q[24];
         assign n8806 = BU5689_Q[25];
         assign n8805 = BU5689_Q[26];
         assign n8804 = BU5689_Q[27];
      wire BU5689_CLK;
         assign BU5689_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5689(
         .A(BU5689_A),
         .B(BU5689_B),
         .ADD(BU5689_ADD),
         .Q(BU5689_Q),
         .CLK(BU5689_CLK)
      );

      defparam BU5864.INIT = 'ha3a3;
      wire BU5864_I0;
         assign BU5864_I0 = n8832;
      wire BU5864_I1;
         assign BU5864_I1 = n11079;
      wire BU5864_I2;
         assign BU5864_I2 = n11078;
      wire BU5864_I3;
         assign BU5864_I3 = 1'b0;
      wire BU5864_O;
         assign n34117 = BU5864_O;
      LUT4       BU5864(
         .I0(BU5864_I0),
         .I1(BU5864_I1),
         .I2(BU5864_I2),
         .I3(BU5864_I3),
         .O(BU5864_O)
      );

      wire [27 : 0] BU5871_A;
         assign BU5871_A[0] = n10091;
         assign BU5871_A[1] = n10090;
         assign BU5871_A[2] = n10089;
         assign BU5871_A[3] = n10088;
         assign BU5871_A[4] = n10087;
         assign BU5871_A[5] = n10086;
         assign BU5871_A[6] = n10085;
         assign BU5871_A[7] = n10084;
         assign BU5871_A[8] = n10083;
         assign BU5871_A[9] = n10082;
         assign BU5871_A[10] = n10081;
         assign BU5871_A[11] = n10080;
         assign BU5871_A[12] = n10079;
         assign BU5871_A[13] = n10078;
         assign BU5871_A[14] = n10077;
         assign BU5871_A[15] = n10076;
         assign BU5871_A[16] = n10075;
         assign BU5871_A[17] = n10074;
         assign BU5871_A[18] = n10073;
         assign BU5871_A[19] = n10072;
         assign BU5871_A[20] = n10071;
         assign BU5871_A[21] = n10070;
         assign BU5871_A[22] = n10069;
         assign BU5871_A[23] = n10068;
         assign BU5871_A[24] = n10067;
         assign BU5871_A[25] = n10066;
         assign BU5871_A[26] = n10065;
         assign BU5871_A[27] = n10064;
      wire [27 : 0] BU5871_B;
         assign BU5871_B[0] = 1'b1;
         assign BU5871_B[1] = 1'b0;
         assign BU5871_B[2] = 1'b0;
         assign BU5871_B[3] = 1'b1;
         assign BU5871_B[4] = 1'b1;
         assign BU5871_B[5] = 1'b1;
         assign BU5871_B[6] = 1'b1;
         assign BU5871_B[7] = 1'b1;
         assign BU5871_B[8] = 1'b0;
         assign BU5871_B[9] = 1'b1;
         assign BU5871_B[10] = 1'b0;
         assign BU5871_B[11] = 1'b0;
         assign BU5871_B[12] = 1'b0;
         assign BU5871_B[13] = 1'b1;
         assign BU5871_B[14] = 1'b0;
         assign BU5871_B[15] = 1'b1;
         assign BU5871_B[16] = 1'b0;
         assign BU5871_B[17] = 1'b0;
         assign BU5871_B[18] = 1'b0;
         assign BU5871_B[19] = 1'b0;
         assign BU5871_B[20] = 1'b0;
         assign BU5871_B[21] = 1'b0;
         assign BU5871_B[22] = 1'b0;
         assign BU5871_B[23] = 1'b0;
         assign BU5871_B[24] = 1'b0;
         assign BU5871_B[25] = 1'b0;
         assign BU5871_B[26] = 1'b0;
         assign BU5871_B[27] = 1'b0;
      wire BU5871_ADD;
         assign BU5871_ADD = n35886;
      wire [27 : 0] BU5871_S;
         assign n35857 = BU5871_S[27];
      wire [27 : 0] BU5871_Q;
         assign n10063 = BU5871_Q[0];
         assign n10062 = BU5871_Q[1];
         assign n10061 = BU5871_Q[2];
         assign n10060 = BU5871_Q[3];
         assign n10059 = BU5871_Q[4];
         assign n10058 = BU5871_Q[5];
         assign n10057 = BU5871_Q[6];
         assign n10056 = BU5871_Q[7];
         assign n10055 = BU5871_Q[8];
         assign n10054 = BU5871_Q[9];
         assign n10053 = BU5871_Q[10];
         assign n10052 = BU5871_Q[11];
         assign n10051 = BU5871_Q[12];
         assign n10050 = BU5871_Q[13];
         assign n10049 = BU5871_Q[14];
         assign n10048 = BU5871_Q[15];
         assign n10047 = BU5871_Q[16];
         assign n10046 = BU5871_Q[17];
         assign n10045 = BU5871_Q[18];
         assign n10044 = BU5871_Q[19];
         assign n10043 = BU5871_Q[20];
         assign n10042 = BU5871_Q[21];
         assign n10041 = BU5871_Q[22];
         assign n10040 = BU5871_Q[23];
         assign n10039 = BU5871_Q[24];
         assign n10038 = BU5871_Q[25];
         assign n10037 = BU5871_Q[26];
         assign n10036 = BU5871_Q[27];
      wire BU5871_CLK;
         assign BU5871_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU5871(
         .A(BU5871_A),
         .B(BU5871_B),
         .ADD(BU5871_ADD),
         .S(BU5871_S),
         .Q(BU5871_Q),
         .CLK(BU5871_CLK)
      );

      defparam BU6046.INIT = 'h5c5c;
      wire BU6046_I0;
         assign BU6046_I0 = n8832;
      wire BU6046_I1;
         assign BU6046_I1 = n11079;
      wire BU6046_I2;
         assign BU6046_I2 = n11078;
      wire BU6046_I3;
         assign BU6046_I3 = 1'b0;
      wire BU6046_O;
         assign n35886 = BU6046_O;
      LUT4       BU6046(
         .I0(BU6046_I0),
         .I1(BU6046_I1),
         .I2(BU6046_I2),
         .I3(BU6046_I3),
         .O(BU6046_O)
      );

      wire [0 : 0] BU6051_D;
         assign BU6051_D[0] = n35857;
      wire [0 : 0] BU6051_Q;
         assign n11076 = BU6051_Q[0];
      wire BU6051_CLK;
         assign BU6051_CLK = n1088;
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
      BU6051(
         .D(BU6051_D),
         .Q(BU6051_Q),
         .CLK(BU6051_CLK)
      );

      wire [0 : 0] BU6060_D;
         assign BU6060_D[0] = n10948;
      wire [0 : 0] BU6060_Q;
         assign n10945 = BU6060_Q[0];
      wire BU6060_CLK;
         assign BU6060_CLK = n1088;
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
      BU6060(
         .D(BU6060_D),
         .Q(BU6060_Q),
         .CLK(BU6060_CLK)
      );

      wire [0 : 0] BU6067_D;
         assign BU6067_D[0] = n10947;
      wire [0 : 0] BU6067_Q;
         assign n10944 = BU6067_Q[0];
      wire BU6067_CLK;
         assign BU6067_CLK = n1088;
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
      BU6067(
         .D(BU6067_D),
         .Q(BU6067_Q),
         .CLK(BU6067_CLK)
      );

      wire [0 : 0] BU6074_D;
         assign BU6074_D[0] = n10946;
      wire [0 : 0] BU6074_Q;
         assign n10943 = BU6074_Q[0];
      wire BU6074_CLK;
         assign BU6074_CLK = n1088;
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
      BU6074(
         .D(BU6074_D),
         .Q(BU6074_Q),
         .CLK(BU6074_CLK)
      );

      wire [0 : 0] BU6081_D;
         assign BU6081_D[0] = n11078;
      wire [0 : 0] BU6081_Q;
         assign n11075 = BU6081_Q[0];
      wire BU6081_CLK;
         assign BU6081_CLK = n1088;
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
      BU6081(
         .D(BU6081_D),
         .Q(BU6081_Q),
         .CLK(BU6081_CLK)
      );

      wire [27 : 0] BU6097_A;
         assign BU6097_A[0] = n7599;
         assign BU6097_A[1] = n7598;
         assign BU6097_A[2] = n7597;
         assign BU6097_A[3] = n7596;
         assign BU6097_A[4] = n7595;
         assign BU6097_A[5] = n7594;
         assign BU6097_A[6] = n7593;
         assign BU6097_A[7] = n7592;
         assign BU6097_A[8] = n7591;
         assign BU6097_A[9] = n7590;
         assign BU6097_A[10] = n7589;
         assign BU6097_A[11] = n7588;
         assign BU6097_A[12] = n7587;
         assign BU6097_A[13] = n7586;
         assign BU6097_A[14] = n7585;
         assign BU6097_A[15] = n7584;
         assign BU6097_A[16] = n7583;
         assign BU6097_A[17] = n7582;
         assign BU6097_A[18] = n7581;
         assign BU6097_A[19] = n7580;
         assign BU6097_A[20] = n7579;
         assign BU6097_A[21] = n7578;
         assign BU6097_A[22] = n7577;
         assign BU6097_A[23] = n7576;
         assign BU6097_A[24] = n7575;
         assign BU6097_A[25] = n7574;
         assign BU6097_A[26] = n7573;
         assign BU6097_A[27] = n7572;
      wire [27 : 0] BU6097_B;
         assign BU6097_B[0] = n8822;
         assign BU6097_B[1] = n8821;
         assign BU6097_B[2] = n8820;
         assign BU6097_B[3] = n8819;
         assign BU6097_B[4] = n8818;
         assign BU6097_B[5] = n8817;
         assign BU6097_B[6] = n8816;
         assign BU6097_B[7] = n8815;
         assign BU6097_B[8] = n8814;
         assign BU6097_B[9] = n8813;
         assign BU6097_B[10] = n8812;
         assign BU6097_B[11] = n8811;
         assign BU6097_B[12] = n8810;
         assign BU6097_B[13] = n8809;
         assign BU6097_B[14] = n8808;
         assign BU6097_B[15] = n8807;
         assign BU6097_B[16] = n8806;
         assign BU6097_B[17] = n8805;
         assign BU6097_B[18] = n8804;
         assign BU6097_B[19] = n8804;
         assign BU6097_B[20] = n8804;
         assign BU6097_B[21] = n8804;
         assign BU6097_B[22] = n8804;
         assign BU6097_B[23] = n8804;
         assign BU6097_B[24] = n8804;
         assign BU6097_B[25] = n8804;
         assign BU6097_B[26] = n8804;
         assign BU6097_B[27] = n8804;
      wire BU6097_ADD;
         assign BU6097_ADD = n37296;
      wire [27 : 0] BU6097_Q;
         assign n7571 = BU6097_Q[0];
         assign n7570 = BU6097_Q[1];
         assign n7569 = BU6097_Q[2];
         assign n7568 = BU6097_Q[3];
         assign n7567 = BU6097_Q[4];
         assign n7566 = BU6097_Q[5];
         assign n7565 = BU6097_Q[6];
         assign n7564 = BU6097_Q[7];
         assign n7563 = BU6097_Q[8];
         assign n7562 = BU6097_Q[9];
         assign n7561 = BU6097_Q[10];
         assign n7560 = BU6097_Q[11];
         assign n7559 = BU6097_Q[12];
         assign n7558 = BU6097_Q[13];
         assign n7557 = BU6097_Q[14];
         assign n7556 = BU6097_Q[15];
         assign n7555 = BU6097_Q[16];
         assign n7554 = BU6097_Q[17];
         assign n7553 = BU6097_Q[18];
         assign n7552 = BU6097_Q[19];
         assign n7551 = BU6097_Q[20];
         assign n7550 = BU6097_Q[21];
         assign n7549 = BU6097_Q[22];
         assign n7548 = BU6097_Q[23];
         assign n7547 = BU6097_Q[24];
         assign n7546 = BU6097_Q[25];
         assign n7545 = BU6097_Q[26];
         assign n7544 = BU6097_Q[27];
      wire BU6097_CLK;
         assign BU6097_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6097(
         .A(BU6097_A),
         .B(BU6097_B),
         .ADD(BU6097_ADD),
         .Q(BU6097_Q),
         .CLK(BU6097_CLK)
      );

      defparam BU6272.INIT = 'ha53c;
      wire BU6272_I0;
         assign BU6272_I0 = n8804;
      wire BU6272_I1;
         assign BU6272_I1 = n11076;
      wire BU6272_I2;
         assign BU6272_I2 = 1'b0;
      wire BU6272_I3;
         assign BU6272_I3 = n11075;
      wire BU6272_O;
         assign n37296 = BU6272_O;
      LUT4       BU6272(
         .I0(BU6272_I0),
         .I1(BU6272_I1),
         .I2(BU6272_I2),
         .I3(BU6272_I3),
         .O(BU6272_O)
      );

      wire [27 : 0] BU6277_A;
         assign BU6277_A[0] = n8831;
         assign BU6277_A[1] = n8830;
         assign BU6277_A[2] = n8829;
         assign BU6277_A[3] = n8828;
         assign BU6277_A[4] = n8827;
         assign BU6277_A[5] = n8826;
         assign BU6277_A[6] = n8825;
         assign BU6277_A[7] = n8824;
         assign BU6277_A[8] = n8823;
         assign BU6277_A[9] = n8822;
         assign BU6277_A[10] = n8821;
         assign BU6277_A[11] = n8820;
         assign BU6277_A[12] = n8819;
         assign BU6277_A[13] = n8818;
         assign BU6277_A[14] = n8817;
         assign BU6277_A[15] = n8816;
         assign BU6277_A[16] = n8815;
         assign BU6277_A[17] = n8814;
         assign BU6277_A[18] = n8813;
         assign BU6277_A[19] = n8812;
         assign BU6277_A[20] = n8811;
         assign BU6277_A[21] = n8810;
         assign BU6277_A[22] = n8809;
         assign BU6277_A[23] = n8808;
         assign BU6277_A[24] = n8807;
         assign BU6277_A[25] = n8806;
         assign BU6277_A[26] = n8805;
         assign BU6277_A[27] = n8804;
      wire [27 : 0] BU6277_B;
         assign BU6277_B[0] = n7590;
         assign BU6277_B[1] = n7589;
         assign BU6277_B[2] = n7588;
         assign BU6277_B[3] = n7587;
         assign BU6277_B[4] = n7586;
         assign BU6277_B[5] = n7585;
         assign BU6277_B[6] = n7584;
         assign BU6277_B[7] = n7583;
         assign BU6277_B[8] = n7582;
         assign BU6277_B[9] = n7581;
         assign BU6277_B[10] = n7580;
         assign BU6277_B[11] = n7579;
         assign BU6277_B[12] = n7578;
         assign BU6277_B[13] = n7577;
         assign BU6277_B[14] = n7576;
         assign BU6277_B[15] = n7575;
         assign BU6277_B[16] = n7574;
         assign BU6277_B[17] = n7573;
         assign BU6277_B[18] = n7572;
         assign BU6277_B[19] = n7572;
         assign BU6277_B[20] = n7572;
         assign BU6277_B[21] = n7572;
         assign BU6277_B[22] = n7572;
         assign BU6277_B[23] = n7572;
         assign BU6277_B[24] = n7572;
         assign BU6277_B[25] = n7572;
         assign BU6277_B[26] = n7572;
         assign BU6277_B[27] = n7572;
      wire BU6277_ADD;
         assign BU6277_ADD = n37297;
      wire [27 : 0] BU6277_Q;
         assign n8803 = BU6277_Q[0];
         assign n8802 = BU6277_Q[1];
         assign n8801 = BU6277_Q[2];
         assign n8800 = BU6277_Q[3];
         assign n8799 = BU6277_Q[4];
         assign n8798 = BU6277_Q[5];
         assign n8797 = BU6277_Q[6];
         assign n8796 = BU6277_Q[7];
         assign n8795 = BU6277_Q[8];
         assign n8794 = BU6277_Q[9];
         assign n8793 = BU6277_Q[10];
         assign n8792 = BU6277_Q[11];
         assign n8791 = BU6277_Q[12];
         assign n8790 = BU6277_Q[13];
         assign n8789 = BU6277_Q[14];
         assign n8788 = BU6277_Q[15];
         assign n8787 = BU6277_Q[16];
         assign n8786 = BU6277_Q[17];
         assign n8785 = BU6277_Q[18];
         assign n8784 = BU6277_Q[19];
         assign n8783 = BU6277_Q[20];
         assign n8782 = BU6277_Q[21];
         assign n8781 = BU6277_Q[22];
         assign n8780 = BU6277_Q[23];
         assign n8779 = BU6277_Q[24];
         assign n8778 = BU6277_Q[25];
         assign n8777 = BU6277_Q[26];
         assign n8776 = BU6277_Q[27];
      wire BU6277_CLK;
         assign BU6277_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6277(
         .A(BU6277_A),
         .B(BU6277_B),
         .ADD(BU6277_ADD),
         .Q(BU6277_Q),
         .CLK(BU6277_CLK)
      );

      defparam BU6452.INIT = 'ha3a3;
      wire BU6452_I0;
         assign BU6452_I0 = n8804;
      wire BU6452_I1;
         assign BU6452_I1 = n11076;
      wire BU6452_I2;
         assign BU6452_I2 = n11075;
      wire BU6452_I3;
         assign BU6452_I3 = 1'b0;
      wire BU6452_O;
         assign n37297 = BU6452_O;
      LUT4       BU6452(
         .I0(BU6452_I0),
         .I1(BU6452_I1),
         .I2(BU6452_I2),
         .I3(BU6452_I3),
         .O(BU6452_O)
      );

      wire [27 : 0] BU6459_A;
         assign BU6459_A[0] = n10063;
         assign BU6459_A[1] = n10062;
         assign BU6459_A[2] = n10061;
         assign BU6459_A[3] = n10060;
         assign BU6459_A[4] = n10059;
         assign BU6459_A[5] = n10058;
         assign BU6459_A[6] = n10057;
         assign BU6459_A[7] = n10056;
         assign BU6459_A[8] = n10055;
         assign BU6459_A[9] = n10054;
         assign BU6459_A[10] = n10053;
         assign BU6459_A[11] = n10052;
         assign BU6459_A[12] = n10051;
         assign BU6459_A[13] = n10050;
         assign BU6459_A[14] = n10049;
         assign BU6459_A[15] = n10048;
         assign BU6459_A[16] = n10047;
         assign BU6459_A[17] = n10046;
         assign BU6459_A[18] = n10045;
         assign BU6459_A[19] = n10044;
         assign BU6459_A[20] = n10043;
         assign BU6459_A[21] = n10042;
         assign BU6459_A[22] = n10041;
         assign BU6459_A[23] = n10040;
         assign BU6459_A[24] = n10039;
         assign BU6459_A[25] = n10038;
         assign BU6459_A[26] = n10037;
         assign BU6459_A[27] = n10036;
      wire [27 : 0] BU6459_B;
         assign BU6459_B[0] = 1'b1;
         assign BU6459_B[1] = 1'b0;
         assign BU6459_B[2] = 1'b1;
         assign BU6459_B[3] = 1'b1;
         assign BU6459_B[4] = 1'b1;
         assign BU6459_B[5] = 1'b1;
         assign BU6459_B[6] = 1'b1;
         assign BU6459_B[7] = 1'b0;
         assign BU6459_B[8] = 1'b1;
         assign BU6459_B[9] = 1'b0;
         assign BU6459_B[10] = 1'b0;
         assign BU6459_B[11] = 1'b0;
         assign BU6459_B[12] = 1'b1;
         assign BU6459_B[13] = 1'b0;
         assign BU6459_B[14] = 1'b1;
         assign BU6459_B[15] = 1'b0;
         assign BU6459_B[16] = 1'b0;
         assign BU6459_B[17] = 1'b0;
         assign BU6459_B[18] = 1'b0;
         assign BU6459_B[19] = 1'b0;
         assign BU6459_B[20] = 1'b0;
         assign BU6459_B[21] = 1'b0;
         assign BU6459_B[22] = 1'b0;
         assign BU6459_B[23] = 1'b0;
         assign BU6459_B[24] = 1'b0;
         assign BU6459_B[25] = 1'b0;
         assign BU6459_B[26] = 1'b0;
         assign BU6459_B[27] = 1'b0;
      wire BU6459_ADD;
         assign BU6459_ADD = n39066;
      wire [27 : 0] BU6459_S;
         assign n39037 = BU6459_S[27];
      wire [27 : 0] BU6459_Q;
         assign n10035 = BU6459_Q[0];
         assign n10034 = BU6459_Q[1];
         assign n10033 = BU6459_Q[2];
         assign n10032 = BU6459_Q[3];
         assign n10031 = BU6459_Q[4];
         assign n10030 = BU6459_Q[5];
         assign n10029 = BU6459_Q[6];
         assign n10028 = BU6459_Q[7];
         assign n10027 = BU6459_Q[8];
         assign n10026 = BU6459_Q[9];
         assign n10025 = BU6459_Q[10];
         assign n10024 = BU6459_Q[11];
         assign n10023 = BU6459_Q[12];
         assign n10022 = BU6459_Q[13];
         assign n10021 = BU6459_Q[14];
         assign n10020 = BU6459_Q[15];
         assign n10019 = BU6459_Q[16];
         assign n10018 = BU6459_Q[17];
         assign n10017 = BU6459_Q[18];
         assign n10016 = BU6459_Q[19];
         assign n10015 = BU6459_Q[20];
         assign n10014 = BU6459_Q[21];
         assign n10013 = BU6459_Q[22];
         assign n10012 = BU6459_Q[23];
         assign n10011 = BU6459_Q[24];
         assign n10010 = BU6459_Q[25];
         assign n10009 = BU6459_Q[26];
         assign n10008 = BU6459_Q[27];
      wire BU6459_CLK;
         assign BU6459_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6459(
         .A(BU6459_A),
         .B(BU6459_B),
         .ADD(BU6459_ADD),
         .S(BU6459_S),
         .Q(BU6459_Q),
         .CLK(BU6459_CLK)
      );

      defparam BU6634.INIT = 'h5c5c;
      wire BU6634_I0;
         assign BU6634_I0 = n8804;
      wire BU6634_I1;
         assign BU6634_I1 = n11076;
      wire BU6634_I2;
         assign BU6634_I2 = n11075;
      wire BU6634_I3;
         assign BU6634_I3 = 1'b0;
      wire BU6634_O;
         assign n39066 = BU6634_O;
      LUT4       BU6634(
         .I0(BU6634_I0),
         .I1(BU6634_I1),
         .I2(BU6634_I2),
         .I3(BU6634_I3),
         .O(BU6634_O)
      );

      wire [0 : 0] BU6639_D;
         assign BU6639_D[0] = n39037;
      wire [0 : 0] BU6639_Q;
         assign n11073 = BU6639_Q[0];
      wire BU6639_CLK;
         assign BU6639_CLK = n1088;
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
      BU6639(
         .D(BU6639_D),
         .Q(BU6639_Q),
         .CLK(BU6639_CLK)
      );

      wire [0 : 0] BU6648_D;
         assign BU6648_D[0] = n10945;
      wire [0 : 0] BU6648_Q;
         assign n10942 = BU6648_Q[0];
      wire BU6648_CLK;
         assign BU6648_CLK = n1088;
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
      BU6648(
         .D(BU6648_D),
         .Q(BU6648_Q),
         .CLK(BU6648_CLK)
      );

      wire [0 : 0] BU6655_D;
         assign BU6655_D[0] = n10944;
      wire [0 : 0] BU6655_Q;
         assign n10941 = BU6655_Q[0];
      wire BU6655_CLK;
         assign BU6655_CLK = n1088;
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
      BU6655(
         .D(BU6655_D),
         .Q(BU6655_Q),
         .CLK(BU6655_CLK)
      );

      wire [0 : 0] BU6662_D;
         assign BU6662_D[0] = n10943;
      wire [0 : 0] BU6662_Q;
         assign n10940 = BU6662_Q[0];
      wire BU6662_CLK;
         assign BU6662_CLK = n1088;
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
      BU6662(
         .D(BU6662_D),
         .Q(BU6662_Q),
         .CLK(BU6662_CLK)
      );

      wire [0 : 0] BU6669_D;
         assign BU6669_D[0] = n11075;
      wire [0 : 0] BU6669_Q;
         assign n11072 = BU6669_Q[0];
      wire BU6669_CLK;
         assign BU6669_CLK = n1088;
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
      BU6669(
         .D(BU6669_D),
         .Q(BU6669_Q),
         .CLK(BU6669_CLK)
      );

      wire [27 : 0] BU6685_A;
         assign BU6685_A[0] = n7571;
         assign BU6685_A[1] = n7570;
         assign BU6685_A[2] = n7569;
         assign BU6685_A[3] = n7568;
         assign BU6685_A[4] = n7567;
         assign BU6685_A[5] = n7566;
         assign BU6685_A[6] = n7565;
         assign BU6685_A[7] = n7564;
         assign BU6685_A[8] = n7563;
         assign BU6685_A[9] = n7562;
         assign BU6685_A[10] = n7561;
         assign BU6685_A[11] = n7560;
         assign BU6685_A[12] = n7559;
         assign BU6685_A[13] = n7558;
         assign BU6685_A[14] = n7557;
         assign BU6685_A[15] = n7556;
         assign BU6685_A[16] = n7555;
         assign BU6685_A[17] = n7554;
         assign BU6685_A[18] = n7553;
         assign BU6685_A[19] = n7552;
         assign BU6685_A[20] = n7551;
         assign BU6685_A[21] = n7550;
         assign BU6685_A[22] = n7549;
         assign BU6685_A[23] = n7548;
         assign BU6685_A[24] = n7547;
         assign BU6685_A[25] = n7546;
         assign BU6685_A[26] = n7545;
         assign BU6685_A[27] = n7544;
      wire [27 : 0] BU6685_B;
         assign BU6685_B[0] = n8793;
         assign BU6685_B[1] = n8792;
         assign BU6685_B[2] = n8791;
         assign BU6685_B[3] = n8790;
         assign BU6685_B[4] = n8789;
         assign BU6685_B[5] = n8788;
         assign BU6685_B[6] = n8787;
         assign BU6685_B[7] = n8786;
         assign BU6685_B[8] = n8785;
         assign BU6685_B[9] = n8784;
         assign BU6685_B[10] = n8783;
         assign BU6685_B[11] = n8782;
         assign BU6685_B[12] = n8781;
         assign BU6685_B[13] = n8780;
         assign BU6685_B[14] = n8779;
         assign BU6685_B[15] = n8778;
         assign BU6685_B[16] = n8777;
         assign BU6685_B[17] = n8776;
         assign BU6685_B[18] = n8776;
         assign BU6685_B[19] = n8776;
         assign BU6685_B[20] = n8776;
         assign BU6685_B[21] = n8776;
         assign BU6685_B[22] = n8776;
         assign BU6685_B[23] = n8776;
         assign BU6685_B[24] = n8776;
         assign BU6685_B[25] = n8776;
         assign BU6685_B[26] = n8776;
         assign BU6685_B[27] = n8776;
      wire BU6685_ADD;
         assign BU6685_ADD = n40476;
      wire [27 : 0] BU6685_Q;
         assign n7543 = BU6685_Q[0];
         assign n7542 = BU6685_Q[1];
         assign n7541 = BU6685_Q[2];
         assign n7540 = BU6685_Q[3];
         assign n7539 = BU6685_Q[4];
         assign n7538 = BU6685_Q[5];
         assign n7537 = BU6685_Q[6];
         assign n7536 = BU6685_Q[7];
         assign n7535 = BU6685_Q[8];
         assign n7534 = BU6685_Q[9];
         assign n7533 = BU6685_Q[10];
         assign n7532 = BU6685_Q[11];
         assign n7531 = BU6685_Q[12];
         assign n7530 = BU6685_Q[13];
         assign n7529 = BU6685_Q[14];
         assign n7528 = BU6685_Q[15];
         assign n7527 = BU6685_Q[16];
         assign n7526 = BU6685_Q[17];
         assign n7525 = BU6685_Q[18];
         assign n7524 = BU6685_Q[19];
         assign n7523 = BU6685_Q[20];
         assign n7522 = BU6685_Q[21];
         assign n7521 = BU6685_Q[22];
         assign n7520 = BU6685_Q[23];
         assign n7519 = BU6685_Q[24];
         assign n7518 = BU6685_Q[25];
         assign n7517 = BU6685_Q[26];
         assign n7516 = BU6685_Q[27];
      wire BU6685_CLK;
         assign BU6685_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6685(
         .A(BU6685_A),
         .B(BU6685_B),
         .ADD(BU6685_ADD),
         .Q(BU6685_Q),
         .CLK(BU6685_CLK)
      );

      defparam BU6860.INIT = 'ha53c;
      wire BU6860_I0;
         assign BU6860_I0 = n8776;
      wire BU6860_I1;
         assign BU6860_I1 = n11073;
      wire BU6860_I2;
         assign BU6860_I2 = 1'b0;
      wire BU6860_I3;
         assign BU6860_I3 = n11072;
      wire BU6860_O;
         assign n40476 = BU6860_O;
      LUT4       BU6860(
         .I0(BU6860_I0),
         .I1(BU6860_I1),
         .I2(BU6860_I2),
         .I3(BU6860_I3),
         .O(BU6860_O)
      );

      wire [27 : 0] BU6865_A;
         assign BU6865_A[0] = n8803;
         assign BU6865_A[1] = n8802;
         assign BU6865_A[2] = n8801;
         assign BU6865_A[3] = n8800;
         assign BU6865_A[4] = n8799;
         assign BU6865_A[5] = n8798;
         assign BU6865_A[6] = n8797;
         assign BU6865_A[7] = n8796;
         assign BU6865_A[8] = n8795;
         assign BU6865_A[9] = n8794;
         assign BU6865_A[10] = n8793;
         assign BU6865_A[11] = n8792;
         assign BU6865_A[12] = n8791;
         assign BU6865_A[13] = n8790;
         assign BU6865_A[14] = n8789;
         assign BU6865_A[15] = n8788;
         assign BU6865_A[16] = n8787;
         assign BU6865_A[17] = n8786;
         assign BU6865_A[18] = n8785;
         assign BU6865_A[19] = n8784;
         assign BU6865_A[20] = n8783;
         assign BU6865_A[21] = n8782;
         assign BU6865_A[22] = n8781;
         assign BU6865_A[23] = n8780;
         assign BU6865_A[24] = n8779;
         assign BU6865_A[25] = n8778;
         assign BU6865_A[26] = n8777;
         assign BU6865_A[27] = n8776;
      wire [27 : 0] BU6865_B;
         assign BU6865_B[0] = n7561;
         assign BU6865_B[1] = n7560;
         assign BU6865_B[2] = n7559;
         assign BU6865_B[3] = n7558;
         assign BU6865_B[4] = n7557;
         assign BU6865_B[5] = n7556;
         assign BU6865_B[6] = n7555;
         assign BU6865_B[7] = n7554;
         assign BU6865_B[8] = n7553;
         assign BU6865_B[9] = n7552;
         assign BU6865_B[10] = n7551;
         assign BU6865_B[11] = n7550;
         assign BU6865_B[12] = n7549;
         assign BU6865_B[13] = n7548;
         assign BU6865_B[14] = n7547;
         assign BU6865_B[15] = n7546;
         assign BU6865_B[16] = n7545;
         assign BU6865_B[17] = n7544;
         assign BU6865_B[18] = n7544;
         assign BU6865_B[19] = n7544;
         assign BU6865_B[20] = n7544;
         assign BU6865_B[21] = n7544;
         assign BU6865_B[22] = n7544;
         assign BU6865_B[23] = n7544;
         assign BU6865_B[24] = n7544;
         assign BU6865_B[25] = n7544;
         assign BU6865_B[26] = n7544;
         assign BU6865_B[27] = n7544;
      wire BU6865_ADD;
         assign BU6865_ADD = n40477;
      wire [27 : 0] BU6865_Q;
         assign n8775 = BU6865_Q[0];
         assign n8774 = BU6865_Q[1];
         assign n8773 = BU6865_Q[2];
         assign n8772 = BU6865_Q[3];
         assign n8771 = BU6865_Q[4];
         assign n8770 = BU6865_Q[5];
         assign n8769 = BU6865_Q[6];
         assign n8768 = BU6865_Q[7];
         assign n8767 = BU6865_Q[8];
         assign n8766 = BU6865_Q[9];
         assign n8765 = BU6865_Q[10];
         assign n8764 = BU6865_Q[11];
         assign n8763 = BU6865_Q[12];
         assign n8762 = BU6865_Q[13];
         assign n8761 = BU6865_Q[14];
         assign n8760 = BU6865_Q[15];
         assign n8759 = BU6865_Q[16];
         assign n8758 = BU6865_Q[17];
         assign n8757 = BU6865_Q[18];
         assign n8756 = BU6865_Q[19];
         assign n8755 = BU6865_Q[20];
         assign n8754 = BU6865_Q[21];
         assign n8753 = BU6865_Q[22];
         assign n8752 = BU6865_Q[23];
         assign n8751 = BU6865_Q[24];
         assign n8750 = BU6865_Q[25];
         assign n8749 = BU6865_Q[26];
         assign n8748 = BU6865_Q[27];
      wire BU6865_CLK;
         assign BU6865_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU6865(
         .A(BU6865_A),
         .B(BU6865_B),
         .ADD(BU6865_ADD),
         .Q(BU6865_Q),
         .CLK(BU6865_CLK)
      );

      defparam BU7040.INIT = 'ha3a3;
      wire BU7040_I0;
         assign BU7040_I0 = n8776;
      wire BU7040_I1;
         assign BU7040_I1 = n11073;
      wire BU7040_I2;
         assign BU7040_I2 = n11072;
      wire BU7040_I3;
         assign BU7040_I3 = 1'b0;
      wire BU7040_O;
         assign n40477 = BU7040_O;
      LUT4       BU7040(
         .I0(BU7040_I0),
         .I1(BU7040_I1),
         .I2(BU7040_I2),
         .I3(BU7040_I3),
         .O(BU7040_O)
      );

      wire [27 : 0] BU7047_A;
         assign BU7047_A[0] = n10035;
         assign BU7047_A[1] = n10034;
         assign BU7047_A[2] = n10033;
         assign BU7047_A[3] = n10032;
         assign BU7047_A[4] = n10031;
         assign BU7047_A[5] = n10030;
         assign BU7047_A[6] = n10029;
         assign BU7047_A[7] = n10028;
         assign BU7047_A[8] = n10027;
         assign BU7047_A[9] = n10026;
         assign BU7047_A[10] = n10025;
         assign BU7047_A[11] = n10024;
         assign BU7047_A[12] = n10023;
         assign BU7047_A[13] = n10022;
         assign BU7047_A[14] = n10021;
         assign BU7047_A[15] = n10020;
         assign BU7047_A[16] = n10019;
         assign BU7047_A[17] = n10018;
         assign BU7047_A[18] = n10017;
         assign BU7047_A[19] = n10016;
         assign BU7047_A[20] = n10015;
         assign BU7047_A[21] = n10014;
         assign BU7047_A[22] = n10013;
         assign BU7047_A[23] = n10012;
         assign BU7047_A[24] = n10011;
         assign BU7047_A[25] = n10010;
         assign BU7047_A[26] = n10009;
         assign BU7047_A[27] = n10008;
      wire [27 : 0] BU7047_B;
         assign BU7047_B[0] = 1'b0;
         assign BU7047_B[1] = 1'b1;
         assign BU7047_B[2] = 1'b1;
         assign BU7047_B[3] = 1'b1;
         assign BU7047_B[4] = 1'b1;
         assign BU7047_B[5] = 1'b1;
         assign BU7047_B[6] = 1'b0;
         assign BU7047_B[7] = 1'b1;
         assign BU7047_B[8] = 1'b0;
         assign BU7047_B[9] = 1'b0;
         assign BU7047_B[10] = 1'b0;
         assign BU7047_B[11] = 1'b1;
         assign BU7047_B[12] = 1'b0;
         assign BU7047_B[13] = 1'b1;
         assign BU7047_B[14] = 1'b0;
         assign BU7047_B[15] = 1'b0;
         assign BU7047_B[16] = 1'b0;
         assign BU7047_B[17] = 1'b0;
         assign BU7047_B[18] = 1'b0;
         assign BU7047_B[19] = 1'b0;
         assign BU7047_B[20] = 1'b0;
         assign BU7047_B[21] = 1'b0;
         assign BU7047_B[22] = 1'b0;
         assign BU7047_B[23] = 1'b0;
         assign BU7047_B[24] = 1'b0;
         assign BU7047_B[25] = 1'b0;
         assign BU7047_B[26] = 1'b0;
         assign BU7047_B[27] = 1'b0;
      wire BU7047_ADD;
         assign BU7047_ADD = n42246;
      wire [27 : 0] BU7047_S;
         assign n42217 = BU7047_S[27];
      wire [27 : 0] BU7047_Q;
         assign n10007 = BU7047_Q[0];
         assign n10006 = BU7047_Q[1];
         assign n10005 = BU7047_Q[2];
         assign n10004 = BU7047_Q[3];
         assign n10003 = BU7047_Q[4];
         assign n10002 = BU7047_Q[5];
         assign n10001 = BU7047_Q[6];
         assign n10000 = BU7047_Q[7];
         assign n9999 = BU7047_Q[8];
         assign n9998 = BU7047_Q[9];
         assign n9997 = BU7047_Q[10];
         assign n9996 = BU7047_Q[11];
         assign n9995 = BU7047_Q[12];
         assign n9994 = BU7047_Q[13];
         assign n9993 = BU7047_Q[14];
         assign n9992 = BU7047_Q[15];
         assign n9991 = BU7047_Q[16];
         assign n9990 = BU7047_Q[17];
         assign n9989 = BU7047_Q[18];
         assign n9988 = BU7047_Q[19];
         assign n9987 = BU7047_Q[20];
         assign n9986 = BU7047_Q[21];
         assign n9985 = BU7047_Q[22];
         assign n9984 = BU7047_Q[23];
         assign n9983 = BU7047_Q[24];
         assign n9982 = BU7047_Q[25];
         assign n9981 = BU7047_Q[26];
         assign n9980 = BU7047_Q[27];
      wire BU7047_CLK;
         assign BU7047_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7047(
         .A(BU7047_A),
         .B(BU7047_B),
         .ADD(BU7047_ADD),
         .S(BU7047_S),
         .Q(BU7047_Q),
         .CLK(BU7047_CLK)
      );

      defparam BU7222.INIT = 'h5c5c;
      wire BU7222_I0;
         assign BU7222_I0 = n8776;
      wire BU7222_I1;
         assign BU7222_I1 = n11073;
      wire BU7222_I2;
         assign BU7222_I2 = n11072;
      wire BU7222_I3;
         assign BU7222_I3 = 1'b0;
      wire BU7222_O;
         assign n42246 = BU7222_O;
      LUT4       BU7222(
         .I0(BU7222_I0),
         .I1(BU7222_I1),
         .I2(BU7222_I2),
         .I3(BU7222_I3),
         .O(BU7222_O)
      );

      wire [0 : 0] BU7227_D;
         assign BU7227_D[0] = n42217;
      wire [0 : 0] BU7227_Q;
         assign n11070 = BU7227_Q[0];
      wire BU7227_CLK;
         assign BU7227_CLK = n1088;
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
      BU7227(
         .D(BU7227_D),
         .Q(BU7227_Q),
         .CLK(BU7227_CLK)
      );

      wire [0 : 0] BU7236_D;
         assign BU7236_D[0] = n10942;
      wire [0 : 0] BU7236_Q;
         assign n10939 = BU7236_Q[0];
      wire BU7236_CLK;
         assign BU7236_CLK = n1088;
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
      BU7236(
         .D(BU7236_D),
         .Q(BU7236_Q),
         .CLK(BU7236_CLK)
      );

      wire [0 : 0] BU7243_D;
         assign BU7243_D[0] = n10941;
      wire [0 : 0] BU7243_Q;
         assign n10938 = BU7243_Q[0];
      wire BU7243_CLK;
         assign BU7243_CLK = n1088;
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
      BU7243(
         .D(BU7243_D),
         .Q(BU7243_Q),
         .CLK(BU7243_CLK)
      );

      wire [0 : 0] BU7250_D;
         assign BU7250_D[0] = n10940;
      wire [0 : 0] BU7250_Q;
         assign n10937 = BU7250_Q[0];
      wire BU7250_CLK;
         assign BU7250_CLK = n1088;
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
      BU7250(
         .D(BU7250_D),
         .Q(BU7250_Q),
         .CLK(BU7250_CLK)
      );

      wire [0 : 0] BU7257_D;
         assign BU7257_D[0] = n11072;
      wire [0 : 0] BU7257_Q;
         assign n11069 = BU7257_Q[0];
      wire BU7257_CLK;
         assign BU7257_CLK = n1088;
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
      BU7257(
         .D(BU7257_D),
         .Q(BU7257_Q),
         .CLK(BU7257_CLK)
      );

      wire [27 : 0] BU7273_A;
         assign BU7273_A[0] = n7543;
         assign BU7273_A[1] = n7542;
         assign BU7273_A[2] = n7541;
         assign BU7273_A[3] = n7540;
         assign BU7273_A[4] = n7539;
         assign BU7273_A[5] = n7538;
         assign BU7273_A[6] = n7537;
         assign BU7273_A[7] = n7536;
         assign BU7273_A[8] = n7535;
         assign BU7273_A[9] = n7534;
         assign BU7273_A[10] = n7533;
         assign BU7273_A[11] = n7532;
         assign BU7273_A[12] = n7531;
         assign BU7273_A[13] = n7530;
         assign BU7273_A[14] = n7529;
         assign BU7273_A[15] = n7528;
         assign BU7273_A[16] = n7527;
         assign BU7273_A[17] = n7526;
         assign BU7273_A[18] = n7525;
         assign BU7273_A[19] = n7524;
         assign BU7273_A[20] = n7523;
         assign BU7273_A[21] = n7522;
         assign BU7273_A[22] = n7521;
         assign BU7273_A[23] = n7520;
         assign BU7273_A[24] = n7519;
         assign BU7273_A[25] = n7518;
         assign BU7273_A[26] = n7517;
         assign BU7273_A[27] = n7516;
      wire [27 : 0] BU7273_B;
         assign BU7273_B[0] = n8764;
         assign BU7273_B[1] = n8763;
         assign BU7273_B[2] = n8762;
         assign BU7273_B[3] = n8761;
         assign BU7273_B[4] = n8760;
         assign BU7273_B[5] = n8759;
         assign BU7273_B[6] = n8758;
         assign BU7273_B[7] = n8757;
         assign BU7273_B[8] = n8756;
         assign BU7273_B[9] = n8755;
         assign BU7273_B[10] = n8754;
         assign BU7273_B[11] = n8753;
         assign BU7273_B[12] = n8752;
         assign BU7273_B[13] = n8751;
         assign BU7273_B[14] = n8750;
         assign BU7273_B[15] = n8749;
         assign BU7273_B[16] = n8748;
         assign BU7273_B[17] = n8748;
         assign BU7273_B[18] = n8748;
         assign BU7273_B[19] = n8748;
         assign BU7273_B[20] = n8748;
         assign BU7273_B[21] = n8748;
         assign BU7273_B[22] = n8748;
         assign BU7273_B[23] = n8748;
         assign BU7273_B[24] = n8748;
         assign BU7273_B[25] = n8748;
         assign BU7273_B[26] = n8748;
         assign BU7273_B[27] = n8748;
      wire BU7273_ADD;
         assign BU7273_ADD = n43656;
      wire [27 : 0] BU7273_Q;
         assign n7515 = BU7273_Q[0];
         assign n7514 = BU7273_Q[1];
         assign n7513 = BU7273_Q[2];
         assign n7512 = BU7273_Q[3];
         assign n7511 = BU7273_Q[4];
         assign n7510 = BU7273_Q[5];
         assign n7509 = BU7273_Q[6];
         assign n7508 = BU7273_Q[7];
         assign n7507 = BU7273_Q[8];
         assign n7506 = BU7273_Q[9];
         assign n7505 = BU7273_Q[10];
         assign n7504 = BU7273_Q[11];
         assign n7503 = BU7273_Q[12];
         assign n7502 = BU7273_Q[13];
         assign n7501 = BU7273_Q[14];
         assign n7500 = BU7273_Q[15];
         assign n7499 = BU7273_Q[16];
         assign n7498 = BU7273_Q[17];
         assign n7497 = BU7273_Q[18];
         assign n7496 = BU7273_Q[19];
         assign n7495 = BU7273_Q[20];
         assign n7494 = BU7273_Q[21];
         assign n7493 = BU7273_Q[22];
         assign n7492 = BU7273_Q[23];
         assign n7491 = BU7273_Q[24];
         assign n7490 = BU7273_Q[25];
         assign n7489 = BU7273_Q[26];
         assign n7488 = BU7273_Q[27];
      wire BU7273_CLK;
         assign BU7273_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7273(
         .A(BU7273_A),
         .B(BU7273_B),
         .ADD(BU7273_ADD),
         .Q(BU7273_Q),
         .CLK(BU7273_CLK)
      );

      defparam BU7448.INIT = 'ha53c;
      wire BU7448_I0;
         assign BU7448_I0 = n8748;
      wire BU7448_I1;
         assign BU7448_I1 = n11070;
      wire BU7448_I2;
         assign BU7448_I2 = 1'b0;
      wire BU7448_I3;
         assign BU7448_I3 = n11069;
      wire BU7448_O;
         assign n43656 = BU7448_O;
      LUT4       BU7448(
         .I0(BU7448_I0),
         .I1(BU7448_I1),
         .I2(BU7448_I2),
         .I3(BU7448_I3),
         .O(BU7448_O)
      );

      wire [27 : 0] BU7453_A;
         assign BU7453_A[0] = n8775;
         assign BU7453_A[1] = n8774;
         assign BU7453_A[2] = n8773;
         assign BU7453_A[3] = n8772;
         assign BU7453_A[4] = n8771;
         assign BU7453_A[5] = n8770;
         assign BU7453_A[6] = n8769;
         assign BU7453_A[7] = n8768;
         assign BU7453_A[8] = n8767;
         assign BU7453_A[9] = n8766;
         assign BU7453_A[10] = n8765;
         assign BU7453_A[11] = n8764;
         assign BU7453_A[12] = n8763;
         assign BU7453_A[13] = n8762;
         assign BU7453_A[14] = n8761;
         assign BU7453_A[15] = n8760;
         assign BU7453_A[16] = n8759;
         assign BU7453_A[17] = n8758;
         assign BU7453_A[18] = n8757;
         assign BU7453_A[19] = n8756;
         assign BU7453_A[20] = n8755;
         assign BU7453_A[21] = n8754;
         assign BU7453_A[22] = n8753;
         assign BU7453_A[23] = n8752;
         assign BU7453_A[24] = n8751;
         assign BU7453_A[25] = n8750;
         assign BU7453_A[26] = n8749;
         assign BU7453_A[27] = n8748;
      wire [27 : 0] BU7453_B;
         assign BU7453_B[0] = n7532;
         assign BU7453_B[1] = n7531;
         assign BU7453_B[2] = n7530;
         assign BU7453_B[3] = n7529;
         assign BU7453_B[4] = n7528;
         assign BU7453_B[5] = n7527;
         assign BU7453_B[6] = n7526;
         assign BU7453_B[7] = n7525;
         assign BU7453_B[8] = n7524;
         assign BU7453_B[9] = n7523;
         assign BU7453_B[10] = n7522;
         assign BU7453_B[11] = n7521;
         assign BU7453_B[12] = n7520;
         assign BU7453_B[13] = n7519;
         assign BU7453_B[14] = n7518;
         assign BU7453_B[15] = n7517;
         assign BU7453_B[16] = n7516;
         assign BU7453_B[17] = n7516;
         assign BU7453_B[18] = n7516;
         assign BU7453_B[19] = n7516;
         assign BU7453_B[20] = n7516;
         assign BU7453_B[21] = n7516;
         assign BU7453_B[22] = n7516;
         assign BU7453_B[23] = n7516;
         assign BU7453_B[24] = n7516;
         assign BU7453_B[25] = n7516;
         assign BU7453_B[26] = n7516;
         assign BU7453_B[27] = n7516;
      wire BU7453_ADD;
         assign BU7453_ADD = n43657;
      wire [27 : 0] BU7453_Q;
         assign n8747 = BU7453_Q[0];
         assign n8746 = BU7453_Q[1];
         assign n8745 = BU7453_Q[2];
         assign n8744 = BU7453_Q[3];
         assign n8743 = BU7453_Q[4];
         assign n8742 = BU7453_Q[5];
         assign n8741 = BU7453_Q[6];
         assign n8740 = BU7453_Q[7];
         assign n8739 = BU7453_Q[8];
         assign n8738 = BU7453_Q[9];
         assign n8737 = BU7453_Q[10];
         assign n8736 = BU7453_Q[11];
         assign n8735 = BU7453_Q[12];
         assign n8734 = BU7453_Q[13];
         assign n8733 = BU7453_Q[14];
         assign n8732 = BU7453_Q[15];
         assign n8731 = BU7453_Q[16];
         assign n8730 = BU7453_Q[17];
         assign n8729 = BU7453_Q[18];
         assign n8728 = BU7453_Q[19];
         assign n8727 = BU7453_Q[20];
         assign n8726 = BU7453_Q[21];
         assign n8725 = BU7453_Q[22];
         assign n8724 = BU7453_Q[23];
         assign n8723 = BU7453_Q[24];
         assign n8722 = BU7453_Q[25];
         assign n8721 = BU7453_Q[26];
         assign n8720 = BU7453_Q[27];
      wire BU7453_CLK;
         assign BU7453_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7453(
         .A(BU7453_A),
         .B(BU7453_B),
         .ADD(BU7453_ADD),
         .Q(BU7453_Q),
         .CLK(BU7453_CLK)
      );

      defparam BU7628.INIT = 'ha3a3;
      wire BU7628_I0;
         assign BU7628_I0 = n8748;
      wire BU7628_I1;
         assign BU7628_I1 = n11070;
      wire BU7628_I2;
         assign BU7628_I2 = n11069;
      wire BU7628_I3;
         assign BU7628_I3 = 1'b0;
      wire BU7628_O;
         assign n43657 = BU7628_O;
      LUT4       BU7628(
         .I0(BU7628_I0),
         .I1(BU7628_I1),
         .I2(BU7628_I2),
         .I3(BU7628_I3),
         .O(BU7628_O)
      );

      wire [27 : 0] BU7635_A;
         assign BU7635_A[0] = n10007;
         assign BU7635_A[1] = n10006;
         assign BU7635_A[2] = n10005;
         assign BU7635_A[3] = n10004;
         assign BU7635_A[4] = n10003;
         assign BU7635_A[5] = n10002;
         assign BU7635_A[6] = n10001;
         assign BU7635_A[7] = n10000;
         assign BU7635_A[8] = n9999;
         assign BU7635_A[9] = n9998;
         assign BU7635_A[10] = n9997;
         assign BU7635_A[11] = n9996;
         assign BU7635_A[12] = n9995;
         assign BU7635_A[13] = n9994;
         assign BU7635_A[14] = n9993;
         assign BU7635_A[15] = n9992;
         assign BU7635_A[16] = n9991;
         assign BU7635_A[17] = n9990;
         assign BU7635_A[18] = n9989;
         assign BU7635_A[19] = n9988;
         assign BU7635_A[20] = n9987;
         assign BU7635_A[21] = n9986;
         assign BU7635_A[22] = n9985;
         assign BU7635_A[23] = n9984;
         assign BU7635_A[24] = n9983;
         assign BU7635_A[25] = n9982;
         assign BU7635_A[26] = n9981;
         assign BU7635_A[27] = n9980;
      wire [27 : 0] BU7635_B;
         assign BU7635_B[0] = 1'b1;
         assign BU7635_B[1] = 1'b1;
         assign BU7635_B[2] = 1'b1;
         assign BU7635_B[3] = 1'b1;
         assign BU7635_B[4] = 1'b1;
         assign BU7635_B[5] = 1'b0;
         assign BU7635_B[6] = 1'b1;
         assign BU7635_B[7] = 1'b0;
         assign BU7635_B[8] = 1'b0;
         assign BU7635_B[9] = 1'b0;
         assign BU7635_B[10] = 1'b1;
         assign BU7635_B[11] = 1'b0;
         assign BU7635_B[12] = 1'b1;
         assign BU7635_B[13] = 1'b0;
         assign BU7635_B[14] = 1'b0;
         assign BU7635_B[15] = 1'b0;
         assign BU7635_B[16] = 1'b0;
         assign BU7635_B[17] = 1'b0;
         assign BU7635_B[18] = 1'b0;
         assign BU7635_B[19] = 1'b0;
         assign BU7635_B[20] = 1'b0;
         assign BU7635_B[21] = 1'b0;
         assign BU7635_B[22] = 1'b0;
         assign BU7635_B[23] = 1'b0;
         assign BU7635_B[24] = 1'b0;
         assign BU7635_B[25] = 1'b0;
         assign BU7635_B[26] = 1'b0;
         assign BU7635_B[27] = 1'b0;
      wire BU7635_ADD;
         assign BU7635_ADD = n45426;
      wire [27 : 0] BU7635_S;
         assign n45397 = BU7635_S[27];
      wire [27 : 0] BU7635_Q;
         assign n9979 = BU7635_Q[0];
         assign n9978 = BU7635_Q[1];
         assign n9977 = BU7635_Q[2];
         assign n9976 = BU7635_Q[3];
         assign n9975 = BU7635_Q[4];
         assign n9974 = BU7635_Q[5];
         assign n9973 = BU7635_Q[6];
         assign n9972 = BU7635_Q[7];
         assign n9971 = BU7635_Q[8];
         assign n9970 = BU7635_Q[9];
         assign n9969 = BU7635_Q[10];
         assign n9968 = BU7635_Q[11];
         assign n9967 = BU7635_Q[12];
         assign n9966 = BU7635_Q[13];
         assign n9965 = BU7635_Q[14];
         assign n9964 = BU7635_Q[15];
         assign n9963 = BU7635_Q[16];
         assign n9962 = BU7635_Q[17];
         assign n9961 = BU7635_Q[18];
         assign n9960 = BU7635_Q[19];
         assign n9959 = BU7635_Q[20];
         assign n9958 = BU7635_Q[21];
         assign n9957 = BU7635_Q[22];
         assign n9956 = BU7635_Q[23];
         assign n9955 = BU7635_Q[24];
         assign n9954 = BU7635_Q[25];
         assign n9953 = BU7635_Q[26];
         assign n9952 = BU7635_Q[27];
      wire BU7635_CLK;
         assign BU7635_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7635(
         .A(BU7635_A),
         .B(BU7635_B),
         .ADD(BU7635_ADD),
         .S(BU7635_S),
         .Q(BU7635_Q),
         .CLK(BU7635_CLK)
      );

      defparam BU7810.INIT = 'h5c5c;
      wire BU7810_I0;
         assign BU7810_I0 = n8748;
      wire BU7810_I1;
         assign BU7810_I1 = n11070;
      wire BU7810_I2;
         assign BU7810_I2 = n11069;
      wire BU7810_I3;
         assign BU7810_I3 = 1'b0;
      wire BU7810_O;
         assign n45426 = BU7810_O;
      LUT4       BU7810(
         .I0(BU7810_I0),
         .I1(BU7810_I1),
         .I2(BU7810_I2),
         .I3(BU7810_I3),
         .O(BU7810_O)
      );

      wire [0 : 0] BU7815_D;
         assign BU7815_D[0] = n45397;
      wire [0 : 0] BU7815_Q;
         assign n11067 = BU7815_Q[0];
      wire BU7815_CLK;
         assign BU7815_CLK = n1088;
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
      BU7815(
         .D(BU7815_D),
         .Q(BU7815_Q),
         .CLK(BU7815_CLK)
      );

      wire [0 : 0] BU7824_D;
         assign BU7824_D[0] = n10939;
      wire [0 : 0] BU7824_Q;
         assign n10936 = BU7824_Q[0];
      wire BU7824_CLK;
         assign BU7824_CLK = n1088;
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
      BU7824(
         .D(BU7824_D),
         .Q(BU7824_Q),
         .CLK(BU7824_CLK)
      );

      wire [0 : 0] BU7831_D;
         assign BU7831_D[0] = n10938;
      wire [0 : 0] BU7831_Q;
         assign n10935 = BU7831_Q[0];
      wire BU7831_CLK;
         assign BU7831_CLK = n1088;
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
      BU7831(
         .D(BU7831_D),
         .Q(BU7831_Q),
         .CLK(BU7831_CLK)
      );

      wire [0 : 0] BU7838_D;
         assign BU7838_D[0] = n10937;
      wire [0 : 0] BU7838_Q;
         assign n10934 = BU7838_Q[0];
      wire BU7838_CLK;
         assign BU7838_CLK = n1088;
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
      BU7838(
         .D(BU7838_D),
         .Q(BU7838_Q),
         .CLK(BU7838_CLK)
      );

      wire [0 : 0] BU7845_D;
         assign BU7845_D[0] = n11069;
      wire [0 : 0] BU7845_Q;
         assign n11066 = BU7845_Q[0];
      wire BU7845_CLK;
         assign BU7845_CLK = n1088;
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
      BU7845(
         .D(BU7845_D),
         .Q(BU7845_Q),
         .CLK(BU7845_CLK)
      );

      wire [27 : 0] BU7861_A;
         assign BU7861_A[0] = n7515;
         assign BU7861_A[1] = n7514;
         assign BU7861_A[2] = n7513;
         assign BU7861_A[3] = n7512;
         assign BU7861_A[4] = n7511;
         assign BU7861_A[5] = n7510;
         assign BU7861_A[6] = n7509;
         assign BU7861_A[7] = n7508;
         assign BU7861_A[8] = n7507;
         assign BU7861_A[9] = n7506;
         assign BU7861_A[10] = n7505;
         assign BU7861_A[11] = n7504;
         assign BU7861_A[12] = n7503;
         assign BU7861_A[13] = n7502;
         assign BU7861_A[14] = n7501;
         assign BU7861_A[15] = n7500;
         assign BU7861_A[16] = n7499;
         assign BU7861_A[17] = n7498;
         assign BU7861_A[18] = n7497;
         assign BU7861_A[19] = n7496;
         assign BU7861_A[20] = n7495;
         assign BU7861_A[21] = n7494;
         assign BU7861_A[22] = n7493;
         assign BU7861_A[23] = n7492;
         assign BU7861_A[24] = n7491;
         assign BU7861_A[25] = n7490;
         assign BU7861_A[26] = n7489;
         assign BU7861_A[27] = n7488;
      wire [27 : 0] BU7861_B;
         assign BU7861_B[0] = n8735;
         assign BU7861_B[1] = n8734;
         assign BU7861_B[2] = n8733;
         assign BU7861_B[3] = n8732;
         assign BU7861_B[4] = n8731;
         assign BU7861_B[5] = n8730;
         assign BU7861_B[6] = n8729;
         assign BU7861_B[7] = n8728;
         assign BU7861_B[8] = n8727;
         assign BU7861_B[9] = n8726;
         assign BU7861_B[10] = n8725;
         assign BU7861_B[11] = n8724;
         assign BU7861_B[12] = n8723;
         assign BU7861_B[13] = n8722;
         assign BU7861_B[14] = n8721;
         assign BU7861_B[15] = n8720;
         assign BU7861_B[16] = n8720;
         assign BU7861_B[17] = n8720;
         assign BU7861_B[18] = n8720;
         assign BU7861_B[19] = n8720;
         assign BU7861_B[20] = n8720;
         assign BU7861_B[21] = n8720;
         assign BU7861_B[22] = n8720;
         assign BU7861_B[23] = n8720;
         assign BU7861_B[24] = n8720;
         assign BU7861_B[25] = n8720;
         assign BU7861_B[26] = n8720;
         assign BU7861_B[27] = n8720;
      wire BU7861_ADD;
         assign BU7861_ADD = n46836;
      wire [27 : 0] BU7861_Q;
         assign n7487 = BU7861_Q[0];
         assign n7486 = BU7861_Q[1];
         assign n7485 = BU7861_Q[2];
         assign n7484 = BU7861_Q[3];
         assign n7483 = BU7861_Q[4];
         assign n7482 = BU7861_Q[5];
         assign n7481 = BU7861_Q[6];
         assign n7480 = BU7861_Q[7];
         assign n7479 = BU7861_Q[8];
         assign n7478 = BU7861_Q[9];
         assign n7477 = BU7861_Q[10];
         assign n7476 = BU7861_Q[11];
         assign n7475 = BU7861_Q[12];
         assign n7474 = BU7861_Q[13];
         assign n7473 = BU7861_Q[14];
         assign n7472 = BU7861_Q[15];
         assign n7471 = BU7861_Q[16];
         assign n7470 = BU7861_Q[17];
         assign n7469 = BU7861_Q[18];
         assign n7468 = BU7861_Q[19];
         assign n7467 = BU7861_Q[20];
         assign n7466 = BU7861_Q[21];
         assign n7465 = BU7861_Q[22];
         assign n7464 = BU7861_Q[23];
         assign n7463 = BU7861_Q[24];
         assign n7462 = BU7861_Q[25];
         assign n7461 = BU7861_Q[26];
         assign n7460 = BU7861_Q[27];
      wire BU7861_CLK;
         assign BU7861_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU7861(
         .A(BU7861_A),
         .B(BU7861_B),
         .ADD(BU7861_ADD),
         .Q(BU7861_Q),
         .CLK(BU7861_CLK)
      );

      defparam BU8036.INIT = 'ha53c;
      wire BU8036_I0;
         assign BU8036_I0 = n8720;
      wire BU8036_I1;
         assign BU8036_I1 = n11067;
      wire BU8036_I2;
         assign BU8036_I2 = 1'b0;
      wire BU8036_I3;
         assign BU8036_I3 = n11066;
      wire BU8036_O;
         assign n46836 = BU8036_O;
      LUT4       BU8036(
         .I0(BU8036_I0),
         .I1(BU8036_I1),
         .I2(BU8036_I2),
         .I3(BU8036_I3),
         .O(BU8036_O)
      );

      wire [27 : 0] BU8041_A;
         assign BU8041_A[0] = n8747;
         assign BU8041_A[1] = n8746;
         assign BU8041_A[2] = n8745;
         assign BU8041_A[3] = n8744;
         assign BU8041_A[4] = n8743;
         assign BU8041_A[5] = n8742;
         assign BU8041_A[6] = n8741;
         assign BU8041_A[7] = n8740;
         assign BU8041_A[8] = n8739;
         assign BU8041_A[9] = n8738;
         assign BU8041_A[10] = n8737;
         assign BU8041_A[11] = n8736;
         assign BU8041_A[12] = n8735;
         assign BU8041_A[13] = n8734;
         assign BU8041_A[14] = n8733;
         assign BU8041_A[15] = n8732;
         assign BU8041_A[16] = n8731;
         assign BU8041_A[17] = n8730;
         assign BU8041_A[18] = n8729;
         assign BU8041_A[19] = n8728;
         assign BU8041_A[20] = n8727;
         assign BU8041_A[21] = n8726;
         assign BU8041_A[22] = n8725;
         assign BU8041_A[23] = n8724;
         assign BU8041_A[24] = n8723;
         assign BU8041_A[25] = n8722;
         assign BU8041_A[26] = n8721;
         assign BU8041_A[27] = n8720;
      wire [27 : 0] BU8041_B;
         assign BU8041_B[0] = n7503;
         assign BU8041_B[1] = n7502;
         assign BU8041_B[2] = n7501;
         assign BU8041_B[3] = n7500;
         assign BU8041_B[4] = n7499;
         assign BU8041_B[5] = n7498;
         assign BU8041_B[6] = n7497;
         assign BU8041_B[7] = n7496;
         assign BU8041_B[8] = n7495;
         assign BU8041_B[9] = n7494;
         assign BU8041_B[10] = n7493;
         assign BU8041_B[11] = n7492;
         assign BU8041_B[12] = n7491;
         assign BU8041_B[13] = n7490;
         assign BU8041_B[14] = n7489;
         assign BU8041_B[15] = n7488;
         assign BU8041_B[16] = n7488;
         assign BU8041_B[17] = n7488;
         assign BU8041_B[18] = n7488;
         assign BU8041_B[19] = n7488;
         assign BU8041_B[20] = n7488;
         assign BU8041_B[21] = n7488;
         assign BU8041_B[22] = n7488;
         assign BU8041_B[23] = n7488;
         assign BU8041_B[24] = n7488;
         assign BU8041_B[25] = n7488;
         assign BU8041_B[26] = n7488;
         assign BU8041_B[27] = n7488;
      wire BU8041_ADD;
         assign BU8041_ADD = n46837;
      wire [27 : 0] BU8041_Q;
         assign n8719 = BU8041_Q[0];
         assign n8718 = BU8041_Q[1];
         assign n8717 = BU8041_Q[2];
         assign n8716 = BU8041_Q[3];
         assign n8715 = BU8041_Q[4];
         assign n8714 = BU8041_Q[5];
         assign n8713 = BU8041_Q[6];
         assign n8712 = BU8041_Q[7];
         assign n8711 = BU8041_Q[8];
         assign n8710 = BU8041_Q[9];
         assign n8709 = BU8041_Q[10];
         assign n8708 = BU8041_Q[11];
         assign n8707 = BU8041_Q[12];
         assign n8706 = BU8041_Q[13];
         assign n8705 = BU8041_Q[14];
         assign n8704 = BU8041_Q[15];
         assign n8703 = BU8041_Q[16];
         assign n8702 = BU8041_Q[17];
         assign n8701 = BU8041_Q[18];
         assign n8700 = BU8041_Q[19];
         assign n8699 = BU8041_Q[20];
         assign n8698 = BU8041_Q[21];
         assign n8697 = BU8041_Q[22];
         assign n8696 = BU8041_Q[23];
         assign n8695 = BU8041_Q[24];
         assign n8694 = BU8041_Q[25];
         assign n8693 = BU8041_Q[26];
         assign n8692 = BU8041_Q[27];
      wire BU8041_CLK;
         assign BU8041_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8041(
         .A(BU8041_A),
         .B(BU8041_B),
         .ADD(BU8041_ADD),
         .Q(BU8041_Q),
         .CLK(BU8041_CLK)
      );

      defparam BU8216.INIT = 'ha3a3;
      wire BU8216_I0;
         assign BU8216_I0 = n8720;
      wire BU8216_I1;
         assign BU8216_I1 = n11067;
      wire BU8216_I2;
         assign BU8216_I2 = n11066;
      wire BU8216_I3;
         assign BU8216_I3 = 1'b0;
      wire BU8216_O;
         assign n46837 = BU8216_O;
      LUT4       BU8216(
         .I0(BU8216_I0),
         .I1(BU8216_I1),
         .I2(BU8216_I2),
         .I3(BU8216_I3),
         .O(BU8216_O)
      );

      wire [27 : 0] BU8223_A;
         assign BU8223_A[0] = n9979;
         assign BU8223_A[1] = n9978;
         assign BU8223_A[2] = n9977;
         assign BU8223_A[3] = n9976;
         assign BU8223_A[4] = n9975;
         assign BU8223_A[5] = n9974;
         assign BU8223_A[6] = n9973;
         assign BU8223_A[7] = n9972;
         assign BU8223_A[8] = n9971;
         assign BU8223_A[9] = n9970;
         assign BU8223_A[10] = n9969;
         assign BU8223_A[11] = n9968;
         assign BU8223_A[12] = n9967;
         assign BU8223_A[13] = n9966;
         assign BU8223_A[14] = n9965;
         assign BU8223_A[15] = n9964;
         assign BU8223_A[16] = n9963;
         assign BU8223_A[17] = n9962;
         assign BU8223_A[18] = n9961;
         assign BU8223_A[19] = n9960;
         assign BU8223_A[20] = n9959;
         assign BU8223_A[21] = n9958;
         assign BU8223_A[22] = n9957;
         assign BU8223_A[23] = n9956;
         assign BU8223_A[24] = n9955;
         assign BU8223_A[25] = n9954;
         assign BU8223_A[26] = n9953;
         assign BU8223_A[27] = n9952;
      wire [27 : 0] BU8223_B;
         assign BU8223_B[0] = 1'b0;
         assign BU8223_B[1] = 1'b0;
         assign BU8223_B[2] = 1'b0;
         assign BU8223_B[3] = 1'b0;
         assign BU8223_B[4] = 1'b1;
         assign BU8223_B[5] = 1'b1;
         assign BU8223_B[6] = 1'b0;
         assign BU8223_B[7] = 1'b0;
         assign BU8223_B[8] = 1'b0;
         assign BU8223_B[9] = 1'b1;
         assign BU8223_B[10] = 1'b0;
         assign BU8223_B[11] = 1'b1;
         assign BU8223_B[12] = 1'b0;
         assign BU8223_B[13] = 1'b0;
         assign BU8223_B[14] = 1'b0;
         assign BU8223_B[15] = 1'b0;
         assign BU8223_B[16] = 1'b0;
         assign BU8223_B[17] = 1'b0;
         assign BU8223_B[18] = 1'b0;
         assign BU8223_B[19] = 1'b0;
         assign BU8223_B[20] = 1'b0;
         assign BU8223_B[21] = 1'b0;
         assign BU8223_B[22] = 1'b0;
         assign BU8223_B[23] = 1'b0;
         assign BU8223_B[24] = 1'b0;
         assign BU8223_B[25] = 1'b0;
         assign BU8223_B[26] = 1'b0;
         assign BU8223_B[27] = 1'b0;
      wire BU8223_ADD;
         assign BU8223_ADD = n48606;
      wire [27 : 0] BU8223_S;
         assign n48577 = BU8223_S[27];
      wire [27 : 0] BU8223_Q;
         assign n9951 = BU8223_Q[0];
         assign n9950 = BU8223_Q[1];
         assign n9949 = BU8223_Q[2];
         assign n9948 = BU8223_Q[3];
         assign n9947 = BU8223_Q[4];
         assign n9946 = BU8223_Q[5];
         assign n9945 = BU8223_Q[6];
         assign n9944 = BU8223_Q[7];
         assign n9943 = BU8223_Q[8];
         assign n9942 = BU8223_Q[9];
         assign n9941 = BU8223_Q[10];
         assign n9940 = BU8223_Q[11];
         assign n9939 = BU8223_Q[12];
         assign n9938 = BU8223_Q[13];
         assign n9937 = BU8223_Q[14];
         assign n9936 = BU8223_Q[15];
         assign n9935 = BU8223_Q[16];
         assign n9934 = BU8223_Q[17];
         assign n9933 = BU8223_Q[18];
         assign n9932 = BU8223_Q[19];
         assign n9931 = BU8223_Q[20];
         assign n9930 = BU8223_Q[21];
         assign n9929 = BU8223_Q[22];
         assign n9928 = BU8223_Q[23];
         assign n9927 = BU8223_Q[24];
         assign n9926 = BU8223_Q[25];
         assign n9925 = BU8223_Q[26];
         assign n9924 = BU8223_Q[27];
      wire BU8223_CLK;
         assign BU8223_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8223(
         .A(BU8223_A),
         .B(BU8223_B),
         .ADD(BU8223_ADD),
         .S(BU8223_S),
         .Q(BU8223_Q),
         .CLK(BU8223_CLK)
      );

      defparam BU8398.INIT = 'h5c5c;
      wire BU8398_I0;
         assign BU8398_I0 = n8720;
      wire BU8398_I1;
         assign BU8398_I1 = n11067;
      wire BU8398_I2;
         assign BU8398_I2 = n11066;
      wire BU8398_I3;
         assign BU8398_I3 = 1'b0;
      wire BU8398_O;
         assign n48606 = BU8398_O;
      LUT4       BU8398(
         .I0(BU8398_I0),
         .I1(BU8398_I1),
         .I2(BU8398_I2),
         .I3(BU8398_I3),
         .O(BU8398_O)
      );

      wire [0 : 0] BU8403_D;
         assign BU8403_D[0] = n48577;
      wire [0 : 0] BU8403_Q;
         assign n11064 = BU8403_Q[0];
      wire BU8403_CLK;
         assign BU8403_CLK = n1088;
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
      BU8403(
         .D(BU8403_D),
         .Q(BU8403_Q),
         .CLK(BU8403_CLK)
      );

      wire [0 : 0] BU8412_D;
         assign BU8412_D[0] = n10936;
      wire [0 : 0] BU8412_Q;
         assign n10933 = BU8412_Q[0];
      wire BU8412_CLK;
         assign BU8412_CLK = n1088;
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
      BU8412(
         .D(BU8412_D),
         .Q(BU8412_Q),
         .CLK(BU8412_CLK)
      );

      wire [0 : 0] BU8419_D;
         assign BU8419_D[0] = n10935;
      wire [0 : 0] BU8419_Q;
         assign n10932 = BU8419_Q[0];
      wire BU8419_CLK;
         assign BU8419_CLK = n1088;
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
      BU8419(
         .D(BU8419_D),
         .Q(BU8419_Q),
         .CLK(BU8419_CLK)
      );

      wire [0 : 0] BU8426_D;
         assign BU8426_D[0] = n10934;
      wire [0 : 0] BU8426_Q;
         assign n10931 = BU8426_Q[0];
      wire BU8426_CLK;
         assign BU8426_CLK = n1088;
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
      BU8426(
         .D(BU8426_D),
         .Q(BU8426_Q),
         .CLK(BU8426_CLK)
      );

      wire [0 : 0] BU8433_D;
         assign BU8433_D[0] = n11066;
      wire [0 : 0] BU8433_Q;
         assign n11063 = BU8433_Q[0];
      wire BU8433_CLK;
         assign BU8433_CLK = n1088;
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
      BU8433(
         .D(BU8433_D),
         .Q(BU8433_Q),
         .CLK(BU8433_CLK)
      );

      wire [27 : 0] BU8449_A;
         assign BU8449_A[0] = n7487;
         assign BU8449_A[1] = n7486;
         assign BU8449_A[2] = n7485;
         assign BU8449_A[3] = n7484;
         assign BU8449_A[4] = n7483;
         assign BU8449_A[5] = n7482;
         assign BU8449_A[6] = n7481;
         assign BU8449_A[7] = n7480;
         assign BU8449_A[8] = n7479;
         assign BU8449_A[9] = n7478;
         assign BU8449_A[10] = n7477;
         assign BU8449_A[11] = n7476;
         assign BU8449_A[12] = n7475;
         assign BU8449_A[13] = n7474;
         assign BU8449_A[14] = n7473;
         assign BU8449_A[15] = n7472;
         assign BU8449_A[16] = n7471;
         assign BU8449_A[17] = n7470;
         assign BU8449_A[18] = n7469;
         assign BU8449_A[19] = n7468;
         assign BU8449_A[20] = n7467;
         assign BU8449_A[21] = n7466;
         assign BU8449_A[22] = n7465;
         assign BU8449_A[23] = n7464;
         assign BU8449_A[24] = n7463;
         assign BU8449_A[25] = n7462;
         assign BU8449_A[26] = n7461;
         assign BU8449_A[27] = n7460;
      wire [27 : 0] BU8449_B;
         assign BU8449_B[0] = n8706;
         assign BU8449_B[1] = n8705;
         assign BU8449_B[2] = n8704;
         assign BU8449_B[3] = n8703;
         assign BU8449_B[4] = n8702;
         assign BU8449_B[5] = n8701;
         assign BU8449_B[6] = n8700;
         assign BU8449_B[7] = n8699;
         assign BU8449_B[8] = n8698;
         assign BU8449_B[9] = n8697;
         assign BU8449_B[10] = n8696;
         assign BU8449_B[11] = n8695;
         assign BU8449_B[12] = n8694;
         assign BU8449_B[13] = n8693;
         assign BU8449_B[14] = n8692;
         assign BU8449_B[15] = n8692;
         assign BU8449_B[16] = n8692;
         assign BU8449_B[17] = n8692;
         assign BU8449_B[18] = n8692;
         assign BU8449_B[19] = n8692;
         assign BU8449_B[20] = n8692;
         assign BU8449_B[21] = n8692;
         assign BU8449_B[22] = n8692;
         assign BU8449_B[23] = n8692;
         assign BU8449_B[24] = n8692;
         assign BU8449_B[25] = n8692;
         assign BU8449_B[26] = n8692;
         assign BU8449_B[27] = n8692;
      wire BU8449_ADD;
         assign BU8449_ADD = n50016;
      wire [27 : 0] BU8449_Q;
         assign n7459 = BU8449_Q[0];
         assign n7458 = BU8449_Q[1];
         assign n7457 = BU8449_Q[2];
         assign n7456 = BU8449_Q[3];
         assign n7455 = BU8449_Q[4];
         assign n7454 = BU8449_Q[5];
         assign n7453 = BU8449_Q[6];
         assign n7452 = BU8449_Q[7];
         assign n7451 = BU8449_Q[8];
         assign n7450 = BU8449_Q[9];
         assign n7449 = BU8449_Q[10];
         assign n7448 = BU8449_Q[11];
         assign n7447 = BU8449_Q[12];
         assign n7446 = BU8449_Q[13];
         assign n7445 = BU8449_Q[14];
         assign n7444 = BU8449_Q[15];
         assign n7443 = BU8449_Q[16];
         assign n7442 = BU8449_Q[17];
         assign n7441 = BU8449_Q[18];
         assign n7440 = BU8449_Q[19];
         assign n7439 = BU8449_Q[20];
         assign n7438 = BU8449_Q[21];
         assign n7437 = BU8449_Q[22];
         assign n7436 = BU8449_Q[23];
         assign n7435 = BU8449_Q[24];
         assign n7434 = BU8449_Q[25];
         assign n7433 = BU8449_Q[26];
         assign n7432 = BU8449_Q[27];
      wire BU8449_CLK;
         assign BU8449_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8449(
         .A(BU8449_A),
         .B(BU8449_B),
         .ADD(BU8449_ADD),
         .Q(BU8449_Q),
         .CLK(BU8449_CLK)
      );

      defparam BU8624.INIT = 'ha53c;
      wire BU8624_I0;
         assign BU8624_I0 = n8692;
      wire BU8624_I1;
         assign BU8624_I1 = n11064;
      wire BU8624_I2;
         assign BU8624_I2 = 1'b0;
      wire BU8624_I3;
         assign BU8624_I3 = n11063;
      wire BU8624_O;
         assign n50016 = BU8624_O;
      LUT4       BU8624(
         .I0(BU8624_I0),
         .I1(BU8624_I1),
         .I2(BU8624_I2),
         .I3(BU8624_I3),
         .O(BU8624_O)
      );

      wire [27 : 0] BU8629_A;
         assign BU8629_A[0] = n8719;
         assign BU8629_A[1] = n8718;
         assign BU8629_A[2] = n8717;
         assign BU8629_A[3] = n8716;
         assign BU8629_A[4] = n8715;
         assign BU8629_A[5] = n8714;
         assign BU8629_A[6] = n8713;
         assign BU8629_A[7] = n8712;
         assign BU8629_A[8] = n8711;
         assign BU8629_A[9] = n8710;
         assign BU8629_A[10] = n8709;
         assign BU8629_A[11] = n8708;
         assign BU8629_A[12] = n8707;
         assign BU8629_A[13] = n8706;
         assign BU8629_A[14] = n8705;
         assign BU8629_A[15] = n8704;
         assign BU8629_A[16] = n8703;
         assign BU8629_A[17] = n8702;
         assign BU8629_A[18] = n8701;
         assign BU8629_A[19] = n8700;
         assign BU8629_A[20] = n8699;
         assign BU8629_A[21] = n8698;
         assign BU8629_A[22] = n8697;
         assign BU8629_A[23] = n8696;
         assign BU8629_A[24] = n8695;
         assign BU8629_A[25] = n8694;
         assign BU8629_A[26] = n8693;
         assign BU8629_A[27] = n8692;
      wire [27 : 0] BU8629_B;
         assign BU8629_B[0] = n7474;
         assign BU8629_B[1] = n7473;
         assign BU8629_B[2] = n7472;
         assign BU8629_B[3] = n7471;
         assign BU8629_B[4] = n7470;
         assign BU8629_B[5] = n7469;
         assign BU8629_B[6] = n7468;
         assign BU8629_B[7] = n7467;
         assign BU8629_B[8] = n7466;
         assign BU8629_B[9] = n7465;
         assign BU8629_B[10] = n7464;
         assign BU8629_B[11] = n7463;
         assign BU8629_B[12] = n7462;
         assign BU8629_B[13] = n7461;
         assign BU8629_B[14] = n7460;
         assign BU8629_B[15] = n7460;
         assign BU8629_B[16] = n7460;
         assign BU8629_B[17] = n7460;
         assign BU8629_B[18] = n7460;
         assign BU8629_B[19] = n7460;
         assign BU8629_B[20] = n7460;
         assign BU8629_B[21] = n7460;
         assign BU8629_B[22] = n7460;
         assign BU8629_B[23] = n7460;
         assign BU8629_B[24] = n7460;
         assign BU8629_B[25] = n7460;
         assign BU8629_B[26] = n7460;
         assign BU8629_B[27] = n7460;
      wire BU8629_ADD;
         assign BU8629_ADD = n50017;
      wire [27 : 0] BU8629_Q;
         assign n8691 = BU8629_Q[0];
         assign n8690 = BU8629_Q[1];
         assign n8689 = BU8629_Q[2];
         assign n8688 = BU8629_Q[3];
         assign n8687 = BU8629_Q[4];
         assign n8686 = BU8629_Q[5];
         assign n8685 = BU8629_Q[6];
         assign n8684 = BU8629_Q[7];
         assign n8683 = BU8629_Q[8];
         assign n8682 = BU8629_Q[9];
         assign n8681 = BU8629_Q[10];
         assign n8680 = BU8629_Q[11];
         assign n8679 = BU8629_Q[12];
         assign n8678 = BU8629_Q[13];
         assign n8677 = BU8629_Q[14];
         assign n8676 = BU8629_Q[15];
         assign n8675 = BU8629_Q[16];
         assign n8674 = BU8629_Q[17];
         assign n8673 = BU8629_Q[18];
         assign n8672 = BU8629_Q[19];
         assign n8671 = BU8629_Q[20];
         assign n8670 = BU8629_Q[21];
         assign n8669 = BU8629_Q[22];
         assign n8668 = BU8629_Q[23];
         assign n8667 = BU8629_Q[24];
         assign n8666 = BU8629_Q[25];
         assign n8665 = BU8629_Q[26];
         assign n8664 = BU8629_Q[27];
      wire BU8629_CLK;
         assign BU8629_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8629(
         .A(BU8629_A),
         .B(BU8629_B),
         .ADD(BU8629_ADD),
         .Q(BU8629_Q),
         .CLK(BU8629_CLK)
      );

      defparam BU8804.INIT = 'ha3a3;
      wire BU8804_I0;
         assign BU8804_I0 = n8692;
      wire BU8804_I1;
         assign BU8804_I1 = n11064;
      wire BU8804_I2;
         assign BU8804_I2 = n11063;
      wire BU8804_I3;
         assign BU8804_I3 = 1'b0;
      wire BU8804_O;
         assign n50017 = BU8804_O;
      LUT4       BU8804(
         .I0(BU8804_I0),
         .I1(BU8804_I1),
         .I2(BU8804_I2),
         .I3(BU8804_I3),
         .O(BU8804_O)
      );

      wire [27 : 0] BU8811_A;
         assign BU8811_A[0] = n9951;
         assign BU8811_A[1] = n9950;
         assign BU8811_A[2] = n9949;
         assign BU8811_A[3] = n9948;
         assign BU8811_A[4] = n9947;
         assign BU8811_A[5] = n9946;
         assign BU8811_A[6] = n9945;
         assign BU8811_A[7] = n9944;
         assign BU8811_A[8] = n9943;
         assign BU8811_A[9] = n9942;
         assign BU8811_A[10] = n9941;
         assign BU8811_A[11] = n9940;
         assign BU8811_A[12] = n9939;
         assign BU8811_A[13] = n9938;
         assign BU8811_A[14] = n9937;
         assign BU8811_A[15] = n9936;
         assign BU8811_A[16] = n9935;
         assign BU8811_A[17] = n9934;
         assign BU8811_A[18] = n9933;
         assign BU8811_A[19] = n9932;
         assign BU8811_A[20] = n9931;
         assign BU8811_A[21] = n9930;
         assign BU8811_A[22] = n9929;
         assign BU8811_A[23] = n9928;
         assign BU8811_A[24] = n9927;
         assign BU8811_A[25] = n9926;
         assign BU8811_A[26] = n9925;
         assign BU8811_A[27] = n9924;
      wire [27 : 0] BU8811_B;
         assign BU8811_B[0] = 1'b0;
         assign BU8811_B[1] = 1'b0;
         assign BU8811_B[2] = 1'b0;
         assign BU8811_B[3] = 1'b1;
         assign BU8811_B[4] = 1'b1;
         assign BU8811_B[5] = 1'b0;
         assign BU8811_B[6] = 1'b0;
         assign BU8811_B[7] = 1'b0;
         assign BU8811_B[8] = 1'b1;
         assign BU8811_B[9] = 1'b0;
         assign BU8811_B[10] = 1'b1;
         assign BU8811_B[11] = 1'b0;
         assign BU8811_B[12] = 1'b0;
         assign BU8811_B[13] = 1'b0;
         assign BU8811_B[14] = 1'b0;
         assign BU8811_B[15] = 1'b0;
         assign BU8811_B[16] = 1'b0;
         assign BU8811_B[17] = 1'b0;
         assign BU8811_B[18] = 1'b0;
         assign BU8811_B[19] = 1'b0;
         assign BU8811_B[20] = 1'b0;
         assign BU8811_B[21] = 1'b0;
         assign BU8811_B[22] = 1'b0;
         assign BU8811_B[23] = 1'b0;
         assign BU8811_B[24] = 1'b0;
         assign BU8811_B[25] = 1'b0;
         assign BU8811_B[26] = 1'b0;
         assign BU8811_B[27] = 1'b0;
      wire BU8811_ADD;
         assign BU8811_ADD = n51786;
      wire [27 : 0] BU8811_S;
         assign n51757 = BU8811_S[27];
      wire [27 : 0] BU8811_Q;
         assign n9923 = BU8811_Q[0];
         assign n9922 = BU8811_Q[1];
         assign n9921 = BU8811_Q[2];
         assign n9920 = BU8811_Q[3];
         assign n9919 = BU8811_Q[4];
         assign n9918 = BU8811_Q[5];
         assign n9917 = BU8811_Q[6];
         assign n9916 = BU8811_Q[7];
         assign n9915 = BU8811_Q[8];
         assign n9914 = BU8811_Q[9];
         assign n9913 = BU8811_Q[10];
         assign n9912 = BU8811_Q[11];
         assign n9911 = BU8811_Q[12];
         assign n9910 = BU8811_Q[13];
         assign n9909 = BU8811_Q[14];
         assign n9908 = BU8811_Q[15];
         assign n9907 = BU8811_Q[16];
         assign n9906 = BU8811_Q[17];
         assign n9905 = BU8811_Q[18];
         assign n9904 = BU8811_Q[19];
         assign n9903 = BU8811_Q[20];
         assign n9902 = BU8811_Q[21];
         assign n9901 = BU8811_Q[22];
         assign n9900 = BU8811_Q[23];
         assign n9899 = BU8811_Q[24];
         assign n9898 = BU8811_Q[25];
         assign n9897 = BU8811_Q[26];
         assign n9896 = BU8811_Q[27];
      wire BU8811_CLK;
         assign BU8811_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU8811(
         .A(BU8811_A),
         .B(BU8811_B),
         .ADD(BU8811_ADD),
         .S(BU8811_S),
         .Q(BU8811_Q),
         .CLK(BU8811_CLK)
      );

      defparam BU8986.INIT = 'h5c5c;
      wire BU8986_I0;
         assign BU8986_I0 = n8692;
      wire BU8986_I1;
         assign BU8986_I1 = n11064;
      wire BU8986_I2;
         assign BU8986_I2 = n11063;
      wire BU8986_I3;
         assign BU8986_I3 = 1'b0;
      wire BU8986_O;
         assign n51786 = BU8986_O;
      LUT4       BU8986(
         .I0(BU8986_I0),
         .I1(BU8986_I1),
         .I2(BU8986_I2),
         .I3(BU8986_I3),
         .O(BU8986_O)
      );

      wire [0 : 0] BU8991_D;
         assign BU8991_D[0] = n51757;
      wire [0 : 0] BU8991_Q;
         assign n11061 = BU8991_Q[0];
      wire BU8991_CLK;
         assign BU8991_CLK = n1088;
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
      BU8991(
         .D(BU8991_D),
         .Q(BU8991_Q),
         .CLK(BU8991_CLK)
      );

      wire [0 : 0] BU9000_D;
         assign BU9000_D[0] = n10933;
      wire [0 : 0] BU9000_Q;
         assign n10930 = BU9000_Q[0];
      wire BU9000_CLK;
         assign BU9000_CLK = n1088;
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
      BU9000(
         .D(BU9000_D),
         .Q(BU9000_Q),
         .CLK(BU9000_CLK)
      );

      wire [0 : 0] BU9007_D;
         assign BU9007_D[0] = n10932;
      wire [0 : 0] BU9007_Q;
         assign n10929 = BU9007_Q[0];
      wire BU9007_CLK;
         assign BU9007_CLK = n1088;
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
      BU9007(
         .D(BU9007_D),
         .Q(BU9007_Q),
         .CLK(BU9007_CLK)
      );

      wire [0 : 0] BU9014_D;
         assign BU9014_D[0] = n10931;
      wire [0 : 0] BU9014_Q;
         assign n10928 = BU9014_Q[0];
      wire BU9014_CLK;
         assign BU9014_CLK = n1088;
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
      BU9014(
         .D(BU9014_D),
         .Q(BU9014_Q),
         .CLK(BU9014_CLK)
      );

      wire [0 : 0] BU9021_D;
         assign BU9021_D[0] = n11063;
      wire [0 : 0] BU9021_Q;
         assign n11060 = BU9021_Q[0];
      wire BU9021_CLK;
         assign BU9021_CLK = n1088;
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
      BU9021(
         .D(BU9021_D),
         .Q(BU9021_Q),
         .CLK(BU9021_CLK)
      );

      wire [27 : 0] BU9037_A;
         assign BU9037_A[0] = n7459;
         assign BU9037_A[1] = n7458;
         assign BU9037_A[2] = n7457;
         assign BU9037_A[3] = n7456;
         assign BU9037_A[4] = n7455;
         assign BU9037_A[5] = n7454;
         assign BU9037_A[6] = n7453;
         assign BU9037_A[7] = n7452;
         assign BU9037_A[8] = n7451;
         assign BU9037_A[9] = n7450;
         assign BU9037_A[10] = n7449;
         assign BU9037_A[11] = n7448;
         assign BU9037_A[12] = n7447;
         assign BU9037_A[13] = n7446;
         assign BU9037_A[14] = n7445;
         assign BU9037_A[15] = n7444;
         assign BU9037_A[16] = n7443;
         assign BU9037_A[17] = n7442;
         assign BU9037_A[18] = n7441;
         assign BU9037_A[19] = n7440;
         assign BU9037_A[20] = n7439;
         assign BU9037_A[21] = n7438;
         assign BU9037_A[22] = n7437;
         assign BU9037_A[23] = n7436;
         assign BU9037_A[24] = n7435;
         assign BU9037_A[25] = n7434;
         assign BU9037_A[26] = n7433;
         assign BU9037_A[27] = n7432;
      wire [27 : 0] BU9037_B;
         assign BU9037_B[0] = n8677;
         assign BU9037_B[1] = n8676;
         assign BU9037_B[2] = n8675;
         assign BU9037_B[3] = n8674;
         assign BU9037_B[4] = n8673;
         assign BU9037_B[5] = n8672;
         assign BU9037_B[6] = n8671;
         assign BU9037_B[7] = n8670;
         assign BU9037_B[8] = n8669;
         assign BU9037_B[9] = n8668;
         assign BU9037_B[10] = n8667;
         assign BU9037_B[11] = n8666;
         assign BU9037_B[12] = n8665;
         assign BU9037_B[13] = n8664;
         assign BU9037_B[14] = n8664;
         assign BU9037_B[15] = n8664;
         assign BU9037_B[16] = n8664;
         assign BU9037_B[17] = n8664;
         assign BU9037_B[18] = n8664;
         assign BU9037_B[19] = n8664;
         assign BU9037_B[20] = n8664;
         assign BU9037_B[21] = n8664;
         assign BU9037_B[22] = n8664;
         assign BU9037_B[23] = n8664;
         assign BU9037_B[24] = n8664;
         assign BU9037_B[25] = n8664;
         assign BU9037_B[26] = n8664;
         assign BU9037_B[27] = n8664;
      wire BU9037_ADD;
         assign BU9037_ADD = n53196;
      wire [27 : 0] BU9037_Q;
         assign n7431 = BU9037_Q[0];
         assign n7430 = BU9037_Q[1];
         assign n7429 = BU9037_Q[2];
         assign n7428 = BU9037_Q[3];
         assign n7427 = BU9037_Q[4];
         assign n7426 = BU9037_Q[5];
         assign n7425 = BU9037_Q[6];
         assign n7424 = BU9037_Q[7];
         assign n7423 = BU9037_Q[8];
         assign n7422 = BU9037_Q[9];
         assign n7421 = BU9037_Q[10];
         assign n7420 = BU9037_Q[11];
         assign n7419 = BU9037_Q[12];
         assign n7418 = BU9037_Q[13];
         assign n7417 = BU9037_Q[14];
         assign n7416 = BU9037_Q[15];
         assign n7415 = BU9037_Q[16];
         assign n7414 = BU9037_Q[17];
         assign n7413 = BU9037_Q[18];
         assign n7412 = BU9037_Q[19];
         assign n7411 = BU9037_Q[20];
         assign n7410 = BU9037_Q[21];
         assign n7409 = BU9037_Q[22];
         assign n7408 = BU9037_Q[23];
         assign n7407 = BU9037_Q[24];
         assign n7406 = BU9037_Q[25];
         assign n7405 = BU9037_Q[26];
         assign n7404 = BU9037_Q[27];
      wire BU9037_CLK;
         assign BU9037_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU9037(
         .A(BU9037_A),
         .B(BU9037_B),
         .ADD(BU9037_ADD),
         .Q(BU9037_Q),
         .CLK(BU9037_CLK)
      );

      defparam BU9212.INIT = 'ha53c;
      wire BU9212_I0;
         assign BU9212_I0 = n8664;
      wire BU9212_I1;
         assign BU9212_I1 = n11061;
      wire BU9212_I2;
         assign BU9212_I2 = 1'b0;
      wire BU9212_I3;
         assign BU9212_I3 = n11060;
      wire BU9212_O;
         assign n53196 = BU9212_O;
      LUT4       BU9212(
         .I0(BU9212_I0),
         .I1(BU9212_I1),
         .I2(BU9212_I2),
         .I3(BU9212_I3),
         .O(BU9212_O)
      );

      wire [27 : 0] BU9217_A;
         assign BU9217_A[0] = n8691;
         assign BU9217_A[1] = n8690;
         assign BU9217_A[2] = n8689;
         assign BU9217_A[3] = n8688;
         assign BU9217_A[4] = n8687;
         assign BU9217_A[5] = n8686;
         assign BU9217_A[6] = n8685;
         assign BU9217_A[7] = n8684;
         assign BU9217_A[8] = n8683;
         assign BU9217_A[9] = n8682;
         assign BU9217_A[10] = n8681;
         assign BU9217_A[11] = n8680;
         assign BU9217_A[12] = n8679;
         assign BU9217_A[13] = n8678;
         assign BU9217_A[14] = n8677;
         assign BU9217_A[15] = n8676;
         assign BU9217_A[16] = n8675;
         assign BU9217_A[17] = n8674;
         assign BU9217_A[18] = n8673;
         assign BU9217_A[19] = n8672;
         assign BU9217_A[20] = n8671;
         assign BU9217_A[21] = n8670;
         assign BU9217_A[22] = n8669;
         assign BU9217_A[23] = n8668;
         assign BU9217_A[24] = n8667;
         assign BU9217_A[25] = n8666;
         assign BU9217_A[26] = n8665;
         assign BU9217_A[27] = n8664;
      wire [27 : 0] BU9217_B;
         assign BU9217_B[0] = n7445;
         assign BU9217_B[1] = n7444;
         assign BU9217_B[2] = n7443;
         assign BU9217_B[3] = n7442;
         assign BU9217_B[4] = n7441;
         assign BU9217_B[5] = n7440;
         assign BU9217_B[6] = n7439;
         assign BU9217_B[7] = n7438;
         assign BU9217_B[8] = n7437;
         assign BU9217_B[9] = n7436;
         assign BU9217_B[10] = n7435;
         assign BU9217_B[11] = n7434;
         assign BU9217_B[12] = n7433;
         assign BU9217_B[13] = n7432;
         assign BU9217_B[14] = n7432;
         assign BU9217_B[15] = n7432;
         assign BU9217_B[16] = n7432;
         assign BU9217_B[17] = n7432;
         assign BU9217_B[18] = n7432;
         assign BU9217_B[19] = n7432;
         assign BU9217_B[20] = n7432;
         assign BU9217_B[21] = n7432;
         assign BU9217_B[22] = n7432;
         assign BU9217_B[23] = n7432;
         assign BU9217_B[24] = n7432;
         assign BU9217_B[25] = n7432;
         assign BU9217_B[26] = n7432;
         assign BU9217_B[27] = n7432;
      wire BU9217_ADD;
         assign BU9217_ADD = n53197;
      wire [27 : 0] BU9217_Q;
         assign n8663 = BU9217_Q[0];
         assign n8662 = BU9217_Q[1];
         assign n8661 = BU9217_Q[2];
         assign n8660 = BU9217_Q[3];
         assign n8659 = BU9217_Q[4];
         assign n8658 = BU9217_Q[5];
         assign n8657 = BU9217_Q[6];
         assign n8656 = BU9217_Q[7];
         assign n8655 = BU9217_Q[8];
         assign n8654 = BU9217_Q[9];
         assign n8653 = BU9217_Q[10];
         assign n8652 = BU9217_Q[11];
         assign n8651 = BU9217_Q[12];
         assign n8650 = BU9217_Q[13];
         assign n8649 = BU9217_Q[14];
         assign n8648 = BU9217_Q[15];
         assign n8647 = BU9217_Q[16];
         assign n8646 = BU9217_Q[17];
         assign n8645 = BU9217_Q[18];
         assign n8644 = BU9217_Q[19];
         assign n8643 = BU9217_Q[20];
         assign n8642 = BU9217_Q[21];
         assign n8641 = BU9217_Q[22];
         assign n8640 = BU9217_Q[23];
         assign n8639 = BU9217_Q[24];
         assign n8638 = BU9217_Q[25];
         assign n8637 = BU9217_Q[26];
         assign n8636 = BU9217_Q[27];
      wire BU9217_CLK;
         assign BU9217_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU9217(
         .A(BU9217_A),
         .B(BU9217_B),
         .ADD(BU9217_ADD),
         .Q(BU9217_Q),
         .CLK(BU9217_CLK)
      );

      defparam BU9392.INIT = 'ha3a3;
      wire BU9392_I0;
         assign BU9392_I0 = n8664;
      wire BU9392_I1;
         assign BU9392_I1 = n11061;
      wire BU9392_I2;
         assign BU9392_I2 = n11060;
      wire BU9392_I3;
         assign BU9392_I3 = 1'b0;
      wire BU9392_O;
         assign n53197 = BU9392_O;
      LUT4       BU9392(
         .I0(BU9392_I0),
         .I1(BU9392_I1),
         .I2(BU9392_I2),
         .I3(BU9392_I3),
         .O(BU9392_O)
      );

      wire [27 : 0] BU9399_A;
         assign BU9399_A[0] = n9923;
         assign BU9399_A[1] = n9922;
         assign BU9399_A[2] = n9921;
         assign BU9399_A[3] = n9920;
         assign BU9399_A[4] = n9919;
         assign BU9399_A[5] = n9918;
         assign BU9399_A[6] = n9917;
         assign BU9399_A[7] = n9916;
         assign BU9399_A[8] = n9915;
         assign BU9399_A[9] = n9914;
         assign BU9399_A[10] = n9913;
         assign BU9399_A[11] = n9912;
         assign BU9399_A[12] = n9911;
         assign BU9399_A[13] = n9910;
         assign BU9399_A[14] = n9909;
         assign BU9399_A[15] = n9908;
         assign BU9399_A[16] = n9907;
         assign BU9399_A[17] = n9906;
         assign BU9399_A[18] = n9905;
         assign BU9399_A[19] = n9904;
         assign BU9399_A[20] = n9903;
         assign BU9399_A[21] = n9902;
         assign BU9399_A[22] = n9901;
         assign BU9399_A[23] = n9900;
         assign BU9399_A[24] = n9899;
         assign BU9399_A[25] = n9898;
         assign BU9399_A[26] = n9897;
         assign BU9399_A[27] = n9896;
      wire [27 : 0] BU9399_B;
         assign BU9399_B[0] = 1'b0;
         assign BU9399_B[1] = 1'b0;
         assign BU9399_B[2] = 1'b1;
         assign BU9399_B[3] = 1'b1;
         assign BU9399_B[4] = 1'b0;
         assign BU9399_B[5] = 1'b0;
         assign BU9399_B[6] = 1'b0;
         assign BU9399_B[7] = 1'b1;
         assign BU9399_B[8] = 1'b0;
         assign BU9399_B[9] = 1'b1;
         assign BU9399_B[10] = 1'b0;
         assign BU9399_B[11] = 1'b0;
         assign BU9399_B[12] = 1'b0;
         assign BU9399_B[13] = 1'b0;
         assign BU9399_B[14] = 1'b0;
         assign BU9399_B[15] = 1'b0;
         assign BU9399_B[16] = 1'b0;
         assign BU9399_B[17] = 1'b0;
         assign BU9399_B[18] = 1'b0;
         assign BU9399_B[19] = 1'b0;
         assign BU9399_B[20] = 1'b0;
         assign BU9399_B[21] = 1'b0;
         assign BU9399_B[22] = 1'b0;
         assign BU9399_B[23] = 1'b0;
         assign BU9399_B[24] = 1'b0;
         assign BU9399_B[25] = 1'b0;
         assign BU9399_B[26] = 1'b0;
         assign BU9399_B[27] = 1'b0;
      wire BU9399_ADD;
         assign BU9399_ADD = n54966;
      wire [27 : 0] BU9399_S;
         assign n54937 = BU9399_S[27];
      wire [27 : 0] BU9399_Q;
         assign n9895 = BU9399_Q[0];
         assign n9894 = BU9399_Q[1];
         assign n9893 = BU9399_Q[2];
         assign n9892 = BU9399_Q[3];
         assign n9891 = BU9399_Q[4];
         assign n9890 = BU9399_Q[5];
         assign n9889 = BU9399_Q[6];
         assign n9888 = BU9399_Q[7];
         assign n9887 = BU9399_Q[8];
         assign n9886 = BU9399_Q[9];
         assign n9885 = BU9399_Q[10];
         assign n9884 = BU9399_Q[11];
         assign n9883 = BU9399_Q[12];
         assign n9882 = BU9399_Q[13];
         assign n9881 = BU9399_Q[14];
         assign n9880 = BU9399_Q[15];
         assign n9879 = BU9399_Q[16];
         assign n9878 = BU9399_Q[17];
         assign n9877 = BU9399_Q[18];
         assign n9876 = BU9399_Q[19];
         assign n9875 = BU9399_Q[20];
         assign n9874 = BU9399_Q[21];
         assign n9873 = BU9399_Q[22];
         assign n9872 = BU9399_Q[23];
         assign n9871 = BU9399_Q[24];
         assign n9870 = BU9399_Q[25];
         assign n9869 = BU9399_Q[26];
         assign n9868 = BU9399_Q[27];
      wire BU9399_CLK;
         assign BU9399_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU9399(
         .A(BU9399_A),
         .B(BU9399_B),
         .ADD(BU9399_ADD),
         .S(BU9399_S),
         .Q(BU9399_Q),
         .CLK(BU9399_CLK)
      );

      defparam BU9574.INIT = 'h5c5c;
      wire BU9574_I0;
         assign BU9574_I0 = n8664;
      wire BU9574_I1;
         assign BU9574_I1 = n11061;
      wire BU9574_I2;
         assign BU9574_I2 = n11060;
      wire BU9574_I3;
         assign BU9574_I3 = 1'b0;
      wire BU9574_O;
         assign n54966 = BU9574_O;
      LUT4       BU9574(
         .I0(BU9574_I0),
         .I1(BU9574_I1),
         .I2(BU9574_I2),
         .I3(BU9574_I3),
         .O(BU9574_O)
      );

      wire [0 : 0] BU9579_D;
         assign BU9579_D[0] = n54937;
      wire [0 : 0] BU9579_Q;
         assign n11058 = BU9579_Q[0];
      wire BU9579_CLK;
         assign BU9579_CLK = n1088;
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
      BU9579(
         .D(BU9579_D),
         .Q(BU9579_Q),
         .CLK(BU9579_CLK)
      );

      wire [0 : 0] BU9588_D;
         assign BU9588_D[0] = n10930;
      wire [0 : 0] BU9588_Q;
         assign n10927 = BU9588_Q[0];
      wire BU9588_CLK;
         assign BU9588_CLK = n1088;
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
      BU9588(
         .D(BU9588_D),
         .Q(BU9588_Q),
         .CLK(BU9588_CLK)
      );

      wire [0 : 0] BU9595_D;
         assign BU9595_D[0] = n10929;
      wire [0 : 0] BU9595_Q;
         assign n10926 = BU9595_Q[0];
      wire BU9595_CLK;
         assign BU9595_CLK = n1088;
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
      BU9595(
         .D(BU9595_D),
         .Q(BU9595_Q),
         .CLK(BU9595_CLK)
      );

      wire [0 : 0] BU9602_D;
         assign BU9602_D[0] = n10928;
      wire [0 : 0] BU9602_Q;
         assign n10925 = BU9602_Q[0];
      wire BU9602_CLK;
         assign BU9602_CLK = n1088;
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
      BU9602(
         .D(BU9602_D),
         .Q(BU9602_Q),
         .CLK(BU9602_CLK)
      );

      wire [0 : 0] BU9609_D;
         assign BU9609_D[0] = n11060;
      wire [0 : 0] BU9609_Q;
         assign n11057 = BU9609_Q[0];
      wire BU9609_CLK;
         assign BU9609_CLK = n1088;
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
      BU9609(
         .D(BU9609_D),
         .Q(BU9609_Q),
         .CLK(BU9609_CLK)
      );

      wire [27 : 0] BU9625_A;
         assign BU9625_A[0] = n7431;
         assign BU9625_A[1] = n7430;
         assign BU9625_A[2] = n7429;
         assign BU9625_A[3] = n7428;
         assign BU9625_A[4] = n7427;
         assign BU9625_A[5] = n7426;
         assign BU9625_A[6] = n7425;
         assign BU9625_A[7] = n7424;
         assign BU9625_A[8] = n7423;
         assign BU9625_A[9] = n7422;
         assign BU9625_A[10] = n7421;
         assign BU9625_A[11] = n7420;
         assign BU9625_A[12] = n7419;
         assign BU9625_A[13] = n7418;
         assign BU9625_A[14] = n7417;
         assign BU9625_A[15] = n7416;
         assign BU9625_A[16] = n7415;
         assign BU9625_A[17] = n7414;
         assign BU9625_A[18] = n7413;
         assign BU9625_A[19] = n7412;
         assign BU9625_A[20] = n7411;
         assign BU9625_A[21] = n7410;
         assign BU9625_A[22] = n7409;
         assign BU9625_A[23] = n7408;
         assign BU9625_A[24] = n7407;
         assign BU9625_A[25] = n7406;
         assign BU9625_A[26] = n7405;
         assign BU9625_A[27] = n7404;
      wire [27 : 0] BU9625_B;
         assign BU9625_B[0] = n8648;
         assign BU9625_B[1] = n8647;
         assign BU9625_B[2] = n8646;
         assign BU9625_B[3] = n8645;
         assign BU9625_B[4] = n8644;
         assign BU9625_B[5] = n8643;
         assign BU9625_B[6] = n8642;
         assign BU9625_B[7] = n8641;
         assign BU9625_B[8] = n8640;
         assign BU9625_B[9] = n8639;
         assign BU9625_B[10] = n8638;
         assign BU9625_B[11] = n8637;
         assign BU9625_B[12] = n8636;
         assign BU9625_B[13] = n8636;
         assign BU9625_B[14] = n8636;
         assign BU9625_B[15] = n8636;
         assign BU9625_B[16] = n8636;
         assign BU9625_B[17] = n8636;
         assign BU9625_B[18] = n8636;
         assign BU9625_B[19] = n8636;
         assign BU9625_B[20] = n8636;
         assign BU9625_B[21] = n8636;
         assign BU9625_B[22] = n8636;
         assign BU9625_B[23] = n8636;
         assign BU9625_B[24] = n8636;
         assign BU9625_B[25] = n8636;
         assign BU9625_B[26] = n8636;
         assign BU9625_B[27] = n8636;
      wire BU9625_ADD;
         assign BU9625_ADD = n56376;
      wire [27 : 0] BU9625_Q;
         assign n7403 = BU9625_Q[0];
         assign n7402 = BU9625_Q[1];
         assign n7401 = BU9625_Q[2];
         assign n7400 = BU9625_Q[3];
         assign n7399 = BU9625_Q[4];
         assign n7398 = BU9625_Q[5];
         assign n7397 = BU9625_Q[6];
         assign n7396 = BU9625_Q[7];
         assign n7395 = BU9625_Q[8];
         assign n7394 = BU9625_Q[9];
         assign n7393 = BU9625_Q[10];
         assign n7392 = BU9625_Q[11];
         assign n7391 = BU9625_Q[12];
         assign n7390 = BU9625_Q[13];
         assign n7389 = BU9625_Q[14];
         assign n7388 = BU9625_Q[15];
         assign n7387 = BU9625_Q[16];
         assign n7386 = BU9625_Q[17];
         assign n7385 = BU9625_Q[18];
         assign n7384 = BU9625_Q[19];
         assign n7383 = BU9625_Q[20];
         assign n7382 = BU9625_Q[21];
         assign n7381 = BU9625_Q[22];
         assign n7380 = BU9625_Q[23];
         assign n7379 = BU9625_Q[24];
         assign n7378 = BU9625_Q[25];
         assign n7377 = BU9625_Q[26];
         assign n7376 = BU9625_Q[27];
      wire BU9625_CLK;
         assign BU9625_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU9625(
         .A(BU9625_A),
         .B(BU9625_B),
         .ADD(BU9625_ADD),
         .Q(BU9625_Q),
         .CLK(BU9625_CLK)
      );

      defparam BU9800.INIT = 'ha53c;
      wire BU9800_I0;
         assign BU9800_I0 = n8636;
      wire BU9800_I1;
         assign BU9800_I1 = n11058;
      wire BU9800_I2;
         assign BU9800_I2 = 1'b0;
      wire BU9800_I3;
         assign BU9800_I3 = n11057;
      wire BU9800_O;
         assign n56376 = BU9800_O;
      LUT4       BU9800(
         .I0(BU9800_I0),
         .I1(BU9800_I1),
         .I2(BU9800_I2),
         .I3(BU9800_I3),
         .O(BU9800_O)
      );

      wire [27 : 0] BU9805_A;
         assign BU9805_A[0] = n8663;
         assign BU9805_A[1] = n8662;
         assign BU9805_A[2] = n8661;
         assign BU9805_A[3] = n8660;
         assign BU9805_A[4] = n8659;
         assign BU9805_A[5] = n8658;
         assign BU9805_A[6] = n8657;
         assign BU9805_A[7] = n8656;
         assign BU9805_A[8] = n8655;
         assign BU9805_A[9] = n8654;
         assign BU9805_A[10] = n8653;
         assign BU9805_A[11] = n8652;
         assign BU9805_A[12] = n8651;
         assign BU9805_A[13] = n8650;
         assign BU9805_A[14] = n8649;
         assign BU9805_A[15] = n8648;
         assign BU9805_A[16] = n8647;
         assign BU9805_A[17] = n8646;
         assign BU9805_A[18] = n8645;
         assign BU9805_A[19] = n8644;
         assign BU9805_A[20] = n8643;
         assign BU9805_A[21] = n8642;
         assign BU9805_A[22] = n8641;
         assign BU9805_A[23] = n8640;
         assign BU9805_A[24] = n8639;
         assign BU9805_A[25] = n8638;
         assign BU9805_A[26] = n8637;
         assign BU9805_A[27] = n8636;
      wire [27 : 0] BU9805_B;
         assign BU9805_B[0] = n7416;
         assign BU9805_B[1] = n7415;
         assign BU9805_B[2] = n7414;
         assign BU9805_B[3] = n7413;
         assign BU9805_B[4] = n7412;
         assign BU9805_B[5] = n7411;
         assign BU9805_B[6] = n7410;
         assign BU9805_B[7] = n7409;
         assign BU9805_B[8] = n7408;
         assign BU9805_B[9] = n7407;
         assign BU9805_B[10] = n7406;
         assign BU9805_B[11] = n7405;
         assign BU9805_B[12] = n7404;
         assign BU9805_B[13] = n7404;
         assign BU9805_B[14] = n7404;
         assign BU9805_B[15] = n7404;
         assign BU9805_B[16] = n7404;
         assign BU9805_B[17] = n7404;
         assign BU9805_B[18] = n7404;
         assign BU9805_B[19] = n7404;
         assign BU9805_B[20] = n7404;
         assign BU9805_B[21] = n7404;
         assign BU9805_B[22] = n7404;
         assign BU9805_B[23] = n7404;
         assign BU9805_B[24] = n7404;
         assign BU9805_B[25] = n7404;
         assign BU9805_B[26] = n7404;
         assign BU9805_B[27] = n7404;
      wire BU9805_ADD;
         assign BU9805_ADD = n56377;
      wire [27 : 0] BU9805_Q;
         assign n8635 = BU9805_Q[0];
         assign n8634 = BU9805_Q[1];
         assign n8633 = BU9805_Q[2];
         assign n8632 = BU9805_Q[3];
         assign n8631 = BU9805_Q[4];
         assign n8630 = BU9805_Q[5];
         assign n8629 = BU9805_Q[6];
         assign n8628 = BU9805_Q[7];
         assign n8627 = BU9805_Q[8];
         assign n8626 = BU9805_Q[9];
         assign n8625 = BU9805_Q[10];
         assign n8624 = BU9805_Q[11];
         assign n8623 = BU9805_Q[12];
         assign n8622 = BU9805_Q[13];
         assign n8621 = BU9805_Q[14];
         assign n8620 = BU9805_Q[15];
         assign n8619 = BU9805_Q[16];
         assign n8618 = BU9805_Q[17];
         assign n8617 = BU9805_Q[18];
         assign n8616 = BU9805_Q[19];
         assign n8615 = BU9805_Q[20];
         assign n8614 = BU9805_Q[21];
         assign n8613 = BU9805_Q[22];
         assign n8612 = BU9805_Q[23];
         assign n8611 = BU9805_Q[24];
         assign n8610 = BU9805_Q[25];
         assign n8609 = BU9805_Q[26];
         assign n8608 = BU9805_Q[27];
      wire BU9805_CLK;
         assign BU9805_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU9805(
         .A(BU9805_A),
         .B(BU9805_B),
         .ADD(BU9805_ADD),
         .Q(BU9805_Q),
         .CLK(BU9805_CLK)
      );

      defparam BU9980.INIT = 'ha3a3;
      wire BU9980_I0;
         assign BU9980_I0 = n8636;
      wire BU9980_I1;
         assign BU9980_I1 = n11058;
      wire BU9980_I2;
         assign BU9980_I2 = n11057;
      wire BU9980_I3;
         assign BU9980_I3 = 1'b0;
      wire BU9980_O;
         assign n56377 = BU9980_O;
      LUT4       BU9980(
         .I0(BU9980_I0),
         .I1(BU9980_I1),
         .I2(BU9980_I2),
         .I3(BU9980_I3),
         .O(BU9980_O)
      );

      wire [27 : 0] BU9987_A;
         assign BU9987_A[0] = n9895;
         assign BU9987_A[1] = n9894;
         assign BU9987_A[2] = n9893;
         assign BU9987_A[3] = n9892;
         assign BU9987_A[4] = n9891;
         assign BU9987_A[5] = n9890;
         assign BU9987_A[6] = n9889;
         assign BU9987_A[7] = n9888;
         assign BU9987_A[8] = n9887;
         assign BU9987_A[9] = n9886;
         assign BU9987_A[10] = n9885;
         assign BU9987_A[11] = n9884;
         assign BU9987_A[12] = n9883;
         assign BU9987_A[13] = n9882;
         assign BU9987_A[14] = n9881;
         assign BU9987_A[15] = n9880;
         assign BU9987_A[16] = n9879;
         assign BU9987_A[17] = n9878;
         assign BU9987_A[18] = n9877;
         assign BU9987_A[19] = n9876;
         assign BU9987_A[20] = n9875;
         assign BU9987_A[21] = n9874;
         assign BU9987_A[22] = n9873;
         assign BU9987_A[23] = n9872;
         assign BU9987_A[24] = n9871;
         assign BU9987_A[25] = n9870;
         assign BU9987_A[26] = n9869;
         assign BU9987_A[27] = n9868;
      wire [27 : 0] BU9987_B;
         assign BU9987_B[0] = 1'b0;
         assign BU9987_B[1] = 1'b1;
         assign BU9987_B[2] = 1'b1;
         assign BU9987_B[3] = 1'b0;
         assign BU9987_B[4] = 1'b0;
         assign BU9987_B[5] = 1'b0;
         assign BU9987_B[6] = 1'b1;
         assign BU9987_B[7] = 1'b0;
         assign BU9987_B[8] = 1'b1;
         assign BU9987_B[9] = 1'b0;
         assign BU9987_B[10] = 1'b0;
         assign BU9987_B[11] = 1'b0;
         assign BU9987_B[12] = 1'b0;
         assign BU9987_B[13] = 1'b0;
         assign BU9987_B[14] = 1'b0;
         assign BU9987_B[15] = 1'b0;
         assign BU9987_B[16] = 1'b0;
         assign BU9987_B[17] = 1'b0;
         assign BU9987_B[18] = 1'b0;
         assign BU9987_B[19] = 1'b0;
         assign BU9987_B[20] = 1'b0;
         assign BU9987_B[21] = 1'b0;
         assign BU9987_B[22] = 1'b0;
         assign BU9987_B[23] = 1'b0;
         assign BU9987_B[24] = 1'b0;
         assign BU9987_B[25] = 1'b0;
         assign BU9987_B[26] = 1'b0;
         assign BU9987_B[27] = 1'b0;
      wire BU9987_ADD;
         assign BU9987_ADD = n58146;
      wire [27 : 0] BU9987_S;
         assign n58117 = BU9987_S[27];
      wire [27 : 0] BU9987_Q;
         assign n9867 = BU9987_Q[0];
         assign n9866 = BU9987_Q[1];
         assign n9865 = BU9987_Q[2];
         assign n9864 = BU9987_Q[3];
         assign n9863 = BU9987_Q[4];
         assign n9862 = BU9987_Q[5];
         assign n9861 = BU9987_Q[6];
         assign n9860 = BU9987_Q[7];
         assign n9859 = BU9987_Q[8];
         assign n9858 = BU9987_Q[9];
         assign n9857 = BU9987_Q[10];
         assign n9856 = BU9987_Q[11];
         assign n9855 = BU9987_Q[12];
         assign n9854 = BU9987_Q[13];
         assign n9853 = BU9987_Q[14];
         assign n9852 = BU9987_Q[15];
         assign n9851 = BU9987_Q[16];
         assign n9850 = BU9987_Q[17];
         assign n9849 = BU9987_Q[18];
         assign n9848 = BU9987_Q[19];
         assign n9847 = BU9987_Q[20];
         assign n9846 = BU9987_Q[21];
         assign n9845 = BU9987_Q[22];
         assign n9844 = BU9987_Q[23];
         assign n9843 = BU9987_Q[24];
         assign n9842 = BU9987_Q[25];
         assign n9841 = BU9987_Q[26];
         assign n9840 = BU9987_Q[27];
      wire BU9987_CLK;
         assign BU9987_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU9987(
         .A(BU9987_A),
         .B(BU9987_B),
         .ADD(BU9987_ADD),
         .S(BU9987_S),
         .Q(BU9987_Q),
         .CLK(BU9987_CLK)
      );

      defparam BU10162.INIT = 'h5c5c;
      wire BU10162_I0;
         assign BU10162_I0 = n8636;
      wire BU10162_I1;
         assign BU10162_I1 = n11058;
      wire BU10162_I2;
         assign BU10162_I2 = n11057;
      wire BU10162_I3;
         assign BU10162_I3 = 1'b0;
      wire BU10162_O;
         assign n58146 = BU10162_O;
      LUT4       BU10162(
         .I0(BU10162_I0),
         .I1(BU10162_I1),
         .I2(BU10162_I2),
         .I3(BU10162_I3),
         .O(BU10162_O)
      );

      wire [0 : 0] BU10167_D;
         assign BU10167_D[0] = n58117;
      wire [0 : 0] BU10167_Q;
         assign n11055 = BU10167_Q[0];
      wire BU10167_CLK;
         assign BU10167_CLK = n1088;
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
      BU10167(
         .D(BU10167_D),
         .Q(BU10167_Q),
         .CLK(BU10167_CLK)
      );

      wire [0 : 0] BU10176_D;
         assign BU10176_D[0] = n10927;
      wire [0 : 0] BU10176_Q;
         assign n10924 = BU10176_Q[0];
      wire BU10176_CLK;
         assign BU10176_CLK = n1088;
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
      BU10176(
         .D(BU10176_D),
         .Q(BU10176_Q),
         .CLK(BU10176_CLK)
      );

      wire [0 : 0] BU10183_D;
         assign BU10183_D[0] = n10926;
      wire [0 : 0] BU10183_Q;
         assign n10923 = BU10183_Q[0];
      wire BU10183_CLK;
         assign BU10183_CLK = n1088;
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
      BU10183(
         .D(BU10183_D),
         .Q(BU10183_Q),
         .CLK(BU10183_CLK)
      );

      wire [0 : 0] BU10190_D;
         assign BU10190_D[0] = n10925;
      wire [0 : 0] BU10190_Q;
         assign n10922 = BU10190_Q[0];
      wire BU10190_CLK;
         assign BU10190_CLK = n1088;
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
      BU10190(
         .D(BU10190_D),
         .Q(BU10190_Q),
         .CLK(BU10190_CLK)
      );

      wire [0 : 0] BU10197_D;
         assign BU10197_D[0] = n11057;
      wire [0 : 0] BU10197_Q;
         assign n11054 = BU10197_Q[0];
      wire BU10197_CLK;
         assign BU10197_CLK = n1088;
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
      BU10197(
         .D(BU10197_D),
         .Q(BU10197_Q),
         .CLK(BU10197_CLK)
      );

      wire [27 : 0] BU10213_A;
         assign BU10213_A[0] = n7403;
         assign BU10213_A[1] = n7402;
         assign BU10213_A[2] = n7401;
         assign BU10213_A[3] = n7400;
         assign BU10213_A[4] = n7399;
         assign BU10213_A[5] = n7398;
         assign BU10213_A[6] = n7397;
         assign BU10213_A[7] = n7396;
         assign BU10213_A[8] = n7395;
         assign BU10213_A[9] = n7394;
         assign BU10213_A[10] = n7393;
         assign BU10213_A[11] = n7392;
         assign BU10213_A[12] = n7391;
         assign BU10213_A[13] = n7390;
         assign BU10213_A[14] = n7389;
         assign BU10213_A[15] = n7388;
         assign BU10213_A[16] = n7387;
         assign BU10213_A[17] = n7386;
         assign BU10213_A[18] = n7385;
         assign BU10213_A[19] = n7384;
         assign BU10213_A[20] = n7383;
         assign BU10213_A[21] = n7382;
         assign BU10213_A[22] = n7381;
         assign BU10213_A[23] = n7380;
         assign BU10213_A[24] = n7379;
         assign BU10213_A[25] = n7378;
         assign BU10213_A[26] = n7377;
         assign BU10213_A[27] = n7376;
      wire [27 : 0] BU10213_B;
         assign BU10213_B[0] = n8619;
         assign BU10213_B[1] = n8618;
         assign BU10213_B[2] = n8617;
         assign BU10213_B[3] = n8616;
         assign BU10213_B[4] = n8615;
         assign BU10213_B[5] = n8614;
         assign BU10213_B[6] = n8613;
         assign BU10213_B[7] = n8612;
         assign BU10213_B[8] = n8611;
         assign BU10213_B[9] = n8610;
         assign BU10213_B[10] = n8609;
         assign BU10213_B[11] = n8608;
         assign BU10213_B[12] = n8608;
         assign BU10213_B[13] = n8608;
         assign BU10213_B[14] = n8608;
         assign BU10213_B[15] = n8608;
         assign BU10213_B[16] = n8608;
         assign BU10213_B[17] = n8608;
         assign BU10213_B[18] = n8608;
         assign BU10213_B[19] = n8608;
         assign BU10213_B[20] = n8608;
         assign BU10213_B[21] = n8608;
         assign BU10213_B[22] = n8608;
         assign BU10213_B[23] = n8608;
         assign BU10213_B[24] = n8608;
         assign BU10213_B[25] = n8608;
         assign BU10213_B[26] = n8608;
         assign BU10213_B[27] = n8608;
      wire BU10213_ADD;
         assign BU10213_ADD = n59556;
      wire [27 : 0] BU10213_Q;
         assign n7375 = BU10213_Q[0];
         assign n7374 = BU10213_Q[1];
         assign n7373 = BU10213_Q[2];
         assign n7372 = BU10213_Q[3];
         assign n7371 = BU10213_Q[4];
         assign n7370 = BU10213_Q[5];
         assign n7369 = BU10213_Q[6];
         assign n7368 = BU10213_Q[7];
         assign n7367 = BU10213_Q[8];
         assign n7366 = BU10213_Q[9];
         assign n7365 = BU10213_Q[10];
         assign n7364 = BU10213_Q[11];
         assign n7363 = BU10213_Q[12];
         assign n7362 = BU10213_Q[13];
         assign n7361 = BU10213_Q[14];
         assign n7360 = BU10213_Q[15];
         assign n7359 = BU10213_Q[16];
         assign n7358 = BU10213_Q[17];
         assign n7357 = BU10213_Q[18];
         assign n7356 = BU10213_Q[19];
         assign n7355 = BU10213_Q[20];
         assign n7354 = BU10213_Q[21];
         assign n7353 = BU10213_Q[22];
         assign n7352 = BU10213_Q[23];
         assign n7351 = BU10213_Q[24];
         assign n7350 = BU10213_Q[25];
         assign n7349 = BU10213_Q[26];
         assign n7348 = BU10213_Q[27];
      wire BU10213_CLK;
         assign BU10213_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU10213(
         .A(BU10213_A),
         .B(BU10213_B),
         .ADD(BU10213_ADD),
         .Q(BU10213_Q),
         .CLK(BU10213_CLK)
      );

      defparam BU10388.INIT = 'ha53c;
      wire BU10388_I0;
         assign BU10388_I0 = n8608;
      wire BU10388_I1;
         assign BU10388_I1 = n11055;
      wire BU10388_I2;
         assign BU10388_I2 = 1'b0;
      wire BU10388_I3;
         assign BU10388_I3 = n11054;
      wire BU10388_O;
         assign n59556 = BU10388_O;
      LUT4       BU10388(
         .I0(BU10388_I0),
         .I1(BU10388_I1),
         .I2(BU10388_I2),
         .I3(BU10388_I3),
         .O(BU10388_O)
      );

      wire [27 : 0] BU10393_A;
         assign BU10393_A[0] = n8635;
         assign BU10393_A[1] = n8634;
         assign BU10393_A[2] = n8633;
         assign BU10393_A[3] = n8632;
         assign BU10393_A[4] = n8631;
         assign BU10393_A[5] = n8630;
         assign BU10393_A[6] = n8629;
         assign BU10393_A[7] = n8628;
         assign BU10393_A[8] = n8627;
         assign BU10393_A[9] = n8626;
         assign BU10393_A[10] = n8625;
         assign BU10393_A[11] = n8624;
         assign BU10393_A[12] = n8623;
         assign BU10393_A[13] = n8622;
         assign BU10393_A[14] = n8621;
         assign BU10393_A[15] = n8620;
         assign BU10393_A[16] = n8619;
         assign BU10393_A[17] = n8618;
         assign BU10393_A[18] = n8617;
         assign BU10393_A[19] = n8616;
         assign BU10393_A[20] = n8615;
         assign BU10393_A[21] = n8614;
         assign BU10393_A[22] = n8613;
         assign BU10393_A[23] = n8612;
         assign BU10393_A[24] = n8611;
         assign BU10393_A[25] = n8610;
         assign BU10393_A[26] = n8609;
         assign BU10393_A[27] = n8608;
      wire [27 : 0] BU10393_B;
         assign BU10393_B[0] = n7387;
         assign BU10393_B[1] = n7386;
         assign BU10393_B[2] = n7385;
         assign BU10393_B[3] = n7384;
         assign BU10393_B[4] = n7383;
         assign BU10393_B[5] = n7382;
         assign BU10393_B[6] = n7381;
         assign BU10393_B[7] = n7380;
         assign BU10393_B[8] = n7379;
         assign BU10393_B[9] = n7378;
         assign BU10393_B[10] = n7377;
         assign BU10393_B[11] = n7376;
         assign BU10393_B[12] = n7376;
         assign BU10393_B[13] = n7376;
         assign BU10393_B[14] = n7376;
         assign BU10393_B[15] = n7376;
         assign BU10393_B[16] = n7376;
         assign BU10393_B[17] = n7376;
         assign BU10393_B[18] = n7376;
         assign BU10393_B[19] = n7376;
         assign BU10393_B[20] = n7376;
         assign BU10393_B[21] = n7376;
         assign BU10393_B[22] = n7376;
         assign BU10393_B[23] = n7376;
         assign BU10393_B[24] = n7376;
         assign BU10393_B[25] = n7376;
         assign BU10393_B[26] = n7376;
         assign BU10393_B[27] = n7376;
      wire BU10393_ADD;
         assign BU10393_ADD = n59557;
      wire [27 : 0] BU10393_Q;
         assign n8607 = BU10393_Q[0];
         assign n8606 = BU10393_Q[1];
         assign n8605 = BU10393_Q[2];
         assign n8604 = BU10393_Q[3];
         assign n8603 = BU10393_Q[4];
         assign n8602 = BU10393_Q[5];
         assign n8601 = BU10393_Q[6];
         assign n8600 = BU10393_Q[7];
         assign n8599 = BU10393_Q[8];
         assign n8598 = BU10393_Q[9];
         assign n8597 = BU10393_Q[10];
         assign n8596 = BU10393_Q[11];
         assign n8595 = BU10393_Q[12];
         assign n8594 = BU10393_Q[13];
         assign n8593 = BU10393_Q[14];
         assign n8592 = BU10393_Q[15];
         assign n8591 = BU10393_Q[16];
         assign n8590 = BU10393_Q[17];
         assign n8589 = BU10393_Q[18];
         assign n8588 = BU10393_Q[19];
         assign n8587 = BU10393_Q[20];
         assign n8586 = BU10393_Q[21];
         assign n8585 = BU10393_Q[22];
         assign n8584 = BU10393_Q[23];
         assign n8583 = BU10393_Q[24];
         assign n8582 = BU10393_Q[25];
         assign n8581 = BU10393_Q[26];
         assign n8580 = BU10393_Q[27];
      wire BU10393_CLK;
         assign BU10393_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU10393(
         .A(BU10393_A),
         .B(BU10393_B),
         .ADD(BU10393_ADD),
         .Q(BU10393_Q),
         .CLK(BU10393_CLK)
      );

      defparam BU10568.INIT = 'ha3a3;
      wire BU10568_I0;
         assign BU10568_I0 = n8608;
      wire BU10568_I1;
         assign BU10568_I1 = n11055;
      wire BU10568_I2;
         assign BU10568_I2 = n11054;
      wire BU10568_I3;
         assign BU10568_I3 = 1'b0;
      wire BU10568_O;
         assign n59557 = BU10568_O;
      LUT4       BU10568(
         .I0(BU10568_I0),
         .I1(BU10568_I1),
         .I2(BU10568_I2),
         .I3(BU10568_I3),
         .O(BU10568_O)
      );

      wire [27 : 0] BU10575_A;
         assign BU10575_A[0] = n9867;
         assign BU10575_A[1] = n9866;
         assign BU10575_A[2] = n9865;
         assign BU10575_A[3] = n9864;
         assign BU10575_A[4] = n9863;
         assign BU10575_A[5] = n9862;
         assign BU10575_A[6] = n9861;
         assign BU10575_A[7] = n9860;
         assign BU10575_A[8] = n9859;
         assign BU10575_A[9] = n9858;
         assign BU10575_A[10] = n9857;
         assign BU10575_A[11] = n9856;
         assign BU10575_A[12] = n9855;
         assign BU10575_A[13] = n9854;
         assign BU10575_A[14] = n9853;
         assign BU10575_A[15] = n9852;
         assign BU10575_A[16] = n9851;
         assign BU10575_A[17] = n9850;
         assign BU10575_A[18] = n9849;
         assign BU10575_A[19] = n9848;
         assign BU10575_A[20] = n9847;
         assign BU10575_A[21] = n9846;
         assign BU10575_A[22] = n9845;
         assign BU10575_A[23] = n9844;
         assign BU10575_A[24] = n9843;
         assign BU10575_A[25] = n9842;
         assign BU10575_A[26] = n9841;
         assign BU10575_A[27] = n9840;
      wire [27 : 0] BU10575_B;
         assign BU10575_B[0] = 1'b1;
         assign BU10575_B[1] = 1'b1;
         assign BU10575_B[2] = 1'b0;
         assign BU10575_B[3] = 1'b0;
         assign BU10575_B[4] = 1'b0;
         assign BU10575_B[5] = 1'b1;
         assign BU10575_B[6] = 1'b0;
         assign BU10575_B[7] = 1'b1;
         assign BU10575_B[8] = 1'b0;
         assign BU10575_B[9] = 1'b0;
         assign BU10575_B[10] = 1'b0;
         assign BU10575_B[11] = 1'b0;
         assign BU10575_B[12] = 1'b0;
         assign BU10575_B[13] = 1'b0;
         assign BU10575_B[14] = 1'b0;
         assign BU10575_B[15] = 1'b0;
         assign BU10575_B[16] = 1'b0;
         assign BU10575_B[17] = 1'b0;
         assign BU10575_B[18] = 1'b0;
         assign BU10575_B[19] = 1'b0;
         assign BU10575_B[20] = 1'b0;
         assign BU10575_B[21] = 1'b0;
         assign BU10575_B[22] = 1'b0;
         assign BU10575_B[23] = 1'b0;
         assign BU10575_B[24] = 1'b0;
         assign BU10575_B[25] = 1'b0;
         assign BU10575_B[26] = 1'b0;
         assign BU10575_B[27] = 1'b0;
      wire BU10575_ADD;
         assign BU10575_ADD = n61326;
      wire [27 : 0] BU10575_S;
         assign n61297 = BU10575_S[27];
      wire [27 : 0] BU10575_Q;
         assign n9839 = BU10575_Q[0];
         assign n9838 = BU10575_Q[1];
         assign n9837 = BU10575_Q[2];
         assign n9836 = BU10575_Q[3];
         assign n9835 = BU10575_Q[4];
         assign n9834 = BU10575_Q[5];
         assign n9833 = BU10575_Q[6];
         assign n9832 = BU10575_Q[7];
         assign n9831 = BU10575_Q[8];
         assign n9830 = BU10575_Q[9];
         assign n9829 = BU10575_Q[10];
         assign n9828 = BU10575_Q[11];
         assign n9827 = BU10575_Q[12];
         assign n9826 = BU10575_Q[13];
         assign n9825 = BU10575_Q[14];
         assign n9824 = BU10575_Q[15];
         assign n9823 = BU10575_Q[16];
         assign n9822 = BU10575_Q[17];
         assign n9821 = BU10575_Q[18];
         assign n9820 = BU10575_Q[19];
         assign n9819 = BU10575_Q[20];
         assign n9818 = BU10575_Q[21];
         assign n9817 = BU10575_Q[22];
         assign n9816 = BU10575_Q[23];
         assign n9815 = BU10575_Q[24];
         assign n9814 = BU10575_Q[25];
         assign n9813 = BU10575_Q[26];
         assign n9812 = BU10575_Q[27];
      wire BU10575_CLK;
         assign BU10575_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU10575(
         .A(BU10575_A),
         .B(BU10575_B),
         .ADD(BU10575_ADD),
         .S(BU10575_S),
         .Q(BU10575_Q),
         .CLK(BU10575_CLK)
      );

      defparam BU10750.INIT = 'h5c5c;
      wire BU10750_I0;
         assign BU10750_I0 = n8608;
      wire BU10750_I1;
         assign BU10750_I1 = n11055;
      wire BU10750_I2;
         assign BU10750_I2 = n11054;
      wire BU10750_I3;
         assign BU10750_I3 = 1'b0;
      wire BU10750_O;
         assign n61326 = BU10750_O;
      LUT4       BU10750(
         .I0(BU10750_I0),
         .I1(BU10750_I1),
         .I2(BU10750_I2),
         .I3(BU10750_I3),
         .O(BU10750_O)
      );

      wire [0 : 0] BU10755_D;
         assign BU10755_D[0] = n61297;
      wire [0 : 0] BU10755_Q;
         assign n11052 = BU10755_Q[0];
      wire BU10755_CLK;
         assign BU10755_CLK = n1088;
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
      BU10755(
         .D(BU10755_D),
         .Q(BU10755_Q),
         .CLK(BU10755_CLK)
      );

      wire [0 : 0] BU10764_D;
         assign BU10764_D[0] = n10924;
      wire [0 : 0] BU10764_Q;
         assign n10921 = BU10764_Q[0];
      wire BU10764_CLK;
         assign BU10764_CLK = n1088;
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
      BU10764(
         .D(BU10764_D),
         .Q(BU10764_Q),
         .CLK(BU10764_CLK)
      );

      wire [0 : 0] BU10771_D;
         assign BU10771_D[0] = n10923;
      wire [0 : 0] BU10771_Q;
         assign n10920 = BU10771_Q[0];
      wire BU10771_CLK;
         assign BU10771_CLK = n1088;
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
      BU10771(
         .D(BU10771_D),
         .Q(BU10771_Q),
         .CLK(BU10771_CLK)
      );

      wire [0 : 0] BU10778_D;
         assign BU10778_D[0] = n10922;
      wire [0 : 0] BU10778_Q;
         assign n10919 = BU10778_Q[0];
      wire BU10778_CLK;
         assign BU10778_CLK = n1088;
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
      BU10778(
         .D(BU10778_D),
         .Q(BU10778_Q),
         .CLK(BU10778_CLK)
      );

      wire [0 : 0] BU10785_D;
         assign BU10785_D[0] = n11054;
      wire [0 : 0] BU10785_Q;
         assign n11051 = BU10785_Q[0];
      wire BU10785_CLK;
         assign BU10785_CLK = n1088;
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
      BU10785(
         .D(BU10785_D),
         .Q(BU10785_Q),
         .CLK(BU10785_CLK)
      );

      wire [27 : 0] BU10801_A;
         assign BU10801_A[0] = n7375;
         assign BU10801_A[1] = n7374;
         assign BU10801_A[2] = n7373;
         assign BU10801_A[3] = n7372;
         assign BU10801_A[4] = n7371;
         assign BU10801_A[5] = n7370;
         assign BU10801_A[6] = n7369;
         assign BU10801_A[7] = n7368;
         assign BU10801_A[8] = n7367;
         assign BU10801_A[9] = n7366;
         assign BU10801_A[10] = n7365;
         assign BU10801_A[11] = n7364;
         assign BU10801_A[12] = n7363;
         assign BU10801_A[13] = n7362;
         assign BU10801_A[14] = n7361;
         assign BU10801_A[15] = n7360;
         assign BU10801_A[16] = n7359;
         assign BU10801_A[17] = n7358;
         assign BU10801_A[18] = n7357;
         assign BU10801_A[19] = n7356;
         assign BU10801_A[20] = n7355;
         assign BU10801_A[21] = n7354;
         assign BU10801_A[22] = n7353;
         assign BU10801_A[23] = n7352;
         assign BU10801_A[24] = n7351;
         assign BU10801_A[25] = n7350;
         assign BU10801_A[26] = n7349;
         assign BU10801_A[27] = n7348;
      wire [27 : 0] BU10801_B;
         assign BU10801_B[0] = n8590;
         assign BU10801_B[1] = n8589;
         assign BU10801_B[2] = n8588;
         assign BU10801_B[3] = n8587;
         assign BU10801_B[4] = n8586;
         assign BU10801_B[5] = n8585;
         assign BU10801_B[6] = n8584;
         assign BU10801_B[7] = n8583;
         assign BU10801_B[8] = n8582;
         assign BU10801_B[9] = n8581;
         assign BU10801_B[10] = n8580;
         assign BU10801_B[11] = n8580;
         assign BU10801_B[12] = n8580;
         assign BU10801_B[13] = n8580;
         assign BU10801_B[14] = n8580;
         assign BU10801_B[15] = n8580;
         assign BU10801_B[16] = n8580;
         assign BU10801_B[17] = n8580;
         assign BU10801_B[18] = n8580;
         assign BU10801_B[19] = n8580;
         assign BU10801_B[20] = n8580;
         assign BU10801_B[21] = n8580;
         assign BU10801_B[22] = n8580;
         assign BU10801_B[23] = n8580;
         assign BU10801_B[24] = n8580;
         assign BU10801_B[25] = n8580;
         assign BU10801_B[26] = n8580;
         assign BU10801_B[27] = n8580;
      wire BU10801_ADD;
         assign BU10801_ADD = n62736;
      wire [27 : 0] BU10801_Q;
         assign n7347 = BU10801_Q[0];
         assign n7346 = BU10801_Q[1];
         assign n7345 = BU10801_Q[2];
         assign n7344 = BU10801_Q[3];
         assign n7343 = BU10801_Q[4];
         assign n7342 = BU10801_Q[5];
         assign n7341 = BU10801_Q[6];
         assign n7340 = BU10801_Q[7];
         assign n7339 = BU10801_Q[8];
         assign n7338 = BU10801_Q[9];
         assign n7337 = BU10801_Q[10];
         assign n7336 = BU10801_Q[11];
         assign n7335 = BU10801_Q[12];
         assign n7334 = BU10801_Q[13];
         assign n7333 = BU10801_Q[14];
         assign n7332 = BU10801_Q[15];
         assign n7331 = BU10801_Q[16];
         assign n7330 = BU10801_Q[17];
         assign n7329 = BU10801_Q[18];
         assign n7328 = BU10801_Q[19];
         assign n7327 = BU10801_Q[20];
         assign n7326 = BU10801_Q[21];
         assign n7325 = BU10801_Q[22];
         assign n7324 = BU10801_Q[23];
         assign n7323 = BU10801_Q[24];
         assign n7322 = BU10801_Q[25];
         assign n7321 = BU10801_Q[26];
         assign n7320 = BU10801_Q[27];
      wire BU10801_CLK;
         assign BU10801_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU10801(
         .A(BU10801_A),
         .B(BU10801_B),
         .ADD(BU10801_ADD),
         .Q(BU10801_Q),
         .CLK(BU10801_CLK)
      );

      defparam BU10976.INIT = 'ha53c;
      wire BU10976_I0;
         assign BU10976_I0 = n8580;
      wire BU10976_I1;
         assign BU10976_I1 = n11052;
      wire BU10976_I2;
         assign BU10976_I2 = 1'b0;
      wire BU10976_I3;
         assign BU10976_I3 = n11051;
      wire BU10976_O;
         assign n62736 = BU10976_O;
      LUT4       BU10976(
         .I0(BU10976_I0),
         .I1(BU10976_I1),
         .I2(BU10976_I2),
         .I3(BU10976_I3),
         .O(BU10976_O)
      );

      wire [27 : 0] BU10981_A;
         assign BU10981_A[0] = n8607;
         assign BU10981_A[1] = n8606;
         assign BU10981_A[2] = n8605;
         assign BU10981_A[3] = n8604;
         assign BU10981_A[4] = n8603;
         assign BU10981_A[5] = n8602;
         assign BU10981_A[6] = n8601;
         assign BU10981_A[7] = n8600;
         assign BU10981_A[8] = n8599;
         assign BU10981_A[9] = n8598;
         assign BU10981_A[10] = n8597;
         assign BU10981_A[11] = n8596;
         assign BU10981_A[12] = n8595;
         assign BU10981_A[13] = n8594;
         assign BU10981_A[14] = n8593;
         assign BU10981_A[15] = n8592;
         assign BU10981_A[16] = n8591;
         assign BU10981_A[17] = n8590;
         assign BU10981_A[18] = n8589;
         assign BU10981_A[19] = n8588;
         assign BU10981_A[20] = n8587;
         assign BU10981_A[21] = n8586;
         assign BU10981_A[22] = n8585;
         assign BU10981_A[23] = n8584;
         assign BU10981_A[24] = n8583;
         assign BU10981_A[25] = n8582;
         assign BU10981_A[26] = n8581;
         assign BU10981_A[27] = n8580;
      wire [27 : 0] BU10981_B;
         assign BU10981_B[0] = n7358;
         assign BU10981_B[1] = n7357;
         assign BU10981_B[2] = n7356;
         assign BU10981_B[3] = n7355;
         assign BU10981_B[4] = n7354;
         assign BU10981_B[5] = n7353;
         assign BU10981_B[6] = n7352;
         assign BU10981_B[7] = n7351;
         assign BU10981_B[8] = n7350;
         assign BU10981_B[9] = n7349;
         assign BU10981_B[10] = n7348;
         assign BU10981_B[11] = n7348;
         assign BU10981_B[12] = n7348;
         assign BU10981_B[13] = n7348;
         assign BU10981_B[14] = n7348;
         assign BU10981_B[15] = n7348;
         assign BU10981_B[16] = n7348;
         assign BU10981_B[17] = n7348;
         assign BU10981_B[18] = n7348;
         assign BU10981_B[19] = n7348;
         assign BU10981_B[20] = n7348;
         assign BU10981_B[21] = n7348;
         assign BU10981_B[22] = n7348;
         assign BU10981_B[23] = n7348;
         assign BU10981_B[24] = n7348;
         assign BU10981_B[25] = n7348;
         assign BU10981_B[26] = n7348;
         assign BU10981_B[27] = n7348;
      wire BU10981_ADD;
         assign BU10981_ADD = n62737;
      wire [27 : 0] BU10981_Q;
         assign n8579 = BU10981_Q[0];
         assign n8578 = BU10981_Q[1];
         assign n8577 = BU10981_Q[2];
         assign n8576 = BU10981_Q[3];
         assign n8575 = BU10981_Q[4];
         assign n8574 = BU10981_Q[5];
         assign n8573 = BU10981_Q[6];
         assign n8572 = BU10981_Q[7];
         assign n8571 = BU10981_Q[8];
         assign n8570 = BU10981_Q[9];
         assign n8569 = BU10981_Q[10];
         assign n8568 = BU10981_Q[11];
         assign n8567 = BU10981_Q[12];
         assign n8566 = BU10981_Q[13];
         assign n8565 = BU10981_Q[14];
         assign n8564 = BU10981_Q[15];
         assign n8563 = BU10981_Q[16];
         assign n8562 = BU10981_Q[17];
         assign n8561 = BU10981_Q[18];
         assign n8560 = BU10981_Q[19];
         assign n8559 = BU10981_Q[20];
         assign n8558 = BU10981_Q[21];
         assign n8557 = BU10981_Q[22];
         assign n8556 = BU10981_Q[23];
         assign n8555 = BU10981_Q[24];
         assign n8554 = BU10981_Q[25];
         assign n8553 = BU10981_Q[26];
         assign n8552 = BU10981_Q[27];
      wire BU10981_CLK;
         assign BU10981_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU10981(
         .A(BU10981_A),
         .B(BU10981_B),
         .ADD(BU10981_ADD),
         .Q(BU10981_Q),
         .CLK(BU10981_CLK)
      );

      defparam BU11156.INIT = 'ha3a3;
      wire BU11156_I0;
         assign BU11156_I0 = n8580;
      wire BU11156_I1;
         assign BU11156_I1 = n11052;
      wire BU11156_I2;
         assign BU11156_I2 = n11051;
      wire BU11156_I3;
         assign BU11156_I3 = 1'b0;
      wire BU11156_O;
         assign n62737 = BU11156_O;
      LUT4       BU11156(
         .I0(BU11156_I0),
         .I1(BU11156_I1),
         .I2(BU11156_I2),
         .I3(BU11156_I3),
         .O(BU11156_O)
      );

      wire [27 : 0] BU11163_A;
         assign BU11163_A[0] = n9839;
         assign BU11163_A[1] = n9838;
         assign BU11163_A[2] = n9837;
         assign BU11163_A[3] = n9836;
         assign BU11163_A[4] = n9835;
         assign BU11163_A[5] = n9834;
         assign BU11163_A[6] = n9833;
         assign BU11163_A[7] = n9832;
         assign BU11163_A[8] = n9831;
         assign BU11163_A[9] = n9830;
         assign BU11163_A[10] = n9829;
         assign BU11163_A[11] = n9828;
         assign BU11163_A[12] = n9827;
         assign BU11163_A[13] = n9826;
         assign BU11163_A[14] = n9825;
         assign BU11163_A[15] = n9824;
         assign BU11163_A[16] = n9823;
         assign BU11163_A[17] = n9822;
         assign BU11163_A[18] = n9821;
         assign BU11163_A[19] = n9820;
         assign BU11163_A[20] = n9819;
         assign BU11163_A[21] = n9818;
         assign BU11163_A[22] = n9817;
         assign BU11163_A[23] = n9816;
         assign BU11163_A[24] = n9815;
         assign BU11163_A[25] = n9814;
         assign BU11163_A[26] = n9813;
         assign BU11163_A[27] = n9812;
      wire [27 : 0] BU11163_B;
         assign BU11163_B[0] = 1'b1;
         assign BU11163_B[1] = 1'b0;
         assign BU11163_B[2] = 1'b0;
         assign BU11163_B[3] = 1'b0;
         assign BU11163_B[4] = 1'b1;
         assign BU11163_B[5] = 1'b0;
         assign BU11163_B[6] = 1'b1;
         assign BU11163_B[7] = 1'b0;
         assign BU11163_B[8] = 1'b0;
         assign BU11163_B[9] = 1'b0;
         assign BU11163_B[10] = 1'b0;
         assign BU11163_B[11] = 1'b0;
         assign BU11163_B[12] = 1'b0;
         assign BU11163_B[13] = 1'b0;
         assign BU11163_B[14] = 1'b0;
         assign BU11163_B[15] = 1'b0;
         assign BU11163_B[16] = 1'b0;
         assign BU11163_B[17] = 1'b0;
         assign BU11163_B[18] = 1'b0;
         assign BU11163_B[19] = 1'b0;
         assign BU11163_B[20] = 1'b0;
         assign BU11163_B[21] = 1'b0;
         assign BU11163_B[22] = 1'b0;
         assign BU11163_B[23] = 1'b0;
         assign BU11163_B[24] = 1'b0;
         assign BU11163_B[25] = 1'b0;
         assign BU11163_B[26] = 1'b0;
         assign BU11163_B[27] = 1'b0;
      wire BU11163_ADD;
         assign BU11163_ADD = n64506;
      wire [27 : 0] BU11163_S;
         assign n64477 = BU11163_S[27];
      wire [27 : 0] BU11163_Q;
         assign n9811 = BU11163_Q[0];
         assign n9810 = BU11163_Q[1];
         assign n9809 = BU11163_Q[2];
         assign n9808 = BU11163_Q[3];
         assign n9807 = BU11163_Q[4];
         assign n9806 = BU11163_Q[5];
         assign n9805 = BU11163_Q[6];
         assign n9804 = BU11163_Q[7];
         assign n9803 = BU11163_Q[8];
         assign n9802 = BU11163_Q[9];
         assign n9801 = BU11163_Q[10];
         assign n9800 = BU11163_Q[11];
         assign n9799 = BU11163_Q[12];
         assign n9798 = BU11163_Q[13];
         assign n9797 = BU11163_Q[14];
         assign n9796 = BU11163_Q[15];
         assign n9795 = BU11163_Q[16];
         assign n9794 = BU11163_Q[17];
         assign n9793 = BU11163_Q[18];
         assign n9792 = BU11163_Q[19];
         assign n9791 = BU11163_Q[20];
         assign n9790 = BU11163_Q[21];
         assign n9789 = BU11163_Q[22];
         assign n9788 = BU11163_Q[23];
         assign n9787 = BU11163_Q[24];
         assign n9786 = BU11163_Q[25];
         assign n9785 = BU11163_Q[26];
         assign n9784 = BU11163_Q[27];
      wire BU11163_CLK;
         assign BU11163_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU11163(
         .A(BU11163_A),
         .B(BU11163_B),
         .ADD(BU11163_ADD),
         .S(BU11163_S),
         .Q(BU11163_Q),
         .CLK(BU11163_CLK)
      );

      defparam BU11338.INIT = 'h5c5c;
      wire BU11338_I0;
         assign BU11338_I0 = n8580;
      wire BU11338_I1;
         assign BU11338_I1 = n11052;
      wire BU11338_I2;
         assign BU11338_I2 = n11051;
      wire BU11338_I3;
         assign BU11338_I3 = 1'b0;
      wire BU11338_O;
         assign n64506 = BU11338_O;
      LUT4       BU11338(
         .I0(BU11338_I0),
         .I1(BU11338_I1),
         .I2(BU11338_I2),
         .I3(BU11338_I3),
         .O(BU11338_O)
      );

      wire [0 : 0] BU11343_D;
         assign BU11343_D[0] = n64477;
      wire [0 : 0] BU11343_Q;
         assign n11049 = BU11343_Q[0];
      wire BU11343_CLK;
         assign BU11343_CLK = n1088;
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
      BU11343(
         .D(BU11343_D),
         .Q(BU11343_Q),
         .CLK(BU11343_CLK)
      );

      wire [0 : 0] BU11352_D;
         assign BU11352_D[0] = n10921;
      wire [0 : 0] BU11352_Q;
         assign n10918 = BU11352_Q[0];
      wire BU11352_CLK;
         assign BU11352_CLK = n1088;
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
      BU11352(
         .D(BU11352_D),
         .Q(BU11352_Q),
         .CLK(BU11352_CLK)
      );

      wire [0 : 0] BU11359_D;
         assign BU11359_D[0] = n10920;
      wire [0 : 0] BU11359_Q;
         assign n10917 = BU11359_Q[0];
      wire BU11359_CLK;
         assign BU11359_CLK = n1088;
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
      BU11359(
         .D(BU11359_D),
         .Q(BU11359_Q),
         .CLK(BU11359_CLK)
      );

      wire [0 : 0] BU11366_D;
         assign BU11366_D[0] = n10919;
      wire [0 : 0] BU11366_Q;
         assign n10916 = BU11366_Q[0];
      wire BU11366_CLK;
         assign BU11366_CLK = n1088;
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
      BU11366(
         .D(BU11366_D),
         .Q(BU11366_Q),
         .CLK(BU11366_CLK)
      );

      wire [0 : 0] BU11373_D;
         assign BU11373_D[0] = n11051;
      wire [0 : 0] BU11373_Q;
         assign n11048 = BU11373_Q[0];
      wire BU11373_CLK;
         assign BU11373_CLK = n1088;
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
      BU11373(
         .D(BU11373_D),
         .Q(BU11373_Q),
         .CLK(BU11373_CLK)
      );

      wire [27 : 0] BU11389_A;
         assign BU11389_A[0] = n7347;
         assign BU11389_A[1] = n7346;
         assign BU11389_A[2] = n7345;
         assign BU11389_A[3] = n7344;
         assign BU11389_A[4] = n7343;
         assign BU11389_A[5] = n7342;
         assign BU11389_A[6] = n7341;
         assign BU11389_A[7] = n7340;
         assign BU11389_A[8] = n7339;
         assign BU11389_A[9] = n7338;
         assign BU11389_A[10] = n7337;
         assign BU11389_A[11] = n7336;
         assign BU11389_A[12] = n7335;
         assign BU11389_A[13] = n7334;
         assign BU11389_A[14] = n7333;
         assign BU11389_A[15] = n7332;
         assign BU11389_A[16] = n7331;
         assign BU11389_A[17] = n7330;
         assign BU11389_A[18] = n7329;
         assign BU11389_A[19] = n7328;
         assign BU11389_A[20] = n7327;
         assign BU11389_A[21] = n7326;
         assign BU11389_A[22] = n7325;
         assign BU11389_A[23] = n7324;
         assign BU11389_A[24] = n7323;
         assign BU11389_A[25] = n7322;
         assign BU11389_A[26] = n7321;
         assign BU11389_A[27] = n7320;
      wire [27 : 0] BU11389_B;
         assign BU11389_B[0] = n8561;
         assign BU11389_B[1] = n8560;
         assign BU11389_B[2] = n8559;
         assign BU11389_B[3] = n8558;
         assign BU11389_B[4] = n8557;
         assign BU11389_B[5] = n8556;
         assign BU11389_B[6] = n8555;
         assign BU11389_B[7] = n8554;
         assign BU11389_B[8] = n8553;
         assign BU11389_B[9] = n8552;
         assign BU11389_B[10] = n8552;
         assign BU11389_B[11] = n8552;
         assign BU11389_B[12] = n8552;
         assign BU11389_B[13] = n8552;
         assign BU11389_B[14] = n8552;
         assign BU11389_B[15] = n8552;
         assign BU11389_B[16] = n8552;
         assign BU11389_B[17] = n8552;
         assign BU11389_B[18] = n8552;
         assign BU11389_B[19] = n8552;
         assign BU11389_B[20] = n8552;
         assign BU11389_B[21] = n8552;
         assign BU11389_B[22] = n8552;
         assign BU11389_B[23] = n8552;
         assign BU11389_B[24] = n8552;
         assign BU11389_B[25] = n8552;
         assign BU11389_B[26] = n8552;
         assign BU11389_B[27] = n8552;
      wire BU11389_ADD;
         assign BU11389_ADD = n65916;
      wire [27 : 0] BU11389_Q;
         assign n7319 = BU11389_Q[0];
         assign n7318 = BU11389_Q[1];
         assign n7317 = BU11389_Q[2];
         assign n7316 = BU11389_Q[3];
         assign n7315 = BU11389_Q[4];
         assign n7314 = BU11389_Q[5];
         assign n7313 = BU11389_Q[6];
         assign n7312 = BU11389_Q[7];
         assign n7311 = BU11389_Q[8];
         assign n7310 = BU11389_Q[9];
         assign n7309 = BU11389_Q[10];
         assign n7308 = BU11389_Q[11];
         assign n7307 = BU11389_Q[12];
         assign n7306 = BU11389_Q[13];
         assign n7305 = BU11389_Q[14];
         assign n7304 = BU11389_Q[15];
         assign n7303 = BU11389_Q[16];
         assign n7302 = BU11389_Q[17];
         assign n7301 = BU11389_Q[18];
         assign n7300 = BU11389_Q[19];
         assign n7299 = BU11389_Q[20];
         assign n7298 = BU11389_Q[21];
         assign n7297 = BU11389_Q[22];
         assign n7296 = BU11389_Q[23];
         assign n7295 = BU11389_Q[24];
         assign n7294 = BU11389_Q[25];
         assign n7293 = BU11389_Q[26];
         assign n7292 = BU11389_Q[27];
      wire BU11389_CLK;
         assign BU11389_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU11389(
         .A(BU11389_A),
         .B(BU11389_B),
         .ADD(BU11389_ADD),
         .Q(BU11389_Q),
         .CLK(BU11389_CLK)
      );

      defparam BU11564.INIT = 'ha53c;
      wire BU11564_I0;
         assign BU11564_I0 = n8552;
      wire BU11564_I1;
         assign BU11564_I1 = n11049;
      wire BU11564_I2;
         assign BU11564_I2 = 1'b0;
      wire BU11564_I3;
         assign BU11564_I3 = n11048;
      wire BU11564_O;
         assign n65916 = BU11564_O;
      LUT4       BU11564(
         .I0(BU11564_I0),
         .I1(BU11564_I1),
         .I2(BU11564_I2),
         .I3(BU11564_I3),
         .O(BU11564_O)
      );

      wire [27 : 0] BU11569_A;
         assign BU11569_A[0] = n8579;
         assign BU11569_A[1] = n8578;
         assign BU11569_A[2] = n8577;
         assign BU11569_A[3] = n8576;
         assign BU11569_A[4] = n8575;
         assign BU11569_A[5] = n8574;
         assign BU11569_A[6] = n8573;
         assign BU11569_A[7] = n8572;
         assign BU11569_A[8] = n8571;
         assign BU11569_A[9] = n8570;
         assign BU11569_A[10] = n8569;
         assign BU11569_A[11] = n8568;
         assign BU11569_A[12] = n8567;
         assign BU11569_A[13] = n8566;
         assign BU11569_A[14] = n8565;
         assign BU11569_A[15] = n8564;
         assign BU11569_A[16] = n8563;
         assign BU11569_A[17] = n8562;
         assign BU11569_A[18] = n8561;
         assign BU11569_A[19] = n8560;
         assign BU11569_A[20] = n8559;
         assign BU11569_A[21] = n8558;
         assign BU11569_A[22] = n8557;
         assign BU11569_A[23] = n8556;
         assign BU11569_A[24] = n8555;
         assign BU11569_A[25] = n8554;
         assign BU11569_A[26] = n8553;
         assign BU11569_A[27] = n8552;
      wire [27 : 0] BU11569_B;
         assign BU11569_B[0] = n7329;
         assign BU11569_B[1] = n7328;
         assign BU11569_B[2] = n7327;
         assign BU11569_B[3] = n7326;
         assign BU11569_B[4] = n7325;
         assign BU11569_B[5] = n7324;
         assign BU11569_B[6] = n7323;
         assign BU11569_B[7] = n7322;
         assign BU11569_B[8] = n7321;
         assign BU11569_B[9] = n7320;
         assign BU11569_B[10] = n7320;
         assign BU11569_B[11] = n7320;
         assign BU11569_B[12] = n7320;
         assign BU11569_B[13] = n7320;
         assign BU11569_B[14] = n7320;
         assign BU11569_B[15] = n7320;
         assign BU11569_B[16] = n7320;
         assign BU11569_B[17] = n7320;
         assign BU11569_B[18] = n7320;
         assign BU11569_B[19] = n7320;
         assign BU11569_B[20] = n7320;
         assign BU11569_B[21] = n7320;
         assign BU11569_B[22] = n7320;
         assign BU11569_B[23] = n7320;
         assign BU11569_B[24] = n7320;
         assign BU11569_B[25] = n7320;
         assign BU11569_B[26] = n7320;
         assign BU11569_B[27] = n7320;
      wire BU11569_ADD;
         assign BU11569_ADD = n65917;
      wire [27 : 0] BU11569_Q;
         assign n8551 = BU11569_Q[0];
         assign n8550 = BU11569_Q[1];
         assign n8549 = BU11569_Q[2];
         assign n8548 = BU11569_Q[3];
         assign n8547 = BU11569_Q[4];
         assign n8546 = BU11569_Q[5];
         assign n8545 = BU11569_Q[6];
         assign n8544 = BU11569_Q[7];
         assign n8543 = BU11569_Q[8];
         assign n8542 = BU11569_Q[9];
         assign n8541 = BU11569_Q[10];
         assign n8540 = BU11569_Q[11];
         assign n8539 = BU11569_Q[12];
         assign n8538 = BU11569_Q[13];
         assign n8537 = BU11569_Q[14];
         assign n8536 = BU11569_Q[15];
         assign n8535 = BU11569_Q[16];
         assign n8534 = BU11569_Q[17];
         assign n8533 = BU11569_Q[18];
         assign n8532 = BU11569_Q[19];
         assign n8531 = BU11569_Q[20];
         assign n8530 = BU11569_Q[21];
         assign n8529 = BU11569_Q[22];
         assign n8528 = BU11569_Q[23];
         assign n8527 = BU11569_Q[24];
         assign n8526 = BU11569_Q[25];
         assign n8525 = BU11569_Q[26];
         assign n8524 = BU11569_Q[27];
      wire BU11569_CLK;
         assign BU11569_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU11569(
         .A(BU11569_A),
         .B(BU11569_B),
         .ADD(BU11569_ADD),
         .Q(BU11569_Q),
         .CLK(BU11569_CLK)
      );

      defparam BU11744.INIT = 'ha3a3;
      wire BU11744_I0;
         assign BU11744_I0 = n8552;
      wire BU11744_I1;
         assign BU11744_I1 = n11049;
      wire BU11744_I2;
         assign BU11744_I2 = n11048;
      wire BU11744_I3;
         assign BU11744_I3 = 1'b0;
      wire BU11744_O;
         assign n65917 = BU11744_O;
      LUT4       BU11744(
         .I0(BU11744_I0),
         .I1(BU11744_I1),
         .I2(BU11744_I2),
         .I3(BU11744_I3),
         .O(BU11744_O)
      );

      wire [27 : 0] BU11751_A;
         assign BU11751_A[0] = n9811;
         assign BU11751_A[1] = n9810;
         assign BU11751_A[2] = n9809;
         assign BU11751_A[3] = n9808;
         assign BU11751_A[4] = n9807;
         assign BU11751_A[5] = n9806;
         assign BU11751_A[6] = n9805;
         assign BU11751_A[7] = n9804;
         assign BU11751_A[8] = n9803;
         assign BU11751_A[9] = n9802;
         assign BU11751_A[10] = n9801;
         assign BU11751_A[11] = n9800;
         assign BU11751_A[12] = n9799;
         assign BU11751_A[13] = n9798;
         assign BU11751_A[14] = n9797;
         assign BU11751_A[15] = n9796;
         assign BU11751_A[16] = n9795;
         assign BU11751_A[17] = n9794;
         assign BU11751_A[18] = n9793;
         assign BU11751_A[19] = n9792;
         assign BU11751_A[20] = n9791;
         assign BU11751_A[21] = n9790;
         assign BU11751_A[22] = n9789;
         assign BU11751_A[23] = n9788;
         assign BU11751_A[24] = n9787;
         assign BU11751_A[25] = n9786;
         assign BU11751_A[26] = n9785;
         assign BU11751_A[27] = n9784;
      wire [27 : 0] BU11751_B;
         assign BU11751_B[0] = 1'b1;
         assign BU11751_B[1] = 1'b0;
         assign BU11751_B[2] = 1'b0;
         assign BU11751_B[3] = 1'b1;
         assign BU11751_B[4] = 1'b0;
         assign BU11751_B[5] = 1'b1;
         assign BU11751_B[6] = 1'b0;
         assign BU11751_B[7] = 1'b0;
         assign BU11751_B[8] = 1'b0;
         assign BU11751_B[9] = 1'b0;
         assign BU11751_B[10] = 1'b0;
         assign BU11751_B[11] = 1'b0;
         assign BU11751_B[12] = 1'b0;
         assign BU11751_B[13] = 1'b0;
         assign BU11751_B[14] = 1'b0;
         assign BU11751_B[15] = 1'b0;
         assign BU11751_B[16] = 1'b0;
         assign BU11751_B[17] = 1'b0;
         assign BU11751_B[18] = 1'b0;
         assign BU11751_B[19] = 1'b0;
         assign BU11751_B[20] = 1'b0;
         assign BU11751_B[21] = 1'b0;
         assign BU11751_B[22] = 1'b0;
         assign BU11751_B[23] = 1'b0;
         assign BU11751_B[24] = 1'b0;
         assign BU11751_B[25] = 1'b0;
         assign BU11751_B[26] = 1'b0;
         assign BU11751_B[27] = 1'b0;
      wire BU11751_ADD;
         assign BU11751_ADD = n67686;
      wire [27 : 0] BU11751_S;
         assign n67657 = BU11751_S[27];
      wire [27 : 0] BU11751_Q;
         assign n9783 = BU11751_Q[0];
         assign n9782 = BU11751_Q[1];
         assign n9781 = BU11751_Q[2];
         assign n9780 = BU11751_Q[3];
         assign n9779 = BU11751_Q[4];
         assign n9778 = BU11751_Q[5];
         assign n9777 = BU11751_Q[6];
         assign n9776 = BU11751_Q[7];
         assign n9775 = BU11751_Q[8];
         assign n9774 = BU11751_Q[9];
         assign n9773 = BU11751_Q[10];
         assign n9772 = BU11751_Q[11];
         assign n9771 = BU11751_Q[12];
         assign n9770 = BU11751_Q[13];
         assign n9769 = BU11751_Q[14];
         assign n9768 = BU11751_Q[15];
         assign n9767 = BU11751_Q[16];
         assign n9766 = BU11751_Q[17];
         assign n9765 = BU11751_Q[18];
         assign n9764 = BU11751_Q[19];
         assign n9763 = BU11751_Q[20];
         assign n9762 = BU11751_Q[21];
         assign n9761 = BU11751_Q[22];
         assign n9760 = BU11751_Q[23];
         assign n9759 = BU11751_Q[24];
         assign n9758 = BU11751_Q[25];
         assign n9757 = BU11751_Q[26];
         assign n9756 = BU11751_Q[27];
      wire BU11751_CLK;
         assign BU11751_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU11751(
         .A(BU11751_A),
         .B(BU11751_B),
         .ADD(BU11751_ADD),
         .S(BU11751_S),
         .Q(BU11751_Q),
         .CLK(BU11751_CLK)
      );

      defparam BU11926.INIT = 'h5c5c;
      wire BU11926_I0;
         assign BU11926_I0 = n8552;
      wire BU11926_I1;
         assign BU11926_I1 = n11049;
      wire BU11926_I2;
         assign BU11926_I2 = n11048;
      wire BU11926_I3;
         assign BU11926_I3 = 1'b0;
      wire BU11926_O;
         assign n67686 = BU11926_O;
      LUT4       BU11926(
         .I0(BU11926_I0),
         .I1(BU11926_I1),
         .I2(BU11926_I2),
         .I3(BU11926_I3),
         .O(BU11926_O)
      );

      wire [0 : 0] BU11931_D;
         assign BU11931_D[0] = n67657;
      wire [0 : 0] BU11931_Q;
         assign n11046 = BU11931_Q[0];
      wire BU11931_CLK;
         assign BU11931_CLK = n1088;
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
      BU11931(
         .D(BU11931_D),
         .Q(BU11931_Q),
         .CLK(BU11931_CLK)
      );

      wire [0 : 0] BU11940_D;
         assign BU11940_D[0] = n10918;
      wire [0 : 0] BU11940_Q;
         assign n10915 = BU11940_Q[0];
      wire BU11940_CLK;
         assign BU11940_CLK = n1088;
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
      BU11940(
         .D(BU11940_D),
         .Q(BU11940_Q),
         .CLK(BU11940_CLK)
      );

      wire [0 : 0] BU11947_D;
         assign BU11947_D[0] = n10917;
      wire [0 : 0] BU11947_Q;
         assign n10914 = BU11947_Q[0];
      wire BU11947_CLK;
         assign BU11947_CLK = n1088;
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
      BU11947(
         .D(BU11947_D),
         .Q(BU11947_Q),
         .CLK(BU11947_CLK)
      );

      wire [0 : 0] BU11954_D;
         assign BU11954_D[0] = n10916;
      wire [0 : 0] BU11954_Q;
         assign n10913 = BU11954_Q[0];
      wire BU11954_CLK;
         assign BU11954_CLK = n1088;
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
      BU11954(
         .D(BU11954_D),
         .Q(BU11954_Q),
         .CLK(BU11954_CLK)
      );

      wire [0 : 0] BU11961_D;
         assign BU11961_D[0] = n11048;
      wire [0 : 0] BU11961_Q;
         assign n11045 = BU11961_Q[0];
      wire BU11961_CLK;
         assign BU11961_CLK = n1088;
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
      BU11961(
         .D(BU11961_D),
         .Q(BU11961_Q),
         .CLK(BU11961_CLK)
      );

      wire [27 : 0] BU11977_A;
         assign BU11977_A[0] = n7319;
         assign BU11977_A[1] = n7318;
         assign BU11977_A[2] = n7317;
         assign BU11977_A[3] = n7316;
         assign BU11977_A[4] = n7315;
         assign BU11977_A[5] = n7314;
         assign BU11977_A[6] = n7313;
         assign BU11977_A[7] = n7312;
         assign BU11977_A[8] = n7311;
         assign BU11977_A[9] = n7310;
         assign BU11977_A[10] = n7309;
         assign BU11977_A[11] = n7308;
         assign BU11977_A[12] = n7307;
         assign BU11977_A[13] = n7306;
         assign BU11977_A[14] = n7305;
         assign BU11977_A[15] = n7304;
         assign BU11977_A[16] = n7303;
         assign BU11977_A[17] = n7302;
         assign BU11977_A[18] = n7301;
         assign BU11977_A[19] = n7300;
         assign BU11977_A[20] = n7299;
         assign BU11977_A[21] = n7298;
         assign BU11977_A[22] = n7297;
         assign BU11977_A[23] = n7296;
         assign BU11977_A[24] = n7295;
         assign BU11977_A[25] = n7294;
         assign BU11977_A[26] = n7293;
         assign BU11977_A[27] = n7292;
      wire [27 : 0] BU11977_B;
         assign BU11977_B[0] = n8532;
         assign BU11977_B[1] = n8531;
         assign BU11977_B[2] = n8530;
         assign BU11977_B[3] = n8529;
         assign BU11977_B[4] = n8528;
         assign BU11977_B[5] = n8527;
         assign BU11977_B[6] = n8526;
         assign BU11977_B[7] = n8525;
         assign BU11977_B[8] = n8524;
         assign BU11977_B[9] = n8524;
         assign BU11977_B[10] = n8524;
         assign BU11977_B[11] = n8524;
         assign BU11977_B[12] = n8524;
         assign BU11977_B[13] = n8524;
         assign BU11977_B[14] = n8524;
         assign BU11977_B[15] = n8524;
         assign BU11977_B[16] = n8524;
         assign BU11977_B[17] = n8524;
         assign BU11977_B[18] = n8524;
         assign BU11977_B[19] = n8524;
         assign BU11977_B[20] = n8524;
         assign BU11977_B[21] = n8524;
         assign BU11977_B[22] = n8524;
         assign BU11977_B[23] = n8524;
         assign BU11977_B[24] = n8524;
         assign BU11977_B[25] = n8524;
         assign BU11977_B[26] = n8524;
         assign BU11977_B[27] = n8524;
      wire BU11977_ADD;
         assign BU11977_ADD = n69096;
      wire [27 : 0] BU11977_Q;
         assign n7291 = BU11977_Q[0];
         assign n7290 = BU11977_Q[1];
         assign n7289 = BU11977_Q[2];
         assign n7288 = BU11977_Q[3];
         assign n7287 = BU11977_Q[4];
         assign n7286 = BU11977_Q[5];
         assign n7285 = BU11977_Q[6];
         assign n7284 = BU11977_Q[7];
         assign n7283 = BU11977_Q[8];
         assign n7282 = BU11977_Q[9];
         assign n7281 = BU11977_Q[10];
         assign n7280 = BU11977_Q[11];
         assign n7279 = BU11977_Q[12];
         assign n7278 = BU11977_Q[13];
         assign n7277 = BU11977_Q[14];
         assign n7276 = BU11977_Q[15];
         assign n7275 = BU11977_Q[16];
         assign n7274 = BU11977_Q[17];
         assign n7273 = BU11977_Q[18];
         assign n7272 = BU11977_Q[19];
         assign n7271 = BU11977_Q[20];
         assign n7270 = BU11977_Q[21];
         assign n7269 = BU11977_Q[22];
         assign n7268 = BU11977_Q[23];
         assign n7267 = BU11977_Q[24];
         assign n7266 = BU11977_Q[25];
         assign n7265 = BU11977_Q[26];
         assign n7264 = BU11977_Q[27];
      wire BU11977_CLK;
         assign BU11977_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU11977(
         .A(BU11977_A),
         .B(BU11977_B),
         .ADD(BU11977_ADD),
         .Q(BU11977_Q),
         .CLK(BU11977_CLK)
      );

      defparam BU12152.INIT = 'ha53c;
      wire BU12152_I0;
         assign BU12152_I0 = n8524;
      wire BU12152_I1;
         assign BU12152_I1 = n11046;
      wire BU12152_I2;
         assign BU12152_I2 = 1'b0;
      wire BU12152_I3;
         assign BU12152_I3 = n11045;
      wire BU12152_O;
         assign n69096 = BU12152_O;
      LUT4       BU12152(
         .I0(BU12152_I0),
         .I1(BU12152_I1),
         .I2(BU12152_I2),
         .I3(BU12152_I3),
         .O(BU12152_O)
      );

      wire [27 : 0] BU12157_A;
         assign BU12157_A[0] = n8551;
         assign BU12157_A[1] = n8550;
         assign BU12157_A[2] = n8549;
         assign BU12157_A[3] = n8548;
         assign BU12157_A[4] = n8547;
         assign BU12157_A[5] = n8546;
         assign BU12157_A[6] = n8545;
         assign BU12157_A[7] = n8544;
         assign BU12157_A[8] = n8543;
         assign BU12157_A[9] = n8542;
         assign BU12157_A[10] = n8541;
         assign BU12157_A[11] = n8540;
         assign BU12157_A[12] = n8539;
         assign BU12157_A[13] = n8538;
         assign BU12157_A[14] = n8537;
         assign BU12157_A[15] = n8536;
         assign BU12157_A[16] = n8535;
         assign BU12157_A[17] = n8534;
         assign BU12157_A[18] = n8533;
         assign BU12157_A[19] = n8532;
         assign BU12157_A[20] = n8531;
         assign BU12157_A[21] = n8530;
         assign BU12157_A[22] = n8529;
         assign BU12157_A[23] = n8528;
         assign BU12157_A[24] = n8527;
         assign BU12157_A[25] = n8526;
         assign BU12157_A[26] = n8525;
         assign BU12157_A[27] = n8524;
      wire [27 : 0] BU12157_B;
         assign BU12157_B[0] = n7300;
         assign BU12157_B[1] = n7299;
         assign BU12157_B[2] = n7298;
         assign BU12157_B[3] = n7297;
         assign BU12157_B[4] = n7296;
         assign BU12157_B[5] = n7295;
         assign BU12157_B[6] = n7294;
         assign BU12157_B[7] = n7293;
         assign BU12157_B[8] = n7292;
         assign BU12157_B[9] = n7292;
         assign BU12157_B[10] = n7292;
         assign BU12157_B[11] = n7292;
         assign BU12157_B[12] = n7292;
         assign BU12157_B[13] = n7292;
         assign BU12157_B[14] = n7292;
         assign BU12157_B[15] = n7292;
         assign BU12157_B[16] = n7292;
         assign BU12157_B[17] = n7292;
         assign BU12157_B[18] = n7292;
         assign BU12157_B[19] = n7292;
         assign BU12157_B[20] = n7292;
         assign BU12157_B[21] = n7292;
         assign BU12157_B[22] = n7292;
         assign BU12157_B[23] = n7292;
         assign BU12157_B[24] = n7292;
         assign BU12157_B[25] = n7292;
         assign BU12157_B[26] = n7292;
         assign BU12157_B[27] = n7292;
      wire BU12157_ADD;
         assign BU12157_ADD = n69097;
      wire [27 : 0] BU12157_Q;
         assign n8523 = BU12157_Q[0];
         assign n8522 = BU12157_Q[1];
         assign n8521 = BU12157_Q[2];
         assign n8520 = BU12157_Q[3];
         assign n8519 = BU12157_Q[4];
         assign n8518 = BU12157_Q[5];
         assign n8517 = BU12157_Q[6];
         assign n8516 = BU12157_Q[7];
         assign n8515 = BU12157_Q[8];
         assign n8514 = BU12157_Q[9];
         assign n8513 = BU12157_Q[10];
         assign n8512 = BU12157_Q[11];
         assign n8511 = BU12157_Q[12];
         assign n8510 = BU12157_Q[13];
         assign n8509 = BU12157_Q[14];
         assign n8508 = BU12157_Q[15];
         assign n8507 = BU12157_Q[16];
         assign n8506 = BU12157_Q[17];
         assign n8505 = BU12157_Q[18];
         assign n8504 = BU12157_Q[19];
         assign n8503 = BU12157_Q[20];
         assign n8502 = BU12157_Q[21];
         assign n8501 = BU12157_Q[22];
         assign n8500 = BU12157_Q[23];
         assign n8499 = BU12157_Q[24];
         assign n8498 = BU12157_Q[25];
         assign n8497 = BU12157_Q[26];
         assign n8496 = BU12157_Q[27];
      wire BU12157_CLK;
         assign BU12157_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU12157(
         .A(BU12157_A),
         .B(BU12157_B),
         .ADD(BU12157_ADD),
         .Q(BU12157_Q),
         .CLK(BU12157_CLK)
      );

      defparam BU12332.INIT = 'ha3a3;
      wire BU12332_I0;
         assign BU12332_I0 = n8524;
      wire BU12332_I1;
         assign BU12332_I1 = n11046;
      wire BU12332_I2;
         assign BU12332_I2 = n11045;
      wire BU12332_I3;
         assign BU12332_I3 = 1'b0;
      wire BU12332_O;
         assign n69097 = BU12332_O;
      LUT4       BU12332(
         .I0(BU12332_I0),
         .I1(BU12332_I1),
         .I2(BU12332_I2),
         .I3(BU12332_I3),
         .O(BU12332_O)
      );

      wire [27 : 0] BU12339_A;
         assign BU12339_A[0] = n9783;
         assign BU12339_A[1] = n9782;
         assign BU12339_A[2] = n9781;
         assign BU12339_A[3] = n9780;
         assign BU12339_A[4] = n9779;
         assign BU12339_A[5] = n9778;
         assign BU12339_A[6] = n9777;
         assign BU12339_A[7] = n9776;
         assign BU12339_A[8] = n9775;
         assign BU12339_A[9] = n9774;
         assign BU12339_A[10] = n9773;
         assign BU12339_A[11] = n9772;
         assign BU12339_A[12] = n9771;
         assign BU12339_A[13] = n9770;
         assign BU12339_A[14] = n9769;
         assign BU12339_A[15] = n9768;
         assign BU12339_A[16] = n9767;
         assign BU12339_A[17] = n9766;
         assign BU12339_A[18] = n9765;
         assign BU12339_A[19] = n9764;
         assign BU12339_A[20] = n9763;
         assign BU12339_A[21] = n9762;
         assign BU12339_A[22] = n9761;
         assign BU12339_A[23] = n9760;
         assign BU12339_A[24] = n9759;
         assign BU12339_A[25] = n9758;
         assign BU12339_A[26] = n9757;
         assign BU12339_A[27] = n9756;
      wire [27 : 0] BU12339_B;
         assign BU12339_B[0] = 1'b0;
         assign BU12339_B[1] = 1'b0;
         assign BU12339_B[2] = 1'b1;
         assign BU12339_B[3] = 1'b0;
         assign BU12339_B[4] = 1'b1;
         assign BU12339_B[5] = 1'b0;
         assign BU12339_B[6] = 1'b0;
         assign BU12339_B[7] = 1'b0;
         assign BU12339_B[8] = 1'b0;
         assign BU12339_B[9] = 1'b0;
         assign BU12339_B[10] = 1'b0;
         assign BU12339_B[11] = 1'b0;
         assign BU12339_B[12] = 1'b0;
         assign BU12339_B[13] = 1'b0;
         assign BU12339_B[14] = 1'b0;
         assign BU12339_B[15] = 1'b0;
         assign BU12339_B[16] = 1'b0;
         assign BU12339_B[17] = 1'b0;
         assign BU12339_B[18] = 1'b0;
         assign BU12339_B[19] = 1'b0;
         assign BU12339_B[20] = 1'b0;
         assign BU12339_B[21] = 1'b0;
         assign BU12339_B[22] = 1'b0;
         assign BU12339_B[23] = 1'b0;
         assign BU12339_B[24] = 1'b0;
         assign BU12339_B[25] = 1'b0;
         assign BU12339_B[26] = 1'b0;
         assign BU12339_B[27] = 1'b0;
      wire BU12339_ADD;
         assign BU12339_ADD = n70866;
      wire [27 : 0] BU12339_S;
         assign n70837 = BU12339_S[27];
      wire [27 : 0] BU12339_Q;
         assign n9755 = BU12339_Q[0];
         assign n9754 = BU12339_Q[1];
         assign n9753 = BU12339_Q[2];
         assign n9752 = BU12339_Q[3];
         assign n9751 = BU12339_Q[4];
         assign n9750 = BU12339_Q[5];
         assign n9749 = BU12339_Q[6];
         assign n9748 = BU12339_Q[7];
         assign n9747 = BU12339_Q[8];
         assign n9746 = BU12339_Q[9];
         assign n9745 = BU12339_Q[10];
         assign n9744 = BU12339_Q[11];
         assign n9743 = BU12339_Q[12];
         assign n9742 = BU12339_Q[13];
         assign n9741 = BU12339_Q[14];
         assign n9740 = BU12339_Q[15];
         assign n9739 = BU12339_Q[16];
         assign n9738 = BU12339_Q[17];
         assign n9737 = BU12339_Q[18];
         assign n9736 = BU12339_Q[19];
         assign n9735 = BU12339_Q[20];
         assign n9734 = BU12339_Q[21];
         assign n9733 = BU12339_Q[22];
         assign n9732 = BU12339_Q[23];
         assign n9731 = BU12339_Q[24];
         assign n9730 = BU12339_Q[25];
         assign n9729 = BU12339_Q[26];
         assign n9728 = BU12339_Q[27];
      wire BU12339_CLK;
         assign BU12339_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU12339(
         .A(BU12339_A),
         .B(BU12339_B),
         .ADD(BU12339_ADD),
         .S(BU12339_S),
         .Q(BU12339_Q),
         .CLK(BU12339_CLK)
      );

      defparam BU12514.INIT = 'h5c5c;
      wire BU12514_I0;
         assign BU12514_I0 = n8524;
      wire BU12514_I1;
         assign BU12514_I1 = n11046;
      wire BU12514_I2;
         assign BU12514_I2 = n11045;
      wire BU12514_I3;
         assign BU12514_I3 = 1'b0;
      wire BU12514_O;
         assign n70866 = BU12514_O;
      LUT4       BU12514(
         .I0(BU12514_I0),
         .I1(BU12514_I1),
         .I2(BU12514_I2),
         .I3(BU12514_I3),
         .O(BU12514_O)
      );

      wire [0 : 0] BU12519_D;
         assign BU12519_D[0] = n70837;
      wire [0 : 0] BU12519_Q;
         assign n11043 = BU12519_Q[0];
      wire BU12519_CLK;
         assign BU12519_CLK = n1088;
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
      BU12519(
         .D(BU12519_D),
         .Q(BU12519_Q),
         .CLK(BU12519_CLK)
      );

      wire [0 : 0] BU12528_D;
         assign BU12528_D[0] = n10915;
      wire [0 : 0] BU12528_Q;
         assign n10912 = BU12528_Q[0];
      wire BU12528_CLK;
         assign BU12528_CLK = n1088;
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
      BU12528(
         .D(BU12528_D),
         .Q(BU12528_Q),
         .CLK(BU12528_CLK)
      );

      wire [0 : 0] BU12535_D;
         assign BU12535_D[0] = n10914;
      wire [0 : 0] BU12535_Q;
         assign n10911 = BU12535_Q[0];
      wire BU12535_CLK;
         assign BU12535_CLK = n1088;
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
      BU12535(
         .D(BU12535_D),
         .Q(BU12535_Q),
         .CLK(BU12535_CLK)
      );

      wire [0 : 0] BU12542_D;
         assign BU12542_D[0] = n10913;
      wire [0 : 0] BU12542_Q;
         assign n10910 = BU12542_Q[0];
      wire BU12542_CLK;
         assign BU12542_CLK = n1088;
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
      BU12542(
         .D(BU12542_D),
         .Q(BU12542_Q),
         .CLK(BU12542_CLK)
      );

      wire [0 : 0] BU12549_D;
         assign BU12549_D[0] = n11045;
      wire [0 : 0] BU12549_Q;
         assign n11042 = BU12549_Q[0];
      wire BU12549_CLK;
         assign BU12549_CLK = n1088;
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
      BU12549(
         .D(BU12549_D),
         .Q(BU12549_Q),
         .CLK(BU12549_CLK)
      );

      wire [27 : 0] BU12565_A;
         assign BU12565_A[0] = n7291;
         assign BU12565_A[1] = n7290;
         assign BU12565_A[2] = n7289;
         assign BU12565_A[3] = n7288;
         assign BU12565_A[4] = n7287;
         assign BU12565_A[5] = n7286;
         assign BU12565_A[6] = n7285;
         assign BU12565_A[7] = n7284;
         assign BU12565_A[8] = n7283;
         assign BU12565_A[9] = n7282;
         assign BU12565_A[10] = n7281;
         assign BU12565_A[11] = n7280;
         assign BU12565_A[12] = n7279;
         assign BU12565_A[13] = n7278;
         assign BU12565_A[14] = n7277;
         assign BU12565_A[15] = n7276;
         assign BU12565_A[16] = n7275;
         assign BU12565_A[17] = n7274;
         assign BU12565_A[18] = n7273;
         assign BU12565_A[19] = n7272;
         assign BU12565_A[20] = n7271;
         assign BU12565_A[21] = n7270;
         assign BU12565_A[22] = n7269;
         assign BU12565_A[23] = n7268;
         assign BU12565_A[24] = n7267;
         assign BU12565_A[25] = n7266;
         assign BU12565_A[26] = n7265;
         assign BU12565_A[27] = n7264;
      wire [27 : 0] BU12565_B;
         assign BU12565_B[0] = n8503;
         assign BU12565_B[1] = n8502;
         assign BU12565_B[2] = n8501;
         assign BU12565_B[3] = n8500;
         assign BU12565_B[4] = n8499;
         assign BU12565_B[5] = n8498;
         assign BU12565_B[6] = n8497;
         assign BU12565_B[7] = n8496;
         assign BU12565_B[8] = n8496;
         assign BU12565_B[9] = n8496;
         assign BU12565_B[10] = n8496;
         assign BU12565_B[11] = n8496;
         assign BU12565_B[12] = n8496;
         assign BU12565_B[13] = n8496;
         assign BU12565_B[14] = n8496;
         assign BU12565_B[15] = n8496;
         assign BU12565_B[16] = n8496;
         assign BU12565_B[17] = n8496;
         assign BU12565_B[18] = n8496;
         assign BU12565_B[19] = n8496;
         assign BU12565_B[20] = n8496;
         assign BU12565_B[21] = n8496;
         assign BU12565_B[22] = n8496;
         assign BU12565_B[23] = n8496;
         assign BU12565_B[24] = n8496;
         assign BU12565_B[25] = n8496;
         assign BU12565_B[26] = n8496;
         assign BU12565_B[27] = n8496;
      wire BU12565_ADD;
         assign BU12565_ADD = n72276;
      wire [27 : 0] BU12565_Q;
         assign n7263 = BU12565_Q[0];
         assign n7262 = BU12565_Q[1];
         assign n7261 = BU12565_Q[2];
         assign n7260 = BU12565_Q[3];
         assign n7259 = BU12565_Q[4];
         assign n7258 = BU12565_Q[5];
         assign n7257 = BU12565_Q[6];
         assign n7256 = BU12565_Q[7];
         assign n7255 = BU12565_Q[8];
         assign n7254 = BU12565_Q[9];
         assign n7253 = BU12565_Q[10];
         assign n7252 = BU12565_Q[11];
         assign n7251 = BU12565_Q[12];
         assign n7250 = BU12565_Q[13];
         assign n7249 = BU12565_Q[14];
         assign n7248 = BU12565_Q[15];
         assign n7247 = BU12565_Q[16];
         assign n7246 = BU12565_Q[17];
         assign n7245 = BU12565_Q[18];
         assign n7244 = BU12565_Q[19];
         assign n7243 = BU12565_Q[20];
         assign n7242 = BU12565_Q[21];
         assign n7241 = BU12565_Q[22];
         assign n7240 = BU12565_Q[23];
         assign n7239 = BU12565_Q[24];
         assign n7238 = BU12565_Q[25];
         assign n7237 = BU12565_Q[26];
         assign n7236 = BU12565_Q[27];
      wire BU12565_CLK;
         assign BU12565_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU12565(
         .A(BU12565_A),
         .B(BU12565_B),
         .ADD(BU12565_ADD),
         .Q(BU12565_Q),
         .CLK(BU12565_CLK)
      );

      defparam BU12740.INIT = 'ha53c;
      wire BU12740_I0;
         assign BU12740_I0 = n8496;
      wire BU12740_I1;
         assign BU12740_I1 = n11043;
      wire BU12740_I2;
         assign BU12740_I2 = 1'b0;
      wire BU12740_I3;
         assign BU12740_I3 = n11042;
      wire BU12740_O;
         assign n72276 = BU12740_O;
      LUT4       BU12740(
         .I0(BU12740_I0),
         .I1(BU12740_I1),
         .I2(BU12740_I2),
         .I3(BU12740_I3),
         .O(BU12740_O)
      );

      wire [27 : 0] BU12745_A;
         assign BU12745_A[0] = n8523;
         assign BU12745_A[1] = n8522;
         assign BU12745_A[2] = n8521;
         assign BU12745_A[3] = n8520;
         assign BU12745_A[4] = n8519;
         assign BU12745_A[5] = n8518;
         assign BU12745_A[6] = n8517;
         assign BU12745_A[7] = n8516;
         assign BU12745_A[8] = n8515;
         assign BU12745_A[9] = n8514;
         assign BU12745_A[10] = n8513;
         assign BU12745_A[11] = n8512;
         assign BU12745_A[12] = n8511;
         assign BU12745_A[13] = n8510;
         assign BU12745_A[14] = n8509;
         assign BU12745_A[15] = n8508;
         assign BU12745_A[16] = n8507;
         assign BU12745_A[17] = n8506;
         assign BU12745_A[18] = n8505;
         assign BU12745_A[19] = n8504;
         assign BU12745_A[20] = n8503;
         assign BU12745_A[21] = n8502;
         assign BU12745_A[22] = n8501;
         assign BU12745_A[23] = n8500;
         assign BU12745_A[24] = n8499;
         assign BU12745_A[25] = n8498;
         assign BU12745_A[26] = n8497;
         assign BU12745_A[27] = n8496;
      wire [27 : 0] BU12745_B;
         assign BU12745_B[0] = n7271;
         assign BU12745_B[1] = n7270;
         assign BU12745_B[2] = n7269;
         assign BU12745_B[3] = n7268;
         assign BU12745_B[4] = n7267;
         assign BU12745_B[5] = n7266;
         assign BU12745_B[6] = n7265;
         assign BU12745_B[7] = n7264;
         assign BU12745_B[8] = n7264;
         assign BU12745_B[9] = n7264;
         assign BU12745_B[10] = n7264;
         assign BU12745_B[11] = n7264;
         assign BU12745_B[12] = n7264;
         assign BU12745_B[13] = n7264;
         assign BU12745_B[14] = n7264;
         assign BU12745_B[15] = n7264;
         assign BU12745_B[16] = n7264;
         assign BU12745_B[17] = n7264;
         assign BU12745_B[18] = n7264;
         assign BU12745_B[19] = n7264;
         assign BU12745_B[20] = n7264;
         assign BU12745_B[21] = n7264;
         assign BU12745_B[22] = n7264;
         assign BU12745_B[23] = n7264;
         assign BU12745_B[24] = n7264;
         assign BU12745_B[25] = n7264;
         assign BU12745_B[26] = n7264;
         assign BU12745_B[27] = n7264;
      wire BU12745_ADD;
         assign BU12745_ADD = n72277;
      wire [27 : 0] BU12745_Q;
         assign n8495 = BU12745_Q[0];
         assign n8494 = BU12745_Q[1];
         assign n8493 = BU12745_Q[2];
         assign n8492 = BU12745_Q[3];
         assign n8491 = BU12745_Q[4];
         assign n8490 = BU12745_Q[5];
         assign n8489 = BU12745_Q[6];
         assign n8488 = BU12745_Q[7];
         assign n8487 = BU12745_Q[8];
         assign n8486 = BU12745_Q[9];
         assign n8485 = BU12745_Q[10];
         assign n8484 = BU12745_Q[11];
         assign n8483 = BU12745_Q[12];
         assign n8482 = BU12745_Q[13];
         assign n8481 = BU12745_Q[14];
         assign n8480 = BU12745_Q[15];
         assign n8479 = BU12745_Q[16];
         assign n8478 = BU12745_Q[17];
         assign n8477 = BU12745_Q[18];
         assign n8476 = BU12745_Q[19];
         assign n8475 = BU12745_Q[20];
         assign n8474 = BU12745_Q[21];
         assign n8473 = BU12745_Q[22];
         assign n8472 = BU12745_Q[23];
         assign n8471 = BU12745_Q[24];
         assign n8470 = BU12745_Q[25];
         assign n8469 = BU12745_Q[26];
         assign n8468 = BU12745_Q[27];
      wire BU12745_CLK;
         assign BU12745_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU12745(
         .A(BU12745_A),
         .B(BU12745_B),
         .ADD(BU12745_ADD),
         .Q(BU12745_Q),
         .CLK(BU12745_CLK)
      );

      defparam BU12920.INIT = 'ha3a3;
      wire BU12920_I0;
         assign BU12920_I0 = n8496;
      wire BU12920_I1;
         assign BU12920_I1 = n11043;
      wire BU12920_I2;
         assign BU12920_I2 = n11042;
      wire BU12920_I3;
         assign BU12920_I3 = 1'b0;
      wire BU12920_O;
         assign n72277 = BU12920_O;
      LUT4       BU12920(
         .I0(BU12920_I0),
         .I1(BU12920_I1),
         .I2(BU12920_I2),
         .I3(BU12920_I3),
         .O(BU12920_O)
      );

      wire [27 : 0] BU12927_A;
         assign BU12927_A[0] = n9755;
         assign BU12927_A[1] = n9754;
         assign BU12927_A[2] = n9753;
         assign BU12927_A[3] = n9752;
         assign BU12927_A[4] = n9751;
         assign BU12927_A[5] = n9750;
         assign BU12927_A[6] = n9749;
         assign BU12927_A[7] = n9748;
         assign BU12927_A[8] = n9747;
         assign BU12927_A[9] = n9746;
         assign BU12927_A[10] = n9745;
         assign BU12927_A[11] = n9744;
         assign BU12927_A[12] = n9743;
         assign BU12927_A[13] = n9742;
         assign BU12927_A[14] = n9741;
         assign BU12927_A[15] = n9740;
         assign BU12927_A[16] = n9739;
         assign BU12927_A[17] = n9738;
         assign BU12927_A[18] = n9737;
         assign BU12927_A[19] = n9736;
         assign BU12927_A[20] = n9735;
         assign BU12927_A[21] = n9734;
         assign BU12927_A[22] = n9733;
         assign BU12927_A[23] = n9732;
         assign BU12927_A[24] = n9731;
         assign BU12927_A[25] = n9730;
         assign BU12927_A[26] = n9729;
         assign BU12927_A[27] = n9728;
      wire [27 : 0] BU12927_B;
         assign BU12927_B[0] = 1'b0;
         assign BU12927_B[1] = 1'b1;
         assign BU12927_B[2] = 1'b0;
         assign BU12927_B[3] = 1'b1;
         assign BU12927_B[4] = 1'b0;
         assign BU12927_B[5] = 1'b0;
         assign BU12927_B[6] = 1'b0;
         assign BU12927_B[7] = 1'b0;
         assign BU12927_B[8] = 1'b0;
         assign BU12927_B[9] = 1'b0;
         assign BU12927_B[10] = 1'b0;
         assign BU12927_B[11] = 1'b0;
         assign BU12927_B[12] = 1'b0;
         assign BU12927_B[13] = 1'b0;
         assign BU12927_B[14] = 1'b0;
         assign BU12927_B[15] = 1'b0;
         assign BU12927_B[16] = 1'b0;
         assign BU12927_B[17] = 1'b0;
         assign BU12927_B[18] = 1'b0;
         assign BU12927_B[19] = 1'b0;
         assign BU12927_B[20] = 1'b0;
         assign BU12927_B[21] = 1'b0;
         assign BU12927_B[22] = 1'b0;
         assign BU12927_B[23] = 1'b0;
         assign BU12927_B[24] = 1'b0;
         assign BU12927_B[25] = 1'b0;
         assign BU12927_B[26] = 1'b0;
         assign BU12927_B[27] = 1'b0;
      wire BU12927_ADD;
         assign BU12927_ADD = n74046;
      wire [27 : 0] BU12927_S;
         assign n74017 = BU12927_S[27];
      wire [27 : 0] BU12927_Q;
         assign n9727 = BU12927_Q[0];
         assign n9726 = BU12927_Q[1];
         assign n9725 = BU12927_Q[2];
         assign n9724 = BU12927_Q[3];
         assign n9723 = BU12927_Q[4];
         assign n9722 = BU12927_Q[5];
         assign n9721 = BU12927_Q[6];
         assign n9720 = BU12927_Q[7];
         assign n9719 = BU12927_Q[8];
         assign n9718 = BU12927_Q[9];
         assign n9717 = BU12927_Q[10];
         assign n9716 = BU12927_Q[11];
         assign n9715 = BU12927_Q[12];
         assign n9714 = BU12927_Q[13];
         assign n9713 = BU12927_Q[14];
         assign n9712 = BU12927_Q[15];
         assign n9711 = BU12927_Q[16];
         assign n9710 = BU12927_Q[17];
         assign n9709 = BU12927_Q[18];
         assign n9708 = BU12927_Q[19];
         assign n9707 = BU12927_Q[20];
         assign n9706 = BU12927_Q[21];
         assign n9705 = BU12927_Q[22];
         assign n9704 = BU12927_Q[23];
         assign n9703 = BU12927_Q[24];
         assign n9702 = BU12927_Q[25];
         assign n9701 = BU12927_Q[26];
         assign n9700 = BU12927_Q[27];
      wire BU12927_CLK;
         assign BU12927_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU12927(
         .A(BU12927_A),
         .B(BU12927_B),
         .ADD(BU12927_ADD),
         .S(BU12927_S),
         .Q(BU12927_Q),
         .CLK(BU12927_CLK)
      );

      defparam BU13102.INIT = 'h5c5c;
      wire BU13102_I0;
         assign BU13102_I0 = n8496;
      wire BU13102_I1;
         assign BU13102_I1 = n11043;
      wire BU13102_I2;
         assign BU13102_I2 = n11042;
      wire BU13102_I3;
         assign BU13102_I3 = 1'b0;
      wire BU13102_O;
         assign n74046 = BU13102_O;
      LUT4       BU13102(
         .I0(BU13102_I0),
         .I1(BU13102_I1),
         .I2(BU13102_I2),
         .I3(BU13102_I3),
         .O(BU13102_O)
      );

      wire [0 : 0] BU13107_D;
         assign BU13107_D[0] = n74017;
      wire [0 : 0] BU13107_Q;
         assign n11040 = BU13107_Q[0];
      wire BU13107_CLK;
         assign BU13107_CLK = n1088;
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
      BU13107(
         .D(BU13107_D),
         .Q(BU13107_Q),
         .CLK(BU13107_CLK)
      );

      wire [0 : 0] BU13116_D;
         assign BU13116_D[0] = n10912;
      wire [0 : 0] BU13116_Q;
         assign n10909 = BU13116_Q[0];
      wire BU13116_CLK;
         assign BU13116_CLK = n1088;
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
      BU13116(
         .D(BU13116_D),
         .Q(BU13116_Q),
         .CLK(BU13116_CLK)
      );

      wire [0 : 0] BU13123_D;
         assign BU13123_D[0] = n10911;
      wire [0 : 0] BU13123_Q;
         assign n10908 = BU13123_Q[0];
      wire BU13123_CLK;
         assign BU13123_CLK = n1088;
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
      BU13123(
         .D(BU13123_D),
         .Q(BU13123_Q),
         .CLK(BU13123_CLK)
      );

      wire [0 : 0] BU13130_D;
         assign BU13130_D[0] = n10910;
      wire [0 : 0] BU13130_Q;
         assign n10907 = BU13130_Q[0];
      wire BU13130_CLK;
         assign BU13130_CLK = n1088;
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
      BU13130(
         .D(BU13130_D),
         .Q(BU13130_Q),
         .CLK(BU13130_CLK)
      );

      wire [0 : 0] BU13137_D;
         assign BU13137_D[0] = n11042;
      wire [0 : 0] BU13137_Q;
         assign n11039 = BU13137_Q[0];
      wire BU13137_CLK;
         assign BU13137_CLK = n1088;
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
      BU13137(
         .D(BU13137_D),
         .Q(BU13137_Q),
         .CLK(BU13137_CLK)
      );

      wire [27 : 0] BU13153_A;
         assign BU13153_A[0] = n7263;
         assign BU13153_A[1] = n7262;
         assign BU13153_A[2] = n7261;
         assign BU13153_A[3] = n7260;
         assign BU13153_A[4] = n7259;
         assign BU13153_A[5] = n7258;
         assign BU13153_A[6] = n7257;
         assign BU13153_A[7] = n7256;
         assign BU13153_A[8] = n7255;
         assign BU13153_A[9] = n7254;
         assign BU13153_A[10] = n7253;
         assign BU13153_A[11] = n7252;
         assign BU13153_A[12] = n7251;
         assign BU13153_A[13] = n7250;
         assign BU13153_A[14] = n7249;
         assign BU13153_A[15] = n7248;
         assign BU13153_A[16] = n7247;
         assign BU13153_A[17] = n7246;
         assign BU13153_A[18] = n7245;
         assign BU13153_A[19] = n7244;
         assign BU13153_A[20] = n7243;
         assign BU13153_A[21] = n7242;
         assign BU13153_A[22] = n7241;
         assign BU13153_A[23] = n7240;
         assign BU13153_A[24] = n7239;
         assign BU13153_A[25] = n7238;
         assign BU13153_A[26] = n7237;
         assign BU13153_A[27] = n7236;
      wire [27 : 0] BU13153_B;
         assign BU13153_B[0] = n8474;
         assign BU13153_B[1] = n8473;
         assign BU13153_B[2] = n8472;
         assign BU13153_B[3] = n8471;
         assign BU13153_B[4] = n8470;
         assign BU13153_B[5] = n8469;
         assign BU13153_B[6] = n8468;
         assign BU13153_B[7] = n8468;
         assign BU13153_B[8] = n8468;
         assign BU13153_B[9] = n8468;
         assign BU13153_B[10] = n8468;
         assign BU13153_B[11] = n8468;
         assign BU13153_B[12] = n8468;
         assign BU13153_B[13] = n8468;
         assign BU13153_B[14] = n8468;
         assign BU13153_B[15] = n8468;
         assign BU13153_B[16] = n8468;
         assign BU13153_B[17] = n8468;
         assign BU13153_B[18] = n8468;
         assign BU13153_B[19] = n8468;
         assign BU13153_B[20] = n8468;
         assign BU13153_B[21] = n8468;
         assign BU13153_B[22] = n8468;
         assign BU13153_B[23] = n8468;
         assign BU13153_B[24] = n8468;
         assign BU13153_B[25] = n8468;
         assign BU13153_B[26] = n8468;
         assign BU13153_B[27] = n8468;
      wire BU13153_ADD;
         assign BU13153_ADD = n75456;
      wire [27 : 0] BU13153_Q;
         assign n446 = BU13153_Q[0];
         assign n445 = BU13153_Q[1];
         assign n444 = BU13153_Q[2];
         assign n443 = BU13153_Q[3];
         assign n442 = BU13153_Q[4];
         assign n441 = BU13153_Q[5];
         assign n440 = BU13153_Q[6];
         assign n439 = BU13153_Q[7];
         assign n438 = BU13153_Q[8];
         assign n437 = BU13153_Q[9];
         assign n436 = BU13153_Q[10];
         assign n435 = BU13153_Q[11];
         assign n434 = BU13153_Q[12];
         assign n433 = BU13153_Q[13];
         assign n432 = BU13153_Q[14];
         assign n431 = BU13153_Q[15];
         assign n430 = BU13153_Q[16];
         assign n429 = BU13153_Q[17];
         assign n428 = BU13153_Q[18];
         assign n427 = BU13153_Q[19];
         assign n426 = BU13153_Q[20];
         assign n425 = BU13153_Q[21];
         assign n424 = BU13153_Q[22];
         assign n423 = BU13153_Q[23];
         assign n422 = BU13153_Q[24];
         assign n421 = BU13153_Q[25];
         assign n420 = BU13153_Q[26];
         assign n419 = BU13153_Q[27];
      wire BU13153_CLK;
         assign BU13153_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU13153(
         .A(BU13153_A),
         .B(BU13153_B),
         .ADD(BU13153_ADD),
         .Q(BU13153_Q),
         .CLK(BU13153_CLK)
      );

      defparam BU13328.INIT = 'ha53c;
      wire BU13328_I0;
         assign BU13328_I0 = n8468;
      wire BU13328_I1;
         assign BU13328_I1 = n11040;
      wire BU13328_I2;
         assign BU13328_I2 = 1'b0;
      wire BU13328_I3;
         assign BU13328_I3 = n11039;
      wire BU13328_O;
         assign n75456 = BU13328_O;
      LUT4       BU13328(
         .I0(BU13328_I0),
         .I1(BU13328_I1),
         .I2(BU13328_I2),
         .I3(BU13328_I3),
         .O(BU13328_O)
      );

      wire [27 : 0] BU13333_A;
         assign BU13333_A[0] = n8495;
         assign BU13333_A[1] = n8494;
         assign BU13333_A[2] = n8493;
         assign BU13333_A[3] = n8492;
         assign BU13333_A[4] = n8491;
         assign BU13333_A[5] = n8490;
         assign BU13333_A[6] = n8489;
         assign BU13333_A[7] = n8488;
         assign BU13333_A[8] = n8487;
         assign BU13333_A[9] = n8486;
         assign BU13333_A[10] = n8485;
         assign BU13333_A[11] = n8484;
         assign BU13333_A[12] = n8483;
         assign BU13333_A[13] = n8482;
         assign BU13333_A[14] = n8481;
         assign BU13333_A[15] = n8480;
         assign BU13333_A[16] = n8479;
         assign BU13333_A[17] = n8478;
         assign BU13333_A[18] = n8477;
         assign BU13333_A[19] = n8476;
         assign BU13333_A[20] = n8475;
         assign BU13333_A[21] = n8474;
         assign BU13333_A[22] = n8473;
         assign BU13333_A[23] = n8472;
         assign BU13333_A[24] = n8471;
         assign BU13333_A[25] = n8470;
         assign BU13333_A[26] = n8469;
         assign BU13333_A[27] = n8468;
      wire [27 : 0] BU13333_B;
         assign BU13333_B[0] = n7242;
         assign BU13333_B[1] = n7241;
         assign BU13333_B[2] = n7240;
         assign BU13333_B[3] = n7239;
         assign BU13333_B[4] = n7238;
         assign BU13333_B[5] = n7237;
         assign BU13333_B[6] = n7236;
         assign BU13333_B[7] = n7236;
         assign BU13333_B[8] = n7236;
         assign BU13333_B[9] = n7236;
         assign BU13333_B[10] = n7236;
         assign BU13333_B[11] = n7236;
         assign BU13333_B[12] = n7236;
         assign BU13333_B[13] = n7236;
         assign BU13333_B[14] = n7236;
         assign BU13333_B[15] = n7236;
         assign BU13333_B[16] = n7236;
         assign BU13333_B[17] = n7236;
         assign BU13333_B[18] = n7236;
         assign BU13333_B[19] = n7236;
         assign BU13333_B[20] = n7236;
         assign BU13333_B[21] = n7236;
         assign BU13333_B[22] = n7236;
         assign BU13333_B[23] = n7236;
         assign BU13333_B[24] = n7236;
         assign BU13333_B[25] = n7236;
         assign BU13333_B[26] = n7236;
         assign BU13333_B[27] = n7236;
      wire BU13333_ADD;
         assign BU13333_ADD = n75457;
      wire [27 : 0] BU13333_Q;
      wire BU13333_CLK;
         assign BU13333_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU13333(
         .A(BU13333_A),
         .B(BU13333_B),
         .ADD(BU13333_ADD),
         .Q(BU13333_Q),
         .CLK(BU13333_CLK)
      );

      defparam BU13508.INIT = 'ha3a3;
      wire BU13508_I0;
         assign BU13508_I0 = n8468;
      wire BU13508_I1;
         assign BU13508_I1 = n11040;
      wire BU13508_I2;
         assign BU13508_I2 = n11039;
      wire BU13508_I3;
         assign BU13508_I3 = 1'b0;
      wire BU13508_O;
         assign n75457 = BU13508_O;
      LUT4       BU13508(
         .I0(BU13508_I0),
         .I1(BU13508_I1),
         .I2(BU13508_I2),
         .I3(BU13508_I3),
         .O(BU13508_O)
      );

      wire [27 : 0] BU13515_A;
         assign BU13515_A[0] = n9727;
         assign BU13515_A[1] = n9726;
         assign BU13515_A[2] = n9725;
         assign BU13515_A[3] = n9724;
         assign BU13515_A[4] = n9723;
         assign BU13515_A[5] = n9722;
         assign BU13515_A[6] = n9721;
         assign BU13515_A[7] = n9720;
         assign BU13515_A[8] = n9719;
         assign BU13515_A[9] = n9718;
         assign BU13515_A[10] = n9717;
         assign BU13515_A[11] = n9716;
         assign BU13515_A[12] = n9715;
         assign BU13515_A[13] = n9714;
         assign BU13515_A[14] = n9713;
         assign BU13515_A[15] = n9712;
         assign BU13515_A[16] = n9711;
         assign BU13515_A[17] = n9710;
         assign BU13515_A[18] = n9709;
         assign BU13515_A[19] = n9708;
         assign BU13515_A[20] = n9707;
         assign BU13515_A[21] = n9706;
         assign BU13515_A[22] = n9705;
         assign BU13515_A[23] = n9704;
         assign BU13515_A[24] = n9703;
         assign BU13515_A[25] = n9702;
         assign BU13515_A[26] = n9701;
         assign BU13515_A[27] = n9700;
      wire [27 : 0] BU13515_B;
         assign BU13515_B[0] = 1'b1;
         assign BU13515_B[1] = 1'b0;
         assign BU13515_B[2] = 1'b1;
         assign BU13515_B[3] = 1'b0;
         assign BU13515_B[4] = 1'b0;
         assign BU13515_B[5] = 1'b0;
         assign BU13515_B[6] = 1'b0;
         assign BU13515_B[7] = 1'b0;
         assign BU13515_B[8] = 1'b0;
         assign BU13515_B[9] = 1'b0;
         assign BU13515_B[10] = 1'b0;
         assign BU13515_B[11] = 1'b0;
         assign BU13515_B[12] = 1'b0;
         assign BU13515_B[13] = 1'b0;
         assign BU13515_B[14] = 1'b0;
         assign BU13515_B[15] = 1'b0;
         assign BU13515_B[16] = 1'b0;
         assign BU13515_B[17] = 1'b0;
         assign BU13515_B[18] = 1'b0;
         assign BU13515_B[19] = 1'b0;
         assign BU13515_B[20] = 1'b0;
         assign BU13515_B[21] = 1'b0;
         assign BU13515_B[22] = 1'b0;
         assign BU13515_B[23] = 1'b0;
         assign BU13515_B[24] = 1'b0;
         assign BU13515_B[25] = 1'b0;
         assign BU13515_B[26] = 1'b0;
         assign BU13515_B[27] = 1'b0;
      wire BU13515_ADD;
         assign BU13515_ADD = n77226;
      wire [27 : 0] BU13515_S;
         assign n77197 = BU13515_S[27];
      wire [27 : 0] BU13515_Q;
         assign n502 = BU13515_Q[0];
         assign n501 = BU13515_Q[1];
         assign n500 = BU13515_Q[2];
         assign n499 = BU13515_Q[3];
         assign n498 = BU13515_Q[4];
         assign n497 = BU13515_Q[5];
         assign n496 = BU13515_Q[6];
         assign n495 = BU13515_Q[7];
         assign n494 = BU13515_Q[8];
         assign n493 = BU13515_Q[9];
         assign n492 = BU13515_Q[10];
         assign n491 = BU13515_Q[11];
         assign n490 = BU13515_Q[12];
         assign n489 = BU13515_Q[13];
         assign n488 = BU13515_Q[14];
         assign n487 = BU13515_Q[15];
         assign n486 = BU13515_Q[16];
         assign n485 = BU13515_Q[17];
         assign n484 = BU13515_Q[18];
         assign n483 = BU13515_Q[19];
         assign n482 = BU13515_Q[20];
         assign n481 = BU13515_Q[21];
         assign n480 = BU13515_Q[22];
         assign n479 = BU13515_Q[23];
         assign n478 = BU13515_Q[24];
         assign n477 = BU13515_Q[25];
         assign n476 = BU13515_Q[26];
         assign n475 = BU13515_Q[27];
      wire BU13515_CLK;
         assign BU13515_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU13515(
         .A(BU13515_A),
         .B(BU13515_B),
         .ADD(BU13515_ADD),
         .S(BU13515_S),
         .Q(BU13515_Q),
         .CLK(BU13515_CLK)
      );

      defparam BU13690.INIT = 'h5c5c;
      wire BU13690_I0;
         assign BU13690_I0 = n8468;
      wire BU13690_I1;
         assign BU13690_I1 = n11040;
      wire BU13690_I2;
         assign BU13690_I2 = n11039;
      wire BU13690_I3;
         assign BU13690_I3 = 1'b0;
      wire BU13690_O;
         assign n77226 = BU13690_O;
      LUT4       BU13690(
         .I0(BU13690_I0),
         .I1(BU13690_I1),
         .I2(BU13690_I2),
         .I3(BU13690_I3),
         .O(BU13690_O)
      );

      wire [0 : 0] BU13695_D;
         assign BU13695_D[0] = n77197;
      wire [0 : 0] BU13695_Q;
      wire BU13695_CLK;
         assign BU13695_CLK = n1088;
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
      BU13695(
         .D(BU13695_D),
         .Q(BU13695_Q),
         .CLK(BU13695_CLK)
      );

      wire [0 : 0] BU13704_D;
         assign BU13704_D[0] = n10909;
      wire [0 : 0] BU13704_Q;
         assign n505 = BU13704_Q[0];
      wire BU13704_CLK;
         assign BU13704_CLK = n1088;
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
      BU13704(
         .D(BU13704_D),
         .Q(BU13704_Q),
         .CLK(BU13704_CLK)
      );

      wire [0 : 0] BU13711_D;
         assign BU13711_D[0] = n10908;
      wire [0 : 0] BU13711_Q;
         assign n504 = BU13711_Q[0];
      wire BU13711_CLK;
         assign BU13711_CLK = n1088;
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
      BU13711(
         .D(BU13711_D),
         .Q(BU13711_Q),
         .CLK(BU13711_CLK)
      );

      wire [0 : 0] BU13718_D;
         assign BU13718_D[0] = n10907;
      wire [0 : 0] BU13718_Q;
         assign n503 = BU13718_Q[0];
      wire BU13718_CLK;
         assign BU13718_CLK = n1088;
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
      BU13718(
         .D(BU13718_D),
         .Q(BU13718_Q),
         .CLK(BU13718_CLK)
      );

      wire [0 : 0] BU13725_D;
         assign BU13725_D[0] = n11039;
      wire [0 : 0] BU13725_Q;
      wire BU13725_CLK;
         assign BU13725_CLK = n1088;
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
      BU13725(
         .D(BU13725_D),
         .Q(BU13725_Q),
         .CLK(BU13725_CLK)
      );

      wire BU13749_CLK;
         assign BU13749_CLK = n1088;
      wire [0 : 0] BU13749_D;
         assign BU13749_D[0] = n446;
      wire [0 : 0] BU13749_Q;
         assign n78165 = BU13749_Q[0];
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
      BU13749(
         .CLK(BU13749_CLK),
         .D(BU13749_D),
         .Q(BU13749_Q)
      );

      wire BU13760_CLK;
         assign BU13760_CLK = n1088;
      wire [0 : 0] BU13760_D;
         assign BU13760_D[0] = n445;
      wire [0 : 0] BU13760_Q;
         assign n78164 = BU13760_Q[0];
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
      BU13760(
         .CLK(BU13760_CLK),
         .D(BU13760_D),
         .Q(BU13760_Q)
      );

      wire BU13771_CLK;
         assign BU13771_CLK = n1088;
      wire [0 : 0] BU13771_D;
         assign BU13771_D[0] = n444;
      wire [0 : 0] BU13771_Q;
         assign n78163 = BU13771_Q[0];
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
      BU13771(
         .CLK(BU13771_CLK),
         .D(BU13771_D),
         .Q(BU13771_Q)
      );

      wire BU13782_CLK;
         assign BU13782_CLK = n1088;
      wire [0 : 0] BU13782_D;
         assign BU13782_D[0] = n443;
      wire [0 : 0] BU13782_Q;
         assign n78162 = BU13782_Q[0];
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
      BU13782(
         .CLK(BU13782_CLK),
         .D(BU13782_D),
         .Q(BU13782_Q)
      );

      wire BU13793_CLK;
         assign BU13793_CLK = n1088;
      wire [0 : 0] BU13793_D;
         assign BU13793_D[0] = n442;
      wire [0 : 0] BU13793_Q;
         assign n78161 = BU13793_Q[0];
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
      BU13793(
         .CLK(BU13793_CLK),
         .D(BU13793_D),
         .Q(BU13793_Q)
      );

      wire BU13804_CLK;
         assign BU13804_CLK = n1088;
      wire [0 : 0] BU13804_D;
         assign BU13804_D[0] = n441;
      wire [0 : 0] BU13804_Q;
         assign n78160 = BU13804_Q[0];
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
      BU13804(
         .CLK(BU13804_CLK),
         .D(BU13804_D),
         .Q(BU13804_Q)
      );

      wire BU13815_CLK;
         assign BU13815_CLK = n1088;
      wire [0 : 0] BU13815_D;
         assign BU13815_D[0] = n440;
      wire [0 : 0] BU13815_Q;
         assign n78159 = BU13815_Q[0];
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
      BU13815(
         .CLK(BU13815_CLK),
         .D(BU13815_D),
         .Q(BU13815_Q)
      );

      wire BU13826_CLK;
         assign BU13826_CLK = n1088;
      wire [0 : 0] BU13826_D;
         assign BU13826_D[0] = n439;
      wire [0 : 0] BU13826_Q;
         assign n78158 = BU13826_Q[0];
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
      BU13826(
         .CLK(BU13826_CLK),
         .D(BU13826_D),
         .Q(BU13826_Q)
      );

      wire BU13837_CLK;
         assign BU13837_CLK = n1088;
      wire [0 : 0] BU13837_D;
         assign BU13837_D[0] = n438;
      wire [0 : 0] BU13837_Q;
         assign n78157 = BU13837_Q[0];
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
      BU13837(
         .CLK(BU13837_CLK),
         .D(BU13837_D),
         .Q(BU13837_Q)
      );

      wire BU13848_CLK;
         assign BU13848_CLK = n1088;
      wire [0 : 0] BU13848_D;
         assign BU13848_D[0] = n437;
      wire [0 : 0] BU13848_Q;
         assign n78156 = BU13848_Q[0];
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
      BU13848(
         .CLK(BU13848_CLK),
         .D(BU13848_D),
         .Q(BU13848_Q)
      );

      wire BU13859_CLK;
         assign BU13859_CLK = n1088;
      wire [0 : 0] BU13859_D;
         assign BU13859_D[0] = n436;
      wire [0 : 0] BU13859_Q;
         assign n78155 = BU13859_Q[0];
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
      BU13859(
         .CLK(BU13859_CLK),
         .D(BU13859_D),
         .Q(BU13859_Q)
      );

      wire BU13870_CLK;
         assign BU13870_CLK = n1088;
      wire [0 : 0] BU13870_D;
         assign BU13870_D[0] = n435;
      wire [0 : 0] BU13870_Q;
         assign n78154 = BU13870_Q[0];
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
      BU13870(
         .CLK(BU13870_CLK),
         .D(BU13870_D),
         .Q(BU13870_Q)
      );

      wire BU13881_CLK;
         assign BU13881_CLK = n1088;
      wire [0 : 0] BU13881_D;
         assign BU13881_D[0] = n434;
      wire [0 : 0] BU13881_Q;
         assign n78153 = BU13881_Q[0];
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
      BU13881(
         .CLK(BU13881_CLK),
         .D(BU13881_D),
         .Q(BU13881_Q)
      );

      wire BU13892_CLK;
         assign BU13892_CLK = n1088;
      wire [0 : 0] BU13892_D;
         assign BU13892_D[0] = n433;
      wire [0 : 0] BU13892_Q;
         assign n78152 = BU13892_Q[0];
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
      BU13892(
         .CLK(BU13892_CLK),
         .D(BU13892_D),
         .Q(BU13892_Q)
      );

      wire BU13903_CLK;
         assign BU13903_CLK = n1088;
      wire [0 : 0] BU13903_D;
         assign BU13903_D[0] = n432;
      wire [0 : 0] BU13903_Q;
         assign n78151 = BU13903_Q[0];
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
      BU13903(
         .CLK(BU13903_CLK),
         .D(BU13903_D),
         .Q(BU13903_Q)
      );

      wire BU13914_CLK;
         assign BU13914_CLK = n1088;
      wire [0 : 0] BU13914_D;
         assign BU13914_D[0] = n431;
      wire [0 : 0] BU13914_Q;
         assign n78150 = BU13914_Q[0];
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
      BU13914(
         .CLK(BU13914_CLK),
         .D(BU13914_D),
         .Q(BU13914_Q)
      );

      wire BU13925_CLK;
         assign BU13925_CLK = n1088;
      wire [0 : 0] BU13925_D;
         assign BU13925_D[0] = n430;
      wire [0 : 0] BU13925_Q;
         assign n78149 = BU13925_Q[0];
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
      BU13925(
         .CLK(BU13925_CLK),
         .D(BU13925_D),
         .Q(BU13925_Q)
      );

      wire BU13936_CLK;
         assign BU13936_CLK = n1088;
      wire [0 : 0] BU13936_D;
         assign BU13936_D[0] = n429;
      wire [0 : 0] BU13936_Q;
         assign n78148 = BU13936_Q[0];
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
      BU13936(
         .CLK(BU13936_CLK),
         .D(BU13936_D),
         .Q(BU13936_Q)
      );

      wire BU13947_CLK;
         assign BU13947_CLK = n1088;
      wire [0 : 0] BU13947_D;
         assign BU13947_D[0] = n428;
      wire [0 : 0] BU13947_Q;
         assign n78147 = BU13947_Q[0];
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
      BU13947(
         .CLK(BU13947_CLK),
         .D(BU13947_D),
         .Q(BU13947_Q)
      );

      wire BU13958_CLK;
         assign BU13958_CLK = n1088;
      wire [0 : 0] BU13958_D;
         assign BU13958_D[0] = n427;
      wire [0 : 0] BU13958_Q;
         assign n78146 = BU13958_Q[0];
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
      BU13958(
         .CLK(BU13958_CLK),
         .D(BU13958_D),
         .Q(BU13958_Q)
      );

      wire BU13969_CLK;
         assign BU13969_CLK = n1088;
      wire [0 : 0] BU13969_D;
         assign BU13969_D[0] = n426;
      wire [0 : 0] BU13969_Q;
         assign n78145 = BU13969_Q[0];
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
      BU13969(
         .CLK(BU13969_CLK),
         .D(BU13969_D),
         .Q(BU13969_Q)
      );

      wire BU13980_CLK;
         assign BU13980_CLK = n1088;
      wire [0 : 0] BU13980_D;
         assign BU13980_D[0] = n425;
      wire [0 : 0] BU13980_Q;
         assign n78144 = BU13980_Q[0];
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
      BU13980(
         .CLK(BU13980_CLK),
         .D(BU13980_D),
         .Q(BU13980_Q)
      );

      wire BU13991_CLK;
         assign BU13991_CLK = n1088;
      wire [0 : 0] BU13991_D;
         assign BU13991_D[0] = n424;
      wire [0 : 0] BU13991_Q;
         assign n78143 = BU13991_Q[0];
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
      BU13991(
         .CLK(BU13991_CLK),
         .D(BU13991_D),
         .Q(BU13991_Q)
      );

      wire BU14002_CLK;
         assign BU14002_CLK = n1088;
      wire [0 : 0] BU14002_D;
         assign BU14002_D[0] = n423;
      wire [0 : 0] BU14002_Q;
         assign n78142 = BU14002_Q[0];
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
      BU14002(
         .CLK(BU14002_CLK),
         .D(BU14002_D),
         .Q(BU14002_Q)
      );

      wire BU14013_CLK;
         assign BU14013_CLK = n1088;
      wire [0 : 0] BU14013_D;
         assign BU14013_D[0] = n422;
      wire [0 : 0] BU14013_Q;
         assign n78141 = BU14013_Q[0];
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
      BU14013(
         .CLK(BU14013_CLK),
         .D(BU14013_D),
         .Q(BU14013_Q)
      );

      wire BU14024_CLK;
         assign BU14024_CLK = n1088;
      wire [0 : 0] BU14024_D;
         assign BU14024_D[0] = n421;
      wire [0 : 0] BU14024_Q;
         assign n78140 = BU14024_Q[0];
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
      BU14024(
         .CLK(BU14024_CLK),
         .D(BU14024_D),
         .Q(BU14024_Q)
      );

      wire BU14035_CLK;
         assign BU14035_CLK = n1088;
      wire [0 : 0] BU14035_D;
         assign BU14035_D[0] = n420;
      wire [0 : 0] BU14035_Q;
         assign n78139 = BU14035_Q[0];
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
      BU14035(
         .CLK(BU14035_CLK),
         .D(BU14035_D),
         .Q(BU14035_Q)
      );

      wire BU14046_CLK;
         assign BU14046_CLK = n1088;
      wire [0 : 0] BU14046_D;
         assign BU14046_D[0] = n419;
      wire [0 : 0] BU14046_Q;
         assign n78138 = BU14046_Q[0];
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
      BU14046(
         .CLK(BU14046_CLK),
         .D(BU14046_D),
         .Q(BU14046_Q)
      );

      wire [27 : 0] BU14226_D;
         assign BU14226_D[0] = n78523;
         assign BU14226_D[1] = n78522;
         assign BU14226_D[2] = n78521;
         assign BU14226_D[3] = n78520;
         assign BU14226_D[4] = n78519;
         assign BU14226_D[5] = n78518;
         assign BU14226_D[6] = n78517;
         assign BU14226_D[7] = n78516;
         assign BU14226_D[8] = n78515;
         assign BU14226_D[9] = n78514;
         assign BU14226_D[10] = n78513;
         assign BU14226_D[11] = n78512;
         assign BU14226_D[12] = n78511;
         assign BU14226_D[13] = n78510;
         assign BU14226_D[14] = n78509;
         assign BU14226_D[15] = n78508;
         assign BU14226_D[16] = n78507;
         assign BU14226_D[17] = n78506;
         assign BU14226_D[18] = n78505;
         assign BU14226_D[19] = n78504;
         assign BU14226_D[20] = n78503;
         assign BU14226_D[21] = n78502;
         assign BU14226_D[22] = n78501;
         assign BU14226_D[23] = n78500;
         assign BU14226_D[24] = n78499;
         assign BU14226_D[25] = n78498;
         assign BU14226_D[26] = n78497;
         assign BU14226_D[27] = n78496;
      wire [27 : 0] BU14226_Q;
         assign n78551 = BU14226_Q[0];
         assign n78550 = BU14226_Q[1];
         assign n78549 = BU14226_Q[2];
         assign n78548 = BU14226_Q[3];
         assign n78547 = BU14226_Q[4];
         assign n78546 = BU14226_Q[5];
         assign n78545 = BU14226_Q[6];
         assign n78544 = BU14226_Q[7];
         assign n78543 = BU14226_Q[8];
         assign n78542 = BU14226_Q[9];
         assign n78541 = BU14226_Q[10];
         assign n78540 = BU14226_Q[11];
         assign n78539 = BU14226_Q[12];
         assign n78538 = BU14226_Q[13];
         assign n78537 = BU14226_Q[14];
         assign n78536 = BU14226_Q[15];
         assign n78535 = BU14226_Q[16];
         assign n78534 = BU14226_Q[17];
         assign n78533 = BU14226_Q[18];
         assign n78532 = BU14226_Q[19];
         assign n78531 = BU14226_Q[20];
         assign n78530 = BU14226_Q[21];
         assign n78529 = BU14226_Q[22];
         assign n78528 = BU14226_Q[23];
         assign n78527 = BU14226_Q[24];
         assign n78526 = BU14226_Q[25];
         assign n78525 = BU14226_Q[26];
         assign n78524 = BU14226_Q[27];
      wire BU14226_CLK;
         assign BU14226_CLK = n1088;
      C_REG_FD_V7_0 #(
         "0000000000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         28    /* c_width*/
      )
      BU14226(
         .D(BU14226_D),
         .Q(BU14226_Q),
         .CLK(BU14226_CLK)
      );

      wire [0 : 0] BU14538_D;
         assign BU14538_D[0] = n505;
      wire [0 : 0] BU14538_Q;
         assign n80402 = BU14538_Q[0];
      wire BU14538_CLK;
         assign BU14538_CLK = n1088;
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
      BU14538(
         .D(BU14538_D),
         .Q(BU14538_Q),
         .CLK(BU14538_CLK)
      );

      wire [0 : 0] BU14545_D;
         assign BU14545_D[0] = n80402;
      wire [0 : 0] BU14545_Q;
         assign n78222 = BU14545_Q[0];
      wire BU14545_CLK;
         assign BU14545_CLK = n1088;
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
      BU14545(
         .D(BU14545_D),
         .Q(BU14545_Q),
         .CLK(BU14545_CLK)
      );

      defparam BU14059.INIT = 'h0cca;
      wire BU14059_I0;
         assign BU14059_I0 = 1'b0;
      wire BU14059_I1;
         assign BU14059_I1 = 1'b0;
      wire BU14059_I2;
         assign BU14059_I2 = n503;
      wire BU14059_I3;
         assign BU14059_I3 = n504;
      wire BU14059_O;
         assign n78523 = BU14059_O;
      LUT4       BU14059(
         .I0(BU14059_I0),
         .I1(BU14059_I1),
         .I2(BU14059_I2),
         .I3(BU14059_I3),
         .O(BU14059_O)
      );

      defparam BU14065.INIT = 'h0cca;
      wire BU14065_I0;
         assign BU14065_I0 = 1'b0;
      wire BU14065_I1;
         assign BU14065_I1 = 1'b0;
      wire BU14065_I2;
         assign BU14065_I2 = n503;
      wire BU14065_I3;
         assign BU14065_I3 = n504;
      wire BU14065_O;
         assign n78522 = BU14065_O;
      LUT4       BU14065(
         .I0(BU14065_I0),
         .I1(BU14065_I1),
         .I2(BU14065_I2),
         .I3(BU14065_I3),
         .O(BU14065_O)
      );

      defparam BU14071.INIT = 'h0cca;
      wire BU14071_I0;
         assign BU14071_I0 = 1'b0;
      wire BU14071_I1;
         assign BU14071_I1 = 1'b0;
      wire BU14071_I2;
         assign BU14071_I2 = n503;
      wire BU14071_I3;
         assign BU14071_I3 = n504;
      wire BU14071_O;
         assign n78521 = BU14071_O;
      LUT4       BU14071(
         .I0(BU14071_I0),
         .I1(BU14071_I1),
         .I2(BU14071_I2),
         .I3(BU14071_I3),
         .O(BU14071_O)
      );

      defparam BU14077.INIT = 'h0cca;
      wire BU14077_I0;
         assign BU14077_I0 = 1'b0;
      wire BU14077_I1;
         assign BU14077_I1 = 1'b0;
      wire BU14077_I2;
         assign BU14077_I2 = n503;
      wire BU14077_I3;
         assign BU14077_I3 = n504;
      wire BU14077_O;
         assign n78520 = BU14077_O;
      LUT4       BU14077(
         .I0(BU14077_I0),
         .I1(BU14077_I1),
         .I2(BU14077_I2),
         .I3(BU14077_I3),
         .O(BU14077_O)
      );

      defparam BU14083.INIT = 'h0cca;
      wire BU14083_I0;
         assign BU14083_I0 = 1'b0;
      wire BU14083_I1;
         assign BU14083_I1 = 1'b0;
      wire BU14083_I2;
         assign BU14083_I2 = n503;
      wire BU14083_I3;
         assign BU14083_I3 = n504;
      wire BU14083_O;
         assign n78519 = BU14083_O;
      LUT4       BU14083(
         .I0(BU14083_I0),
         .I1(BU14083_I1),
         .I2(BU14083_I2),
         .I3(BU14083_I3),
         .O(BU14083_O)
      );

      defparam BU14089.INIT = 'h0cca;
      wire BU14089_I0;
         assign BU14089_I0 = 1'b0;
      wire BU14089_I1;
         assign BU14089_I1 = 1'b0;
      wire BU14089_I2;
         assign BU14089_I2 = n503;
      wire BU14089_I3;
         assign BU14089_I3 = n504;
      wire BU14089_O;
         assign n78518 = BU14089_O;
      LUT4       BU14089(
         .I0(BU14089_I0),
         .I1(BU14089_I1),
         .I2(BU14089_I2),
         .I3(BU14089_I3),
         .O(BU14089_O)
      );

      defparam BU14095.INIT = 'h0cca;
      wire BU14095_I0;
         assign BU14095_I0 = 1'b0;
      wire BU14095_I1;
         assign BU14095_I1 = 1'b0;
      wire BU14095_I2;
         assign BU14095_I2 = n503;
      wire BU14095_I3;
         assign BU14095_I3 = n504;
      wire BU14095_O;
         assign n78517 = BU14095_O;
      LUT4       BU14095(
         .I0(BU14095_I0),
         .I1(BU14095_I1),
         .I2(BU14095_I2),
         .I3(BU14095_I3),
         .O(BU14095_O)
      );

      defparam BU14101.INIT = 'h0cca;
      wire BU14101_I0;
         assign BU14101_I0 = 1'b0;
      wire BU14101_I1;
         assign BU14101_I1 = 1'b0;
      wire BU14101_I2;
         assign BU14101_I2 = n503;
      wire BU14101_I3;
         assign BU14101_I3 = n504;
      wire BU14101_O;
         assign n78516 = BU14101_O;
      LUT4       BU14101(
         .I0(BU14101_I0),
         .I1(BU14101_I1),
         .I2(BU14101_I2),
         .I3(BU14101_I3),
         .O(BU14101_O)
      );

      defparam BU14107.INIT = 'h0cca;
      wire BU14107_I0;
         assign BU14107_I0 = 1'b0;
      wire BU14107_I1;
         assign BU14107_I1 = 1'b0;
      wire BU14107_I2;
         assign BU14107_I2 = n503;
      wire BU14107_I3;
         assign BU14107_I3 = n504;
      wire BU14107_O;
         assign n78515 = BU14107_O;
      LUT4       BU14107(
         .I0(BU14107_I0),
         .I1(BU14107_I1),
         .I2(BU14107_I2),
         .I3(BU14107_I3),
         .O(BU14107_O)
      );

      defparam BU14113.INIT = 'h0cca;
      wire BU14113_I0;
         assign BU14113_I0 = 1'b0;
      wire BU14113_I1;
         assign BU14113_I1 = 1'b0;
      wire BU14113_I2;
         assign BU14113_I2 = n503;
      wire BU14113_I3;
         assign BU14113_I3 = n504;
      wire BU14113_O;
         assign n78514 = BU14113_O;
      LUT4       BU14113(
         .I0(BU14113_I0),
         .I1(BU14113_I1),
         .I2(BU14113_I2),
         .I3(BU14113_I3),
         .O(BU14113_O)
      );

      defparam BU14119.INIT = 'h0cca;
      wire BU14119_I0;
         assign BU14119_I0 = 1'b0;
      wire BU14119_I1;
         assign BU14119_I1 = 1'b0;
      wire BU14119_I2;
         assign BU14119_I2 = n503;
      wire BU14119_I3;
         assign BU14119_I3 = n504;
      wire BU14119_O;
         assign n78513 = BU14119_O;
      LUT4       BU14119(
         .I0(BU14119_I0),
         .I1(BU14119_I1),
         .I2(BU14119_I2),
         .I3(BU14119_I3),
         .O(BU14119_O)
      );

      defparam BU14125.INIT = 'h0cca;
      wire BU14125_I0;
         assign BU14125_I0 = 1'b0;
      wire BU14125_I1;
         assign BU14125_I1 = 1'b0;
      wire BU14125_I2;
         assign BU14125_I2 = n503;
      wire BU14125_I3;
         assign BU14125_I3 = n504;
      wire BU14125_O;
         assign n78512 = BU14125_O;
      LUT4       BU14125(
         .I0(BU14125_I0),
         .I1(BU14125_I1),
         .I2(BU14125_I2),
         .I3(BU14125_I3),
         .O(BU14125_O)
      );

      defparam BU14131.INIT = 'h0cca;
      wire BU14131_I0;
         assign BU14131_I0 = 1'b0;
      wire BU14131_I1;
         assign BU14131_I1 = 1'b0;
      wire BU14131_I2;
         assign BU14131_I2 = n503;
      wire BU14131_I3;
         assign BU14131_I3 = n504;
      wire BU14131_O;
         assign n78511 = BU14131_O;
      LUT4       BU14131(
         .I0(BU14131_I0),
         .I1(BU14131_I1),
         .I2(BU14131_I2),
         .I3(BU14131_I3),
         .O(BU14131_O)
      );

      defparam BU14137.INIT = 'h0cca;
      wire BU14137_I0;
         assign BU14137_I0 = 1'b0;
      wire BU14137_I1;
         assign BU14137_I1 = 1'b0;
      wire BU14137_I2;
         assign BU14137_I2 = n503;
      wire BU14137_I3;
         assign BU14137_I3 = n504;
      wire BU14137_O;
         assign n78510 = BU14137_O;
      LUT4       BU14137(
         .I0(BU14137_I0),
         .I1(BU14137_I1),
         .I2(BU14137_I2),
         .I3(BU14137_I3),
         .O(BU14137_O)
      );

      defparam BU14143.INIT = 'h0cca;
      wire BU14143_I0;
         assign BU14143_I0 = 1'b0;
      wire BU14143_I1;
         assign BU14143_I1 = 1'b0;
      wire BU14143_I2;
         assign BU14143_I2 = n503;
      wire BU14143_I3;
         assign BU14143_I3 = n504;
      wire BU14143_O;
         assign n78509 = BU14143_O;
      LUT4       BU14143(
         .I0(BU14143_I0),
         .I1(BU14143_I1),
         .I2(BU14143_I2),
         .I3(BU14143_I3),
         .O(BU14143_O)
      );

      defparam BU14149.INIT = 'h0cca;
      wire BU14149_I0;
         assign BU14149_I0 = 1'b0;
      wire BU14149_I1;
         assign BU14149_I1 = 1'b0;
      wire BU14149_I2;
         assign BU14149_I2 = n503;
      wire BU14149_I3;
         assign BU14149_I3 = n504;
      wire BU14149_O;
         assign n78508 = BU14149_O;
      LUT4       BU14149(
         .I0(BU14149_I0),
         .I1(BU14149_I1),
         .I2(BU14149_I2),
         .I3(BU14149_I3),
         .O(BU14149_O)
      );

      defparam BU14155.INIT = 'h0cca;
      wire BU14155_I0;
         assign BU14155_I0 = 1'b0;
      wire BU14155_I1;
         assign BU14155_I1 = 1'b0;
      wire BU14155_I2;
         assign BU14155_I2 = n503;
      wire BU14155_I3;
         assign BU14155_I3 = n504;
      wire BU14155_O;
         assign n78507 = BU14155_O;
      LUT4       BU14155(
         .I0(BU14155_I0),
         .I1(BU14155_I1),
         .I2(BU14155_I2),
         .I3(BU14155_I3),
         .O(BU14155_O)
      );

      defparam BU14161.INIT = 'h0cca;
      wire BU14161_I0;
         assign BU14161_I0 = 1'b0;
      wire BU14161_I1;
         assign BU14161_I1 = 1'b0;
      wire BU14161_I2;
         assign BU14161_I2 = n503;
      wire BU14161_I3;
         assign BU14161_I3 = n504;
      wire BU14161_O;
         assign n78506 = BU14161_O;
      LUT4       BU14161(
         .I0(BU14161_I0),
         .I1(BU14161_I1),
         .I2(BU14161_I2),
         .I3(BU14161_I3),
         .O(BU14161_O)
      );

      defparam BU14167.INIT = 'h0cca;
      wire BU14167_I0;
         assign BU14167_I0 = 1'b0;
      wire BU14167_I1;
         assign BU14167_I1 = 1'b0;
      wire BU14167_I2;
         assign BU14167_I2 = n503;
      wire BU14167_I3;
         assign BU14167_I3 = n504;
      wire BU14167_O;
         assign n78505 = BU14167_O;
      LUT4       BU14167(
         .I0(BU14167_I0),
         .I1(BU14167_I1),
         .I2(BU14167_I2),
         .I3(BU14167_I3),
         .O(BU14167_O)
      );

      defparam BU14173.INIT = 'h0cca;
      wire BU14173_I0;
         assign BU14173_I0 = 1'b0;
      wire BU14173_I1;
         assign BU14173_I1 = 1'b0;
      wire BU14173_I2;
         assign BU14173_I2 = n503;
      wire BU14173_I3;
         assign BU14173_I3 = n504;
      wire BU14173_O;
         assign n78504 = BU14173_O;
      LUT4       BU14173(
         .I0(BU14173_I0),
         .I1(BU14173_I1),
         .I2(BU14173_I2),
         .I3(BU14173_I3),
         .O(BU14173_O)
      );

      defparam BU14179.INIT = 'h0cca;
      wire BU14179_I0;
         assign BU14179_I0 = 1'b0;
      wire BU14179_I1;
         assign BU14179_I1 = 1'b0;
      wire BU14179_I2;
         assign BU14179_I2 = n503;
      wire BU14179_I3;
         assign BU14179_I3 = n504;
      wire BU14179_O;
         assign n78503 = BU14179_O;
      LUT4       BU14179(
         .I0(BU14179_I0),
         .I1(BU14179_I1),
         .I2(BU14179_I2),
         .I3(BU14179_I3),
         .O(BU14179_O)
      );

      defparam BU14185.INIT = 'h0cca;
      wire BU14185_I0;
         assign BU14185_I0 = 1'b0;
      wire BU14185_I1;
         assign BU14185_I1 = 1'b0;
      wire BU14185_I2;
         assign BU14185_I2 = n503;
      wire BU14185_I3;
         assign BU14185_I3 = n504;
      wire BU14185_O;
         assign n78502 = BU14185_O;
      LUT4       BU14185(
         .I0(BU14185_I0),
         .I1(BU14185_I1),
         .I2(BU14185_I2),
         .I3(BU14185_I3),
         .O(BU14185_O)
      );

      defparam BU14191.INIT = 'h0cca;
      wire BU14191_I0;
         assign BU14191_I0 = 1'b0;
      wire BU14191_I1;
         assign BU14191_I1 = 1'b0;
      wire BU14191_I2;
         assign BU14191_I2 = n503;
      wire BU14191_I3;
         assign BU14191_I3 = n504;
      wire BU14191_O;
         assign n78501 = BU14191_O;
      LUT4       BU14191(
         .I0(BU14191_I0),
         .I1(BU14191_I1),
         .I2(BU14191_I2),
         .I3(BU14191_I3),
         .O(BU14191_O)
      );

      defparam BU14197.INIT = 'h0cca;
      wire BU14197_I0;
         assign BU14197_I0 = 1'b0;
      wire BU14197_I1;
         assign BU14197_I1 = 1'b0;
      wire BU14197_I2;
         assign BU14197_I2 = n503;
      wire BU14197_I3;
         assign BU14197_I3 = n504;
      wire BU14197_O;
         assign n78500 = BU14197_O;
      LUT4       BU14197(
         .I0(BU14197_I0),
         .I1(BU14197_I1),
         .I2(BU14197_I2),
         .I3(BU14197_I3),
         .O(BU14197_O)
      );

      defparam BU14203.INIT = 'h0cca;
      wire BU14203_I0;
         assign BU14203_I0 = 1'b0;
      wire BU14203_I1;
         assign BU14203_I1 = 1'b1;
      wire BU14203_I2;
         assign BU14203_I2 = n503;
      wire BU14203_I3;
         assign BU14203_I3 = n504;
      wire BU14203_O;
         assign n78499 = BU14203_O;
      LUT4       BU14203(
         .I0(BU14203_I0),
         .I1(BU14203_I1),
         .I2(BU14203_I2),
         .I3(BU14203_I3),
         .O(BU14203_O)
      );

      defparam BU14209.INIT = 'h0cca;
      wire BU14209_I0;
         assign BU14209_I0 = 1'b1;
      wire BU14209_I1;
         assign BU14209_I1 = 1'b1;
      wire BU14209_I2;
         assign BU14209_I2 = n503;
      wire BU14209_I3;
         assign BU14209_I3 = n504;
      wire BU14209_O;
         assign n78498 = BU14209_O;
      LUT4       BU14209(
         .I0(BU14209_I0),
         .I1(BU14209_I1),
         .I2(BU14209_I2),
         .I3(BU14209_I3),
         .O(BU14209_O)
      );

      defparam BU14215.INIT = 'h0cca;
      wire BU14215_I0;
         assign BU14215_I0 = 1'b1;
      wire BU14215_I1;
         assign BU14215_I1 = 1'b1;
      wire BU14215_I2;
         assign BU14215_I2 = n503;
      wire BU14215_I3;
         assign BU14215_I3 = n504;
      wire BU14215_O;
         assign n78497 = BU14215_O;
      LUT4       BU14215(
         .I0(BU14215_I0),
         .I1(BU14215_I1),
         .I2(BU14215_I2),
         .I3(BU14215_I3),
         .O(BU14215_O)
      );

      defparam BU14221.INIT = 'h0cca;
      wire BU14221_I0;
         assign BU14221_I0 = 1'b1;
      wire BU14221_I1;
         assign BU14221_I1 = 1'b1;
      wire BU14221_I2;
         assign BU14221_I2 = n503;
      wire BU14221_I3;
         assign BU14221_I3 = n504;
      wire BU14221_O;
         assign n78496 = BU14221_O;
      LUT4       BU14221(
         .I0(BU14221_I0),
         .I1(BU14221_I1),
         .I2(BU14221_I2),
         .I3(BU14221_I3),
         .O(BU14221_O)
      );

      defparam BU14523.INIT = 'hf0f5;
      wire BU14523_I0;
         assign BU14523_I0 = n475;
      wire BU14523_I1;
         assign BU14523_I1 = 1'b0;
      wire BU14523_I2;
         assign BU14523_I2 = n503;
      wire BU14523_I3;
         assign BU14523_I3 = n504;
      wire BU14523_O;
         assign n78580 = BU14523_O;
      LUT4       BU14523(
         .I0(BU14523_I0),
         .I1(BU14523_I1),
         .I2(BU14523_I2),
         .I3(BU14523_I3),
         .O(BU14523_O)
      );

      wire [27 : 0] BU14348_A;
         assign BU14348_A[0] = n78579;
         assign BU14348_A[1] = n78578;
         assign BU14348_A[2] = n78577;
         assign BU14348_A[3] = n78576;
         assign BU14348_A[4] = n78575;
         assign BU14348_A[5] = n78574;
         assign BU14348_A[6] = n78573;
         assign BU14348_A[7] = n78572;
         assign BU14348_A[8] = n78571;
         assign BU14348_A[9] = n78570;
         assign BU14348_A[10] = n78569;
         assign BU14348_A[11] = n78568;
         assign BU14348_A[12] = n78567;
         assign BU14348_A[13] = n78566;
         assign BU14348_A[14] = n78565;
         assign BU14348_A[15] = n78564;
         assign BU14348_A[16] = n78563;
         assign BU14348_A[17] = n78562;
         assign BU14348_A[18] = n78561;
         assign BU14348_A[19] = n78560;
         assign BU14348_A[20] = n78559;
         assign BU14348_A[21] = n78558;
         assign BU14348_A[22] = n78557;
         assign BU14348_A[23] = n78556;
         assign BU14348_A[24] = n78555;
         assign BU14348_A[25] = n78554;
         assign BU14348_A[26] = n78553;
         assign BU14348_A[27] = n78552;
      wire [27 : 0] BU14348_B;
         assign BU14348_B[0] = n78551;
         assign BU14348_B[1] = n78550;
         assign BU14348_B[2] = n78549;
         assign BU14348_B[3] = n78548;
         assign BU14348_B[4] = n78547;
         assign BU14348_B[5] = n78546;
         assign BU14348_B[6] = n78545;
         assign BU14348_B[7] = n78544;
         assign BU14348_B[8] = n78543;
         assign BU14348_B[9] = n78542;
         assign BU14348_B[10] = n78541;
         assign BU14348_B[11] = n78540;
         assign BU14348_B[12] = n78539;
         assign BU14348_B[13] = n78538;
         assign BU14348_B[14] = n78537;
         assign BU14348_B[15] = n78536;
         assign BU14348_B[16] = n78535;
         assign BU14348_B[17] = n78534;
         assign BU14348_B[18] = n78533;
         assign BU14348_B[19] = n78532;
         assign BU14348_B[20] = n78531;
         assign BU14348_B[21] = n78530;
         assign BU14348_B[22] = n78529;
         assign BU14348_B[23] = n78528;
         assign BU14348_B[24] = n78527;
         assign BU14348_B[25] = n78526;
         assign BU14348_B[26] = n78525;
         assign BU14348_B[27] = n78524;
      wire BU14348_ADD;
         assign BU14348_ADD = n78581;
      wire [27 : 0] BU14348_Q;
         assign n78221 = BU14348_Q[0];
         assign n78220 = BU14348_Q[1];
         assign n78219 = BU14348_Q[2];
         assign n78218 = BU14348_Q[3];
         assign n78217 = BU14348_Q[4];
         assign n78216 = BU14348_Q[5];
         assign n78215 = BU14348_Q[6];
         assign n78214 = BU14348_Q[7];
         assign n78213 = BU14348_Q[8];
         assign n78212 = BU14348_Q[9];
         assign n78211 = BU14348_Q[10];
         assign n78210 = BU14348_Q[11];
         assign n78209 = BU14348_Q[12];
         assign n78208 = BU14348_Q[13];
         assign n78207 = BU14348_Q[14];
         assign n78206 = BU14348_Q[15];
         assign n78205 = BU14348_Q[16];
         assign n78204 = BU14348_Q[17];
         assign n78203 = BU14348_Q[18];
         assign n78202 = BU14348_Q[19];
         assign n78201 = BU14348_Q[20];
         assign n78200 = BU14348_Q[21];
         assign n78199 = BU14348_Q[22];
         assign n78198 = BU14348_Q[23];
         assign n78197 = BU14348_Q[24];
         assign n78196 = BU14348_Q[25];
         assign n78195 = BU14348_Q[26];
         assign n78194 = BU14348_Q[27];
      wire BU14348_CLK;
         assign BU14348_CLK = n1088;
      C_ADDSUB_V7_0 #(
         2    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU14348(
         .A(BU14348_A),
         .B(BU14348_B),
         .ADD(BU14348_ADD),
         .Q(BU14348_Q),
         .CLK(BU14348_CLK)
      );

      wire [27 : 0] BU14287_D;
         assign BU14287_D[0] = n502;
         assign BU14287_D[1] = n501;
         assign BU14287_D[2] = n500;
         assign BU14287_D[3] = n499;
         assign BU14287_D[4] = n498;
         assign BU14287_D[5] = n497;
         assign BU14287_D[6] = n496;
         assign BU14287_D[7] = n495;
         assign BU14287_D[8] = n494;
         assign BU14287_D[9] = n493;
         assign BU14287_D[10] = n492;
         assign BU14287_D[11] = n491;
         assign BU14287_D[12] = n490;
         assign BU14287_D[13] = n489;
         assign BU14287_D[14] = n488;
         assign BU14287_D[15] = n487;
         assign BU14287_D[16] = n486;
         assign BU14287_D[17] = n485;
         assign BU14287_D[18] = n484;
         assign BU14287_D[19] = n483;
         assign BU14287_D[20] = n482;
         assign BU14287_D[21] = n481;
         assign BU14287_D[22] = n480;
         assign BU14287_D[23] = n479;
         assign BU14287_D[24] = n478;
         assign BU14287_D[25] = n477;
         assign BU14287_D[26] = n476;
         assign BU14287_D[27] = n475;
      wire [27 : 0] BU14287_Q;
         assign n78579 = BU14287_Q[0];
         assign n78578 = BU14287_Q[1];
         assign n78577 = BU14287_Q[2];
         assign n78576 = BU14287_Q[3];
         assign n78575 = BU14287_Q[4];
         assign n78574 = BU14287_Q[5];
         assign n78573 = BU14287_Q[6];
         assign n78572 = BU14287_Q[7];
         assign n78571 = BU14287_Q[8];
         assign n78570 = BU14287_Q[9];
         assign n78569 = BU14287_Q[10];
         assign n78568 = BU14287_Q[11];
         assign n78567 = BU14287_Q[12];
         assign n78566 = BU14287_Q[13];
         assign n78565 = BU14287_Q[14];
         assign n78564 = BU14287_Q[15];
         assign n78563 = BU14287_Q[16];
         assign n78562 = BU14287_Q[17];
         assign n78561 = BU14287_Q[18];
         assign n78560 = BU14287_Q[19];
         assign n78559 = BU14287_Q[20];
         assign n78558 = BU14287_Q[21];
         assign n78557 = BU14287_Q[22];
         assign n78556 = BU14287_Q[23];
         assign n78555 = BU14287_Q[24];
         assign n78554 = BU14287_Q[25];
         assign n78553 = BU14287_Q[26];
         assign n78552 = BU14287_Q[27];
      wire BU14287_CLK;
         assign BU14287_CLK = n1088;
      C_REG_FD_V7_0 #(
         "0000000000000000000000000000"    /* c_ainit_val*/,
         1    /* c_enable_rlocs*/,
         0    /* c_has_aclr*/,
         0    /* c_has_ainit*/,
         0    /* c_has_aset*/,
         0    /* c_has_ce*/,
         0    /* c_has_sclr*/,
         0    /* c_has_sinit*/,
         0    /* c_has_sset*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         0    /* c_sync_priority*/,
         28    /* c_width*/
      )
      BU14287(
         .D(BU14287_D),
         .Q(BU14287_Q),
         .CLK(BU14287_CLK)
      );

      wire [0 : 0] BU14528_D;
         assign BU14528_D[0] = n78580;
      wire [0 : 0] BU14528_Q;
         assign n78581 = BU14528_Q[0];
      wire BU14528_CLK;
         assign BU14528_CLK = n1088;
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
      BU14528(
         .D(BU14528_D),
         .Q(BU14528_Q),
         .CLK(BU14528_CLK)
      );

      wire BU14552_clk;
         assign BU14552_clk = n1088;
      wire [27 : 0] BU14552_a;
         assign BU14552_a[27] = n78138;
         assign BU14552_a[26] = n78139;
         assign BU14552_a[25] = n78140;
         assign BU14552_a[24] = n78141;
         assign BU14552_a[23] = n78142;
         assign BU14552_a[22] = n78143;
         assign BU14552_a[21] = n78144;
         assign BU14552_a[20] = n78145;
         assign BU14552_a[19] = n78146;
         assign BU14552_a[18] = n78147;
         assign BU14552_a[17] = n78148;
         assign BU14552_a[16] = n78149;
         assign BU14552_a[15] = n78150;
         assign BU14552_a[14] = n78151;
         assign BU14552_a[13] = n78152;
         assign BU14552_a[12] = n78153;
         assign BU14552_a[11] = n78154;
         assign BU14552_a[10] = n78155;
         assign BU14552_a[9] = n78156;
         assign BU14552_a[8] = n78157;
         assign BU14552_a[7] = n78158;
         assign BU14552_a[6] = n78159;
         assign BU14552_a[5] = n78160;
         assign BU14552_a[4] = n78161;
         assign BU14552_a[3] = n78162;
         assign BU14552_a[2] = n78163;
         assign BU14552_a[1] = n78164;
         assign BU14552_a[0] = n78165;
      wire [27 : 0] BU14552_b;
         assign BU14552_b[27] = 1'b0;
         assign BU14552_b[26] = 1'b0;
         assign BU14552_b[25] = 1'b1;
         assign BU14552_b[24] = 1'b1;
         assign BU14552_b[23] = 1'b0;
         assign BU14552_b[22] = 1'b1;
         assign BU14552_b[21] = 1'b1;
         assign BU14552_b[20] = 1'b0;
         assign BU14552_b[19] = 1'b1;
         assign BU14552_b[18] = 1'b1;
         assign BU14552_b[17] = 1'b1;
         assign BU14552_b[16] = 1'b1;
         assign BU14552_b[15] = 1'b0;
         assign BU14552_b[14] = 1'b1;
         assign BU14552_b[13] = 1'b1;
         assign BU14552_b[12] = 1'b0;
         assign BU14552_b[11] = 1'b0;
         assign BU14552_b[10] = 1'b1;
         assign BU14552_b[9] = 1'b0;
         assign BU14552_b[8] = 1'b1;
         assign BU14552_b[7] = 1'b0;
         assign BU14552_b[6] = 1'b1;
         assign BU14552_b[5] = 1'b1;
         assign BU14552_b[4] = 1'b0;
         assign BU14552_b[3] = 1'b1;
         assign BU14552_b[2] = 1'b1;
         assign BU14552_b[1] = 1'b0;
         assign BU14552_b[0] = 1'b0;
      wire [29 : 0] BU14552_o;
      wire [29 : 0] BU14552_q;
         assign n78223 = BU14552_q[27];
         assign n78224 = BU14552_q[26];
         assign n78225 = BU14552_q[25];
         assign n78226 = BU14552_q[24];
         assign n78227 = BU14552_q[23];
         assign n78228 = BU14552_q[22];
         assign n78229 = BU14552_q[21];
         assign n78230 = BU14552_q[20];
         assign n78231 = BU14552_q[19];
         assign n78232 = BU14552_q[18];
         assign n78233 = BU14552_q[17];
         assign n78234 = BU14552_q[16];
         assign n78235 = BU14552_q[15];
         assign n78236 = BU14552_q[14];
         assign n78237 = BU14552_q[13];
         assign n78238 = BU14552_q[12];
         assign n78239 = BU14552_q[11];
         assign n78240 = BU14552_q[10];
         assign n78241 = BU14552_q[9];
         assign n78242 = BU14552_q[8];
         assign n78243 = BU14552_q[7];
         assign n78244 = BU14552_q[6];
         assign n78245 = BU14552_q[5];
         assign n78246 = BU14552_q[4];
         assign n78247 = BU14552_q[3];
         assign n78248 = BU14552_q[2];
         assign n78249 = BU14552_q[1];
         assign n78250 = BU14552_q[0];
      wire BU14552_a_signed;
         assign BU14552_a_signed = 1'b0;
      wire BU14552_loadb;
         assign BU14552_loadb = 1'b0;
      wire BU14552_load_done;
      wire BU14552_swapb;
         assign BU14552_swapb = 1'b0;
      wire BU14552_ce;
         assign BU14552_ce = 1'b1;
      wire BU14552_aclr;
         assign BU14552_aclr = 1'b0;
      wire BU14552_sclr;
         assign BU14552_sclr = 1'b0;
      wire BU14552_rfd;
      wire BU14552_nd;
         assign BU14552_nd = 1'b1;
      wire BU14552_rdy;
      MULT_GEN_V7_0 #(
         8    /* bram_addr_width*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         28    /* c_baat*/,
         0    /* c_b_constant*/,
         1    /* c_b_type*/,
         "0011011011110110010101101100"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         30    /* c_out_width*/,
         1    /* c_pipeline*/,
         1    /* c_reg_a_b_inputs*/,
         0    /* c_sqm_type*/,
         1    /* c_stack_adders*/,
         0    /* c_standalone*/,
         1    /* c_sync_enable*/,
         1    /* c_use_luts*/,
         1    /* c_v2_speed*/
      )
      BU14552(
         .CLK(BU14552_clk),
         .A(BU14552_a),
         .B(BU14552_b),
         .O(BU14552_o),
         .Q(BU14552_q),
         .A_SIGNED(BU14552_a_signed),
         .LOADB(BU14552_loadb),
         .LOAD_DONE(BU14552_load_done),
         .SWAPB(BU14552_swapb),
         .CE(BU14552_ce),
         .ACLR(BU14552_aclr),
         .SCLR(BU14552_sclr),
         .RFD(BU14552_rfd),
         .ND(BU14552_nd),
         .RDY(BU14552_rdy)
      );

      wire BU15940_CLK;
         assign BU15940_CLK = n1088;
      wire [0 : 0] BU15940_D;
         assign BU15940_D[0] = n78221;
      wire [0 : 0] BU15940_Q;
         assign n78306 = BU15940_Q[0];
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
      BU15940(
         .CLK(BU15940_CLK),
         .D(BU15940_D),
         .Q(BU15940_Q)
      );

      wire BU15951_CLK;
         assign BU15951_CLK = n1088;
      wire [0 : 0] BU15951_D;
         assign BU15951_D[0] = n78220;
      wire [0 : 0] BU15951_Q;
         assign n78305 = BU15951_Q[0];
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
      BU15951(
         .CLK(BU15951_CLK),
         .D(BU15951_D),
         .Q(BU15951_Q)
      );

      wire BU15962_CLK;
         assign BU15962_CLK = n1088;
      wire [0 : 0] BU15962_D;
         assign BU15962_D[0] = n78219;
      wire [0 : 0] BU15962_Q;
         assign n78304 = BU15962_Q[0];
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
      BU15962(
         .CLK(BU15962_CLK),
         .D(BU15962_D),
         .Q(BU15962_Q)
      );

      wire BU15973_CLK;
         assign BU15973_CLK = n1088;
      wire [0 : 0] BU15973_D;
         assign BU15973_D[0] = n78218;
      wire [0 : 0] BU15973_Q;
         assign n78303 = BU15973_Q[0];
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
      BU15973(
         .CLK(BU15973_CLK),
         .D(BU15973_D),
         .Q(BU15973_Q)
      );

      wire BU15984_CLK;
         assign BU15984_CLK = n1088;
      wire [0 : 0] BU15984_D;
         assign BU15984_D[0] = n78217;
      wire [0 : 0] BU15984_Q;
         assign n78302 = BU15984_Q[0];
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
      BU15984(
         .CLK(BU15984_CLK),
         .D(BU15984_D),
         .Q(BU15984_Q)
      );

      wire BU15995_CLK;
         assign BU15995_CLK = n1088;
      wire [0 : 0] BU15995_D;
         assign BU15995_D[0] = n78216;
      wire [0 : 0] BU15995_Q;
         assign n78301 = BU15995_Q[0];
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
      BU15995(
         .CLK(BU15995_CLK),
         .D(BU15995_D),
         .Q(BU15995_Q)
      );

      wire BU16006_CLK;
         assign BU16006_CLK = n1088;
      wire [0 : 0] BU16006_D;
         assign BU16006_D[0] = n78215;
      wire [0 : 0] BU16006_Q;
         assign n78300 = BU16006_Q[0];
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
      BU16006(
         .CLK(BU16006_CLK),
         .D(BU16006_D),
         .Q(BU16006_Q)
      );

      wire BU16017_CLK;
         assign BU16017_CLK = n1088;
      wire [0 : 0] BU16017_D;
         assign BU16017_D[0] = n78214;
      wire [0 : 0] BU16017_Q;
         assign n78299 = BU16017_Q[0];
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
      BU16017(
         .CLK(BU16017_CLK),
         .D(BU16017_D),
         .Q(BU16017_Q)
      );

      wire BU16028_CLK;
         assign BU16028_CLK = n1088;
      wire [0 : 0] BU16028_D;
         assign BU16028_D[0] = n78213;
      wire [0 : 0] BU16028_Q;
         assign n78298 = BU16028_Q[0];
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
      BU16028(
         .CLK(BU16028_CLK),
         .D(BU16028_D),
         .Q(BU16028_Q)
      );

      wire BU16039_CLK;
         assign BU16039_CLK = n1088;
      wire [0 : 0] BU16039_D;
         assign BU16039_D[0] = n78212;
      wire [0 : 0] BU16039_Q;
         assign n78297 = BU16039_Q[0];
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
      BU16039(
         .CLK(BU16039_CLK),
         .D(BU16039_D),
         .Q(BU16039_Q)
      );

      wire BU16050_CLK;
         assign BU16050_CLK = n1088;
      wire [0 : 0] BU16050_D;
         assign BU16050_D[0] = n78211;
      wire [0 : 0] BU16050_Q;
         assign n78296 = BU16050_Q[0];
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
      BU16050(
         .CLK(BU16050_CLK),
         .D(BU16050_D),
         .Q(BU16050_Q)
      );

      wire BU16061_CLK;
         assign BU16061_CLK = n1088;
      wire [0 : 0] BU16061_D;
         assign BU16061_D[0] = n78210;
      wire [0 : 0] BU16061_Q;
         assign n78295 = BU16061_Q[0];
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
      BU16061(
         .CLK(BU16061_CLK),
         .D(BU16061_D),
         .Q(BU16061_Q)
      );

      wire BU16072_CLK;
         assign BU16072_CLK = n1088;
      wire [0 : 0] BU16072_D;
         assign BU16072_D[0] = n78209;
      wire [0 : 0] BU16072_Q;
         assign n78294 = BU16072_Q[0];
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
      BU16072(
         .CLK(BU16072_CLK),
         .D(BU16072_D),
         .Q(BU16072_Q)
      );

      wire BU16083_CLK;
         assign BU16083_CLK = n1088;
      wire [0 : 0] BU16083_D;
         assign BU16083_D[0] = n78208;
      wire [0 : 0] BU16083_Q;
         assign n78293 = BU16083_Q[0];
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
      BU16083(
         .CLK(BU16083_CLK),
         .D(BU16083_D),
         .Q(BU16083_Q)
      );

      wire BU16094_CLK;
         assign BU16094_CLK = n1088;
      wire [0 : 0] BU16094_D;
         assign BU16094_D[0] = n78207;
      wire [0 : 0] BU16094_Q;
         assign n78292 = BU16094_Q[0];
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
      BU16094(
         .CLK(BU16094_CLK),
         .D(BU16094_D),
         .Q(BU16094_Q)
      );

      wire BU16105_CLK;
         assign BU16105_CLK = n1088;
      wire [0 : 0] BU16105_D;
         assign BU16105_D[0] = n78206;
      wire [0 : 0] BU16105_Q;
         assign n78291 = BU16105_Q[0];
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
      BU16105(
         .CLK(BU16105_CLK),
         .D(BU16105_D),
         .Q(BU16105_Q)
      );

      wire BU16116_CLK;
         assign BU16116_CLK = n1088;
      wire [0 : 0] BU16116_D;
         assign BU16116_D[0] = n78205;
      wire [0 : 0] BU16116_Q;
         assign n78290 = BU16116_Q[0];
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
      BU16116(
         .CLK(BU16116_CLK),
         .D(BU16116_D),
         .Q(BU16116_Q)
      );

      wire BU16127_CLK;
         assign BU16127_CLK = n1088;
      wire [0 : 0] BU16127_D;
         assign BU16127_D[0] = n78204;
      wire [0 : 0] BU16127_Q;
         assign n78289 = BU16127_Q[0];
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
      BU16127(
         .CLK(BU16127_CLK),
         .D(BU16127_D),
         .Q(BU16127_Q)
      );

      wire BU16138_CLK;
         assign BU16138_CLK = n1088;
      wire [0 : 0] BU16138_D;
         assign BU16138_D[0] = n78203;
      wire [0 : 0] BU16138_Q;
         assign n78288 = BU16138_Q[0];
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
      BU16138(
         .CLK(BU16138_CLK),
         .D(BU16138_D),
         .Q(BU16138_Q)
      );

      wire BU16149_CLK;
         assign BU16149_CLK = n1088;
      wire [0 : 0] BU16149_D;
         assign BU16149_D[0] = n78202;
      wire [0 : 0] BU16149_Q;
         assign n78287 = BU16149_Q[0];
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
      BU16149(
         .CLK(BU16149_CLK),
         .D(BU16149_D),
         .Q(BU16149_Q)
      );

      wire BU16160_CLK;
         assign BU16160_CLK = n1088;
      wire [0 : 0] BU16160_D;
         assign BU16160_D[0] = n78201;
      wire [0 : 0] BU16160_Q;
         assign n78286 = BU16160_Q[0];
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
      BU16160(
         .CLK(BU16160_CLK),
         .D(BU16160_D),
         .Q(BU16160_Q)
      );

      wire BU16171_CLK;
         assign BU16171_CLK = n1088;
      wire [0 : 0] BU16171_D;
         assign BU16171_D[0] = n78200;
      wire [0 : 0] BU16171_Q;
         assign n78285 = BU16171_Q[0];
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
      BU16171(
         .CLK(BU16171_CLK),
         .D(BU16171_D),
         .Q(BU16171_Q)
      );

      wire BU16182_CLK;
         assign BU16182_CLK = n1088;
      wire [0 : 0] BU16182_D;
         assign BU16182_D[0] = n78199;
      wire [0 : 0] BU16182_Q;
         assign n78284 = BU16182_Q[0];
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
      BU16182(
         .CLK(BU16182_CLK),
         .D(BU16182_D),
         .Q(BU16182_Q)
      );

      wire BU16193_CLK;
         assign BU16193_CLK = n1088;
      wire [0 : 0] BU16193_D;
         assign BU16193_D[0] = n78198;
      wire [0 : 0] BU16193_Q;
         assign n78283 = BU16193_Q[0];
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
      BU16193(
         .CLK(BU16193_CLK),
         .D(BU16193_D),
         .Q(BU16193_Q)
      );

      wire BU16204_CLK;
         assign BU16204_CLK = n1088;
      wire [0 : 0] BU16204_D;
         assign BU16204_D[0] = n78197;
      wire [0 : 0] BU16204_Q;
         assign n78282 = BU16204_Q[0];
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
      BU16204(
         .CLK(BU16204_CLK),
         .D(BU16204_D),
         .Q(BU16204_Q)
      );

      wire BU16215_CLK;
         assign BU16215_CLK = n1088;
      wire [0 : 0] BU16215_D;
         assign BU16215_D[0] = n78196;
      wire [0 : 0] BU16215_Q;
         assign n78281 = BU16215_Q[0];
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
      BU16215(
         .CLK(BU16215_CLK),
         .D(BU16215_D),
         .Q(BU16215_Q)
      );

      wire BU16226_CLK;
         assign BU16226_CLK = n1088;
      wire [0 : 0] BU16226_D;
         assign BU16226_D[0] = n78195;
      wire [0 : 0] BU16226_Q;
         assign n78280 = BU16226_Q[0];
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
      BU16226(
         .CLK(BU16226_CLK),
         .D(BU16226_D),
         .Q(BU16226_Q)
      );

      wire BU16237_CLK;
         assign BU16237_CLK = n1088;
      wire [0 : 0] BU16237_D;
         assign BU16237_D[0] = n78194;
      wire [0 : 0] BU16237_Q;
         assign n78279 = BU16237_Q[0];
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
      BU16237(
         .CLK(BU16237_CLK),
         .D(BU16237_D),
         .Q(BU16237_Q)
      );

      wire [0 : 0] BU16252_D;
         assign BU16252_D[0] = n78222;
      wire [0 : 0] BU16252_Q;
         assign n83812 = BU16252_Q[0];
      wire BU16252_CLK;
         assign BU16252_CLK = n1088;
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
      BU16252(
         .D(BU16252_D),
         .Q(BU16252_Q),
         .CLK(BU16252_CLK)
      );

      wire [0 : 0] BU16259_D;
         assign BU16259_D[0] = n83812;
      wire [0 : 0] BU16259_Q;
         assign n83811 = BU16259_Q[0];
      wire BU16259_CLK;
         assign BU16259_CLK = n1088;
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
      BU16259(
         .D(BU16259_D),
         .Q(BU16259_Q),
         .CLK(BU16259_CLK)
      );

      wire [0 : 0] BU16266_D;
         assign BU16266_D[0] = n83811;
      wire [0 : 0] BU16266_Q;
         assign n83810 = BU16266_Q[0];
      wire BU16266_CLK;
         assign BU16266_CLK = n1088;
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
      BU16266(
         .D(BU16266_D),
         .Q(BU16266_Q),
         .CLK(BU16266_CLK)
      );

      wire [0 : 0] BU16273_D;
         assign BU16273_D[0] = n83810;
      wire [0 : 0] BU16273_Q;
         assign n83809 = BU16273_Q[0];
      wire BU16273_CLK;
         assign BU16273_CLK = n1088;
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
      BU16273(
         .D(BU16273_D),
         .Q(BU16273_Q),
         .CLK(BU16273_CLK)
      );

      wire [0 : 0] BU16280_D;
         assign BU16280_D[0] = n83809;
      wire [0 : 0] BU16280_Q;
         assign n78307 = BU16280_Q[0];
      wire BU16280_CLK;
         assign BU16280_CLK = n1088;
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
      BU16280(
         .D(BU16280_D),
         .Q(BU16280_Q),
         .CLK(BU16280_CLK)
      );

      defparam BU16291.INIT = 'h5555;
      wire BU16291_I0;
         assign BU16291_I0 = n78223;
      wire BU16291_I1;
         assign BU16291_I1 = 1'b0;
      wire BU16291_I2;
         assign BU16291_I2 = 1'b0;
      wire BU16291_I3;
         assign BU16291_I3 = 1'b0;
      wire BU16291_O;
         assign n84033 = BU16291_O;
      LUT4       BU16291(
         .I0(BU16291_I0),
         .I1(BU16291_I1),
         .I2(BU16291_I2),
         .I3(BU16291_I3),
         .O(BU16291_O)
      );

      wire [27 : 0] BU16296_A;
         assign BU16296_A[0] = n78250;
         assign BU16296_A[1] = n78249;
         assign BU16296_A[2] = n78248;
         assign BU16296_A[3] = n78247;
         assign BU16296_A[4] = n78246;
         assign BU16296_A[5] = n78245;
         assign BU16296_A[6] = n78244;
         assign BU16296_A[7] = n78243;
         assign BU16296_A[8] = n78242;
         assign BU16296_A[9] = n78241;
         assign BU16296_A[10] = n78240;
         assign BU16296_A[11] = n78239;
         assign BU16296_A[12] = n78238;
         assign BU16296_A[13] = n78237;
         assign BU16296_A[14] = n78236;
         assign BU16296_A[15] = n78235;
         assign BU16296_A[16] = n78234;
         assign BU16296_A[17] = n78233;
         assign BU16296_A[18] = n78232;
         assign BU16296_A[19] = n78231;
         assign BU16296_A[20] = n78230;
         assign BU16296_A[21] = n78229;
         assign BU16296_A[22] = n78228;
         assign BU16296_A[23] = n78227;
         assign BU16296_A[24] = n78226;
         assign BU16296_A[25] = n78225;
         assign BU16296_A[26] = n78224;
         assign BU16296_A[27] = n78223;
      wire [27 : 0] BU16296_B;
         assign BU16296_B[0] = 1'b1;
         assign BU16296_B[1] = 1'b1;
         assign BU16296_B[2] = 1'b1;
         assign BU16296_B[3] = 1'b1;
         assign BU16296_B[4] = 1'b0;
         assign BU16296_B[5] = 1'b0;
         assign BU16296_B[6] = 1'b0;
         assign BU16296_B[7] = 1'b0;
         assign BU16296_B[8] = 1'b0;
         assign BU16296_B[9] = 1'b0;
         assign BU16296_B[10] = 1'b0;
         assign BU16296_B[11] = 1'b0;
         assign BU16296_B[12] = 1'b0;
         assign BU16296_B[13] = 1'b0;
         assign BU16296_B[14] = 1'b0;
         assign BU16296_B[15] = 1'b0;
         assign BU16296_B[16] = 1'b0;
         assign BU16296_B[17] = 1'b0;
         assign BU16296_B[18] = 1'b0;
         assign BU16296_B[19] = 1'b0;
         assign BU16296_B[20] = 1'b0;
         assign BU16296_B[21] = 1'b0;
         assign BU16296_B[22] = 1'b0;
         assign BU16296_B[23] = 1'b0;
         assign BU16296_B[24] = 1'b0;
         assign BU16296_B[25] = 1'b0;
         assign BU16296_B[26] = 1'b0;
         assign BU16296_B[27] = 1'b0;
      wire BU16296_C_IN;
         assign BU16296_C_IN = n84033;
      wire [27 : 0] BU16296_Q;
         assign n528 = BU16296_Q[5];
         assign n527 = BU16296_Q[6];
         assign n526 = BU16296_Q[7];
         assign n525 = BU16296_Q[8];
         assign n524 = BU16296_Q[9];
         assign n523 = BU16296_Q[10];
         assign n522 = BU16296_Q[11];
         assign n521 = BU16296_Q[12];
         assign n520 = BU16296_Q[13];
         assign n519 = BU16296_Q[14];
         assign n518 = BU16296_Q[15];
         assign n517 = BU16296_Q[16];
         assign n516 = BU16296_Q[17];
         assign n515 = BU16296_Q[18];
         assign n514 = BU16296_Q[19];
         assign n513 = BU16296_Q[20];
         assign n512 = BU16296_Q[21];
         assign n511 = BU16296_Q[22];
         assign n510 = BU16296_Q[23];
         assign n509 = BU16296_Q[24];
         assign n508 = BU16296_Q[25];
         assign n507 = BU16296_Q[26];
         assign n506 = BU16296_Q[27];
      wire BU16296_CLK;
         assign BU16296_CLK = n1088;
      wire BU16296_CE;
         assign BU16296_CE = n78585;
      C_ADDSUB_V7_0 #(
         0    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU16296(
         .A(BU16296_A),
         .B(BU16296_B),
         .C_IN(BU16296_C_IN),
         .Q(BU16296_Q),
         .CLK(BU16296_CLK),
         .CE(BU16296_CE)
      );

      defparam BU16650.INIT = 'he0e0;
      wire BU16650_I0;
         assign BU16650_I0 = 1'b0;
      wire BU16650_I1;
         assign BU16650_I1 = n78307;
      wire BU16650_I2;
         assign BU16650_I2 = 1'b1;
      wire BU16650_I3;
         assign BU16650_I3 = 1'b0;
      wire BU16650_O;
         assign n78585 = BU16650_O;
      LUT4       BU16650(
         .I0(BU16650_I0),
         .I1(BU16650_I1),
         .I2(BU16650_I2),
         .I3(BU16650_I3),
         .O(BU16650_O)
      );

      wire [0 : 0] BU16655_D;
         assign BU16655_D[0] = n78307;
      wire [0 : 0] BU16655_Q;
         assign n575 = BU16655_Q[0];
      wire BU16655_CLK;
         assign BU16655_CLK = n1088;
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
      BU16655(
         .D(BU16655_D),
         .Q(BU16655_Q),
         .CLK(BU16655_CLK)
      );

      defparam BU16472.INIT = 'h5555;
      wire BU16472_I0;
         assign BU16472_I0 = n78279;
      wire BU16472_I1;
         assign BU16472_I1 = 1'b0;
      wire BU16472_I2;
         assign BU16472_I2 = 1'b0;
      wire BU16472_I3;
         assign BU16472_I3 = 1'b0;
      wire BU16472_O;
         assign n85049 = BU16472_O;
      LUT4       BU16472(
         .I0(BU16472_I0),
         .I1(BU16472_I1),
         .I2(BU16472_I2),
         .I3(BU16472_I3),
         .O(BU16472_O)
      );

      wire [27 : 0] BU16477_A;
         assign BU16477_A[0] = n78306;
         assign BU16477_A[1] = n78305;
         assign BU16477_A[2] = n78304;
         assign BU16477_A[3] = n78303;
         assign BU16477_A[4] = n78302;
         assign BU16477_A[5] = n78301;
         assign BU16477_A[6] = n78300;
         assign BU16477_A[7] = n78299;
         assign BU16477_A[8] = n78298;
         assign BU16477_A[9] = n78297;
         assign BU16477_A[10] = n78296;
         assign BU16477_A[11] = n78295;
         assign BU16477_A[12] = n78294;
         assign BU16477_A[13] = n78293;
         assign BU16477_A[14] = n78292;
         assign BU16477_A[15] = n78291;
         assign BU16477_A[16] = n78290;
         assign BU16477_A[17] = n78289;
         assign BU16477_A[18] = n78288;
         assign BU16477_A[19] = n78287;
         assign BU16477_A[20] = n78286;
         assign BU16477_A[21] = n78285;
         assign BU16477_A[22] = n78284;
         assign BU16477_A[23] = n78283;
         assign BU16477_A[24] = n78282;
         assign BU16477_A[25] = n78281;
         assign BU16477_A[26] = n78280;
         assign BU16477_A[27] = n78279;
      wire [27 : 0] BU16477_B;
         assign BU16477_B[0] = 1'b1;
         assign BU16477_B[1] = 1'b1;
         assign BU16477_B[2] = 1'b1;
         assign BU16477_B[3] = 1'b1;
         assign BU16477_B[4] = 1'b0;
         assign BU16477_B[5] = 1'b0;
         assign BU16477_B[6] = 1'b0;
         assign BU16477_B[7] = 1'b0;
         assign BU16477_B[8] = 1'b0;
         assign BU16477_B[9] = 1'b0;
         assign BU16477_B[10] = 1'b0;
         assign BU16477_B[11] = 1'b0;
         assign BU16477_B[12] = 1'b0;
         assign BU16477_B[13] = 1'b0;
         assign BU16477_B[14] = 1'b0;
         assign BU16477_B[15] = 1'b0;
         assign BU16477_B[16] = 1'b0;
         assign BU16477_B[17] = 1'b0;
         assign BU16477_B[18] = 1'b0;
         assign BU16477_B[19] = 1'b0;
         assign BU16477_B[20] = 1'b0;
         assign BU16477_B[21] = 1'b0;
         assign BU16477_B[22] = 1'b0;
         assign BU16477_B[23] = 1'b0;
         assign BU16477_B[24] = 1'b0;
         assign BU16477_B[25] = 1'b0;
         assign BU16477_B[26] = 1'b0;
         assign BU16477_B[27] = 1'b0;
      wire BU16477_C_IN;
         assign BU16477_C_IN = n85049;
      wire [27 : 0] BU16477_Q;
         assign n574 = BU16477_Q[5];
         assign n573 = BU16477_Q[6];
         assign n572 = BU16477_Q[7];
         assign n571 = BU16477_Q[8];
         assign n570 = BU16477_Q[9];
         assign n569 = BU16477_Q[10];
         assign n568 = BU16477_Q[11];
         assign n567 = BU16477_Q[12];
         assign n566 = BU16477_Q[13];
         assign n565 = BU16477_Q[14];
         assign n564 = BU16477_Q[15];
         assign n563 = BU16477_Q[16];
         assign n562 = BU16477_Q[17];
         assign n561 = BU16477_Q[18];
         assign n560 = BU16477_Q[19];
         assign n559 = BU16477_Q[20];
         assign n558 = BU16477_Q[21];
         assign n557 = BU16477_Q[22];
         assign n556 = BU16477_Q[23];
         assign n555 = BU16477_Q[24];
         assign n554 = BU16477_Q[25];
         assign n553 = BU16477_Q[26];
         assign n552 = BU16477_Q[27];
      wire BU16477_CLK;
         assign BU16477_CLK = n1088;
      wire BU16477_CE;
         assign BU16477_CE = n78585;
      C_ADDSUB_V7_0 #(
         0    /* c_add_mode*/,
         "0000000000000000000000000000"    /* c_ainit_val*/,
         0    /* c_a_type*/,
         28    /* c_a_width*/,
         0    /* c_bypass_enable*/,
         0    /* c_bypass_low*/,
         0    /* c_b_constant*/,
         0    /* c_b_type*/,
         "0000000000000000000000000000"    /* c_b_value*/,
         28    /* c_b_width*/,
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
         27    /* c_high_bit*/,
         1    /* c_latency*/,
         0    /* c_low_bit*/,
         28    /* c_out_width*/,
         0    /* c_pipe_stages*/,
         "0000000000000000000000000000"    /* c_sinit_val*/,
         1    /* c_sync_enable*/,
         1    /* c_sync_priority*/
      )
      BU16477(
         .A(BU16477_A),
         .B(BU16477_B),
         .C_IN(BU16477_C_IN),
         .Q(BU16477_Q),
         .CLK(BU16477_CLK),
         .CE(BU16477_CE)
      );

      wire BU16658_I;
         assign BU16658_I = n528;
      wire BU16658_O;
      BUF       BU16658(
         .I(BU16658_I),
         .O(BU16658_O)
      );

      wire BU16659_I;
         assign BU16659_I = n527;
      wire BU16659_O;
      BUF       BU16659(
         .I(BU16659_I),
         .O(BU16659_O)
      );

      wire BU16660_I;
         assign BU16660_I = n526;
      wire BU16660_O;
      BUF       BU16660(
         .I(BU16660_I),
         .O(BU16660_O)
      );

      wire BU16661_I;
         assign BU16661_I = n525;
      wire BU16661_O;
      BUF       BU16661(
         .I(BU16661_I),
         .O(BU16661_O)
      );

      wire BU16662_I;
         assign BU16662_I = n524;
      wire BU16662_O;
      BUF       BU16662(
         .I(BU16662_I),
         .O(BU16662_O)
      );

      wire BU16663_I;
         assign BU16663_I = n523;
      wire BU16663_O;
      BUF       BU16663(
         .I(BU16663_I),
         .O(BU16663_O)
      );

      wire BU16664_I;
         assign BU16664_I = n522;
      wire BU16664_O;
      BUF       BU16664(
         .I(BU16664_I),
         .O(BU16664_O)
      );

      wire BU16665_I;
         assign BU16665_I = n521;
      wire BU16665_O;
      BUF       BU16665(
         .I(BU16665_I),
         .O(BU16665_O)
      );

      wire BU16666_I;
         assign BU16666_I = n520;
      wire BU16666_O;
      BUF       BU16666(
         .I(BU16666_I),
         .O(BU16666_O)
      );

      wire BU16667_I;
         assign BU16667_I = n519;
      wire BU16667_O;
      BUF       BU16667(
         .I(BU16667_I),
         .O(BU16667_O)
      );

      wire BU16668_I;
         assign BU16668_I = n518;
      wire BU16668_O;
      BUF       BU16668(
         .I(BU16668_I),
         .O(BU16668_O)
      );

      wire BU16669_I;
         assign BU16669_I = n517;
      wire BU16669_O;
      BUF       BU16669(
         .I(BU16669_I),
         .O(BU16669_O)
      );

      wire BU16670_I;
         assign BU16670_I = n516;
      wire BU16670_O;
      BUF       BU16670(
         .I(BU16670_I),
         .O(BU16670_O)
      );

      wire BU16671_I;
         assign BU16671_I = n515;
      wire BU16671_O;
      BUF       BU16671(
         .I(BU16671_I),
         .O(BU16671_O)
      );

      wire BU16672_I;
         assign BU16672_I = n514;
      wire BU16672_O;
      BUF       BU16672(
         .I(BU16672_I),
         .O(BU16672_O)
      );

      wire BU16673_I;
         assign BU16673_I = n513;
      wire BU16673_O;
      BUF       BU16673(
         .I(BU16673_I),
         .O(BU16673_O)
      );

      wire BU16674_I;
         assign BU16674_I = n512;
      wire BU16674_O;
      BUF       BU16674(
         .I(BU16674_I),
         .O(BU16674_O)
      );

      wire BU16675_I;
         assign BU16675_I = n511;
      wire BU16675_O;
      BUF       BU16675(
         .I(BU16675_I),
         .O(BU16675_O)
      );

      wire BU16676_I;
         assign BU16676_I = n510;
      wire BU16676_O;
      BUF       BU16676(
         .I(BU16676_I),
         .O(BU16676_O)
      );

      wire BU16677_I;
         assign BU16677_I = n509;
      wire BU16677_O;
      BUF       BU16677(
         .I(BU16677_I),
         .O(BU16677_O)
      );

      wire BU16678_I;
         assign BU16678_I = n508;
      wire BU16678_O;
      BUF       BU16678(
         .I(BU16678_I),
         .O(BU16678_O)
      );

      wire BU16679_I;
         assign BU16679_I = n507;
      wire BU16679_O;
      BUF       BU16679(
         .I(BU16679_I),
         .O(BU16679_O)
      );

      wire BU16680_I;
         assign BU16680_I = n506;
      wire BU16680_O;
      BUF       BU16680(
         .I(BU16680_I),
         .O(BU16680_O)
      );

      wire BU16681_I;
         assign BU16681_I = n574;
      wire BU16681_O;
      BUF       BU16681(
         .I(BU16681_I),
         .O(BU16681_O)
      );

      wire BU16682_I;
         assign BU16682_I = n573;
      wire BU16682_O;
      BUF       BU16682(
         .I(BU16682_I),
         .O(BU16682_O)
      );

      wire BU16683_I;
         assign BU16683_I = n572;
      wire BU16683_O;
      BUF       BU16683(
         .I(BU16683_I),
         .O(BU16683_O)
      );

      wire BU16684_I;
         assign BU16684_I = n571;
      wire BU16684_O;
      BUF       BU16684(
         .I(BU16684_I),
         .O(BU16684_O)
      );

      wire BU16685_I;
         assign BU16685_I = n570;
      wire BU16685_O;
      BUF       BU16685(
         .I(BU16685_I),
         .O(BU16685_O)
      );

      wire BU16686_I;
         assign BU16686_I = n569;
      wire BU16686_O;
      BUF       BU16686(
         .I(BU16686_I),
         .O(BU16686_O)
      );

      wire BU16687_I;
         assign BU16687_I = n568;
      wire BU16687_O;
      BUF       BU16687(
         .I(BU16687_I),
         .O(BU16687_O)
      );

      wire BU16688_I;
         assign BU16688_I = n567;
      wire BU16688_O;
      BUF       BU16688(
         .I(BU16688_I),
         .O(BU16688_O)
      );

      wire BU16689_I;
         assign BU16689_I = n566;
      wire BU16689_O;
      BUF       BU16689(
         .I(BU16689_I),
         .O(BU16689_O)
      );

      wire BU16690_I;
         assign BU16690_I = n565;
      wire BU16690_O;
      BUF       BU16690(
         .I(BU16690_I),
         .O(BU16690_O)
      );

      wire BU16691_I;
         assign BU16691_I = n564;
      wire BU16691_O;
      BUF       BU16691(
         .I(BU16691_I),
         .O(BU16691_O)
      );

      wire BU16692_I;
         assign BU16692_I = n563;
      wire BU16692_O;
      BUF       BU16692(
         .I(BU16692_I),
         .O(BU16692_O)
      );

      wire BU16693_I;
         assign BU16693_I = n562;
      wire BU16693_O;
      BUF       BU16693(
         .I(BU16693_I),
         .O(BU16693_O)
      );

      wire BU16694_I;
         assign BU16694_I = n561;
      wire BU16694_O;
      BUF       BU16694(
         .I(BU16694_I),
         .O(BU16694_O)
      );

      wire BU16695_I;
         assign BU16695_I = n560;
      wire BU16695_O;
      BUF       BU16695(
         .I(BU16695_I),
         .O(BU16695_O)
      );

      wire BU16696_I;
         assign BU16696_I = n559;
      wire BU16696_O;
      BUF       BU16696(
         .I(BU16696_I),
         .O(BU16696_O)
      );

      wire BU16697_I;
         assign BU16697_I = n558;
      wire BU16697_O;
      BUF       BU16697(
         .I(BU16697_I),
         .O(BU16697_O)
      );

      wire BU16698_I;
         assign BU16698_I = n557;
      wire BU16698_O;
      BUF       BU16698(
         .I(BU16698_I),
         .O(BU16698_O)
      );

      wire BU16699_I;
         assign BU16699_I = n556;
      wire BU16699_O;
      BUF       BU16699(
         .I(BU16699_I),
         .O(BU16699_O)
      );

      wire BU16700_I;
         assign BU16700_I = n555;
      wire BU16700_O;
      BUF       BU16700(
         .I(BU16700_I),
         .O(BU16700_O)
      );

      wire BU16701_I;
         assign BU16701_I = n554;
      wire BU16701_O;
      BUF       BU16701(
         .I(BU16701_I),
         .O(BU16701_O)
      );

      wire BU16702_I;
         assign BU16702_I = n553;
      wire BU16702_O;
      BUF       BU16702(
         .I(BU16702_I),
         .O(BU16702_O)
      );

      wire BU16703_I;
         assign BU16703_I = n552;
      wire BU16703_O;
      BUF       BU16703(
         .I(BU16703_I),
         .O(BU16703_O)
      );

      wire BU16704_I;
         assign BU16704_I = n575;
      wire BU16704_O;
      BUF       BU16704(
         .I(BU16704_I),
         .O(BU16704_O)
      );

//synthesis translate_on

endmodule
