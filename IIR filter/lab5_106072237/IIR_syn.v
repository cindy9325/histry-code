/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Jun 11 13:41:14 2018
/////////////////////////////////////////////////////////////


module IIR_1_DW01_inc_0 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[19]), .B(A[19]), .Y(SUM[19]) );
endmodule


module IIR_1_DW01_add_67 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_66 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
endmodule


module IIR_1_DW01_add_65 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_63 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_62 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_61 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_60 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_59 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_58 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_55 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_54 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
endmodule


module IIR_1_DW01_add_53 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_52 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_50 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_46 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[6]) );
  CLKINVX1 U2 ( .A(B[5]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[5]), .B(n1), .Y(SUM[5]) );
  CLKINVX1 U4 ( .A(A[5]), .Y(n1) );
endmodule


module IIR_1_DW01_add_45 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[0];

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
endmodule


module IIR_1_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [25:0] carry;

  ADDFXL U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n3), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n2), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n2) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n16) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n15) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n14) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n11) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n8) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n6) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[12]), .Y(n3) );
  CLKINVX1 U18 ( .A(B[13]), .Y(n4) );
endmodule


module IIR_1_DW01_add_44 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_43 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CLKINVX1 U1 ( .A(A[5]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[6]) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[5]), .B(n1), .Y(SUM[5]) );
endmodule


module IIR_1_DW01_add_42 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  CLKINVX1 U1 ( .A(A[4]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[5]) );
  CLKINVX1 U3 ( .A(B[4]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[4]), .B(n1), .Y(SUM[4]) );
endmodule


module IIR_1_DW01_add_41 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_40 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_39 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = B[10];
  assign SUM[0] = B[9];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module IIR_1_DW01_add_38 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_37 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_36 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[0];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n1) );
endmodule


module IIR_1_DW01_add_35 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_34 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_33 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_32 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[6];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];

  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
endmodule


module IIR_1_DW01_add_31 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_30 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_29 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[2] = B[6];
  assign SUM[1] = B[5];
  assign SUM[0] = B[4];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];

  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[4]) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[3]), .B(n1), .Y(SUM[3]) );
  CLKINVX1 U4 ( .A(A[3]), .Y(n1) );
endmodule


module IIR_1_DW01_add_28 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  CLKINVX1 U1 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[23]), .Y(n3) );
  XNOR2X1 U7 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U8 ( .A(B[1]), .Y(n25) );
  NAND2X1 U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U11 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U12 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U13 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U14 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U15 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U16 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U17 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U18 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U19 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U20 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U21 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U22 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U23 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U24 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U25 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U26 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U27 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U28 ( .A(B[0]), .Y(n26) );
endmodule


module IIR_1_DW01_add_27 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_26 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_25 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[5]), .B(n1), .Y(SUM[5]) );
  CLKINVX1 U2 ( .A(A[5]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[6]) );
  CLKINVX1 U4 ( .A(B[5]), .Y(n2) );
endmodule


module IIR_1_DW01_add_24 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_23 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [25:0] carry;
  assign DIFF[0] = B[0];

  ADDFXL U2_11 ( .A(A[11]), .B(n3), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n1), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n1), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n1), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n1), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n1), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n1), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n1), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n1), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n1), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n1), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n1), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n1), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n1), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  CLKINVX1 U1 ( .A(B[12]), .Y(n1) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n12) );
  NOR2X1 U3 ( .A(B[0]), .B(B[1]), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[2]), .Y(n11) );
  XNOR2X1 U5 ( .A(n12), .B(B[0]), .Y(DIFF[1]) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U14 ( .A(B[11]), .Y(n3) );
endmodule


module IIR_1_DW01_add_21 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_20 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_19 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_18 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module IIR_1_DW01_add_17 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_16 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_15 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_14 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_13 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_12 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_11 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_10 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_9 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_8 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_7 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_6 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_5 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_4 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_3 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_1_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  CLKINVX1 U1 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U7 ( .A(B[0]), .Y(n26) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U16 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U17 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U18 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U19 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U20 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U21 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U22 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U23 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U24 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U25 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U26 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U27 ( .A(B[1]), .Y(n25) );
  NAND2X1 U28 ( .A(B[0]), .B(n1), .Y(carry[1]) );
endmodule


module IIR_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_4 ( .A(A[4]), .B(n26), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n6), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n24), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n25), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n3), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n5), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n7), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n8), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n9), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n10), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n11), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n12), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n13), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n14), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n15), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n16), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n17), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n18), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n19), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n20), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n21), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n22), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n23), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[7]), .Y(n23) );
  CLKINVX1 U4 ( .A(B[8]), .Y(n22) );
  CLKINVX1 U5 ( .A(B[9]), .Y(n21) );
  CLKINVX1 U6 ( .A(B[10]), .Y(n20) );
  CLKINVX1 U7 ( .A(B[11]), .Y(n19) );
  CLKINVX1 U8 ( .A(B[12]), .Y(n18) );
  CLKINVX1 U9 ( .A(B[13]), .Y(n17) );
  CLKINVX1 U10 ( .A(B[14]), .Y(n16) );
  CLKINVX1 U11 ( .A(B[15]), .Y(n15) );
  CLKINVX1 U12 ( .A(B[16]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[17]), .Y(n13) );
  CLKINVX1 U14 ( .A(B[18]), .Y(n12) );
  CLKINVX1 U15 ( .A(B[19]), .Y(n11) );
  CLKINVX1 U16 ( .A(B[20]), .Y(n10) );
  CLKINVX1 U17 ( .A(B[21]), .Y(n9) );
  CLKINVX1 U18 ( .A(B[22]), .Y(n8) );
  CLKINVX1 U19 ( .A(B[23]), .Y(n7) );
  NAND2X1 U20 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U21 ( .A(B[1]), .Y(n5) );
  CLKINVX1 U22 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U23 ( .A(B[3]), .Y(n3) );
  CLKINVX1 U24 ( .A(B[5]), .Y(n25) );
  CLKINVX1 U25 ( .A(B[6]), .Y(n24) );
  CLKINVX1 U26 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U27 ( .A(B[24]), .Y(n6) );
  CLKINVX1 U28 ( .A(B[4]), .Y(n26) );
endmodule


module IIR_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35;
  wire   [25:0] carry;

  XOR3X1 U2_24 ( .A(A[24]), .B(n5), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CLKINVX1 U1 ( .A(A[3]), .Y(n3) );
  CLKINVX1 U2 ( .A(A[5]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[22]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n20) );
  CLKINVX1 U5 ( .A(B[8]), .Y(n19) );
  CLKINVX1 U6 ( .A(B[9]), .Y(n18) );
  CLKINVX1 U7 ( .A(B[10]), .Y(n17) );
  CLKINVX1 U8 ( .A(B[11]), .Y(n16) );
  CLKINVX1 U9 ( .A(B[12]), .Y(n15) );
  CLKINVX1 U10 ( .A(B[13]), .Y(n14) );
  CLKINVX1 U11 ( .A(B[14]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[15]), .Y(n12) );
  CLKINVX1 U13 ( .A(B[16]), .Y(n11) );
  CLKINVX1 U14 ( .A(B[17]), .Y(n10) );
  CLKINVX1 U15 ( .A(B[18]), .Y(n9) );
  CLKINVX1 U16 ( .A(B[19]), .Y(n8) );
  CLKINVX1 U17 ( .A(B[20]), .Y(n7) );
  CLKINVX1 U18 ( .A(B[21]), .Y(n6) );
  CLKINVX1 U19 ( .A(B[24]), .Y(n5) );
  CLKINVX1 U20 ( .A(A[1]), .Y(n4) );
  OAI2BB2XL U21 ( .B0(B[6]), .B1(n21), .A0N(n22), .A1N(A[6]), .Y(carry[7]) );
  NOR2X1 U22 ( .A(A[6]), .B(n22), .Y(n21) );
  OAI22XL U23 ( .A0(n23), .A1(n2), .B0(B[5]), .B1(n24), .Y(n22) );
  AND2X1 U24 ( .A(n23), .B(n2), .Y(n24) );
  AOI2BB2X1 U25 ( .B0(n25), .B1(A[4]), .A0N(B[4]), .A1N(n26), .Y(n23) );
  NOR2X1 U26 ( .A(A[4]), .B(n25), .Y(n26) );
  OAI22XL U27 ( .A0(n27), .A1(n3), .B0(B[3]), .B1(n28), .Y(n25) );
  AND2X1 U28 ( .A(n27), .B(n3), .Y(n28) );
  AOI2BB2X1 U29 ( .B0(n29), .B1(A[2]), .A0N(B[2]), .A1N(n30), .Y(n27) );
  NOR2X1 U30 ( .A(A[2]), .B(n29), .Y(n30) );
  OAI22XL U31 ( .A0(n31), .A1(n4), .B0(B[1]), .B1(n32), .Y(n29) );
  AND2X1 U32 ( .A(n31), .B(n4), .Y(n32) );
  NOR2BX1 U33 ( .AN(B[0]), .B(A[0]), .Y(n31) );
  OAI2BB2XL U34 ( .B0(B[23]), .B1(n33), .A0N(n34), .A1N(A[23]), .Y(carry[24])
         );
  NOR2X1 U35 ( .A(A[23]), .B(n34), .Y(n33) );
  OAI21XL U36 ( .A0(B[22]), .A1(n1), .B0(n35), .Y(n34) );
  OAI2BB1X1 U37 ( .A0N(n1), .A1N(B[22]), .B0(carry[22]), .Y(n35) );
endmodule


module IIR_1 ( clk, rst, load, DIn, RAddr, data_done, WEN, Yn, WAddr, Finish
 );
  input [15:0] DIn;
  output [19:0] RAddr;
  output [15:0] Yn;
  output [19:0] WAddr;
  input clk, rst, data_done;
  output load, WEN, Finish;
  wire   hold, \next_state[0] , N17, N1909, N1910, N1911, N1912, N1913, N1914,
         N1915, N1916, N1917, N1918, N1919, N1920, N1921, N1922, N1923, N1924,
         N1925, N1926, N1927, N1928, N1929, N1930, N1931, N1932, N1933, N1934,
         N1935, N1936, N1937, N1938, N1939, N1940, N1941, N1942, N1943, N1944,
         N1945, N1948, n160, n199, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, N999, N998, N997,
         N996, N995, N994, N993, N992, N991, N990, N99, N989, N988, N987, N986,
         N985, N984, N983, N982, N981, N980, N98, N979, N978, N977, N976, N975,
         N974, N973, N972, N971, N970, N97, N969, N968, N967, N966, N965, N964,
         N963, N962, N961, N960, N96, N959, N958, N957, N956, N955, N954, N953,
         N952, N951, N950, N95, N949, N948, N947, N946, N945, N944, N943, N942,
         N94, N933, N932, N931, N930, N93, N929, N928, N927, N926, N925, N924,
         N923, N922, N921, N920, N92, N919, N918, N917, N91, N908, N907, N906,
         N905, N904, N903, N902, N901, N900, N90, N899, N898, N897, N896, N895,
         N894, N893, N892, N891, N890, N89, N889, N883, N882, N881, N880, N88,
         N879, N878, N877, N876, N875, N874, N873, N872, N871, N870, N87, N869,
         N868, N867, N866, N865, N864, N863, N862, N861, N860, N86, N858, N857,
         N856, N855, N854, N853, N852, N851, N850, N85, N849, N848, N847, N846,
         N845, N844, N843, N842, N841, N840, N84, N839, N838, N837, N836, N835,
         N834, N833, N832, N831, N830, N83, N829, N828, N827, N826, N825, N824,
         N823, N822, N821, N820, N82, N819, N818, N817, N816, N815, N814, N813,
         N812, N811, N810, N81, N809, N808, N807, N806, N805, N804, N803, N802,
         N801, N800, N80, N799, N798, N797, N796, N795, N794, N793, N792, N791,
         N790, N79, N789, N788, N787, N786, N785, N784, N783, N782, N781, N780,
         N78, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N77,
         N769, N768, N767, N766, N765, N764, N763, N762, N761, N760, N76, N759,
         N758, N757, N756, N755, N754, N753, N752, N751, N750, N75, N749, N748,
         N747, N746, N745, N744, N743, N742, N741, N740, N74, N739, N738, N737,
         N736, N735, N734, N733, N732, N731, N730, N73, N729, N728, N727, N726,
         N725, N724, N723, N722, N721, N720, N72, N719, N718, N717, N716, N715,
         N714, N713, N712, N711, N710, N71, N709, N708, N707, N706, N705, N704,
         N703, N702, N701, N700, N70, N699, N698, N697, N696, N695, N694, N693,
         N692, N691, N690, N69, N689, N688, N687, N686, N685, N684, N683, N682,
         N681, N680, N68, N679, N678, N677, N676, N675, N674, N673, N672, N671,
         N670, N67, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660,
         N66, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N65,
         N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N64, N639,
         N638, N637, N636, N635, N634, N633, N632, N631, N630, N63, N629, N628,
         N627, N626, N625, N624, N623, N622, N621, N620, N62, N619, N618, N617,
         N616, N615, N614, N613, N612, N611, N610, N61, N609, N608, N607, N606,
         N605, N604, N603, N602, N601, N600, N60, N599, N598, N597, N596, N595,
         N594, N593, N592, N591, N590, N59, N589, N588, N587, N586, N585, N584,
         N583, N582, N581, N580, N58, N579, N578, N577, N576, N575, N574, N573,
         N572, N571, N570, N57, N569, N568, N567, N566, N565, N564, N563, N562,
         N561, N560, N56, N559, N558, N557, N556, N555, N554, N553, N552, N551,
         N550, N55, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540,
         N54, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N53,
         N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N52, N519,
         N518, N517, N516, N515, N514, N513, N512, N511, N510, N51, N509, N508,
         N507, N506, N505, N504, N503, N502, N501, N500, N50, N499, N498, N497,
         N496, N495, N494, N493, N492, N491, N490, N49, N489, N488, N487, N486,
         N485, N484, N483, N48, N470, N47, N469, N468, N467, N466, N465, N464,
         N463, N462, N461, N460, N46, N459, N458, N457, N456, N455, N454, N453,
         N452, N451, N450, N45, N449, N448, N447, N446, N445, N444, N443, N442,
         N441, N440, N44, N439, N438, N437, N436, N435, N434, N433, N432, N431,
         N430, N43, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420,
         N42, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N41,
         N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N40, N399,
         N398, N397, N396, N395, N394, N393, N392, N391, N390, N39, N389, N388,
         N387, N386, N385, N384, N383, N382, N381, N380, N38, N379, N378, N377,
         N376, N375, N374, N373, N372, N371, N370, N37, N369, N368, N367, N366,
         N365, N364, N363, N362, N361, N360, N36, N359, N358, N357, N356, N355,
         N354, N353, N352, N351, N350, N35, N349, N348, N347, N346, N345, N344,
         N343, N342, N341, N340, N34, N339, N338, N337, N336, N335, N334, N333,
         N332, N331, N330, N33, N329, N328, N327, N326, N325, N324, N323, N322,
         N321, N320, N32, N319, N318, N317, N316, N315, N31, N308, N307, N306,
         N305, N304, N303, N302, N301, N300, N30, N299, N298, N297, N296, N295,
         N294, N293, N292, N291, N290, N29, N289, N288, N287, N286, N285, N284,
         N283, N282, N281, N280, N28, N279, N278, N277, N276, N275, N274, N273,
         N272, N271, N270, N27, N269, N268, N267, N266, N265, N264, N263, N262,
         N261, N260, N26, N259, N258, N257, N256, N255, N254, N253, N252, N251,
         N250, N25, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240,
         N24, N239, N238, N237, N236, N233, N232, N231, N230, N229, N228, N227,
         N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216,
         N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205,
         N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194,
         N193, N192, N191, N1908, N1907, N1906, N1905, N1904, N1903, N1902,
         N1901, N1900, N190, N1899, N1898, N1897, N1896, N1895, N1894, N1893,
         N1892, N1891, N1890, N189, N1889, N1888, N1887, N1886, N1885, N1884,
         N1883, N1882, N1881, N1880, N188, N1879, N1878, N1877, N1876, N1875,
         N1874, N1873, N1872, N1871, N1870, N187, N1869, N1868, N1867, N1866,
         N1865, N1864, N1863, N1862, N1861, N1860, N186, N1859, N1858, N1857,
         N1856, N1855, N1854, N1853, N1852, N1851, N1850, N185, N1849, N1848,
         N1847, N1846, N1845, N1844, N1843, N1842, N1841, N1840, N184, N1839,
         N1838, N1837, N1836, N1835, N1834, N1833, N1832, N1831, N1830, N183,
         N1829, N1828, N1827, N1826, N1825, N1824, N1823, N1822, N1821, N1820,
         N182, N1819, N1818, N1817, N1816, N1815, N1814, N1813, N1812, N1811,
         N1810, N181, N1809, N1808, N1807, N1806, N1805, N1804, N1803, N1802,
         N1801, N1800, N180, N1799, N1798, N1797, N1796, N1795, N1794, N1793,
         N1792, N1791, N1790, N179, N1789, N1788, N1787, N1786, N1785, N1784,
         N1783, N1782, N1781, N1780, N178, N1779, N1778, N1777, N1776, N1775,
         N1774, N1773, N1772, N1771, N1770, N177, N1769, N1768, N1767, N1766,
         N1765, N1764, N1763, N1762, N1761, N1760, N176, N1759, N1758, N1757,
         N1756, N1755, N1754, N1753, N1752, N1751, N1750, N175, N1749, N1748,
         N1747, N1746, N1745, N1744, N1743, N1742, N1741, N1740, N174, N1739,
         N1738, N1737, N1736, N1735, N1734, N1733, N1732, N1731, N1730, N173,
         N1729, N1728, N1727, N1726, N1725, N1724, N1723, N1722, N1721, N1720,
         N172, N1719, N1718, N1717, N1716, N1715, N1714, N1713, N1712, N1711,
         N1710, N171, N1709, N1708, N1707, N1706, N1705, N1704, N1703, N1702,
         N1701, N1700, N170, N1699, N1698, N1697, N1696, N1695, N1694, N1693,
         N1692, N1691, N1690, N169, N1689, N1688, N1687, N1686, N1685, N1684,
         N1683, N1682, N1681, N1680, N168, N1679, N1678, N1677, N1676, N1675,
         N1674, N1673, N1672, N1671, N1670, N167, N1669, N1668, N1667, N1666,
         N1665, N1664, N1663, N1662, N1661, N1660, N166, N1658, N1657, N1656,
         N1655, N1654, N1653, N1652, N1651, N1650, N165, N1649, N1648, N1647,
         N1646, N1645, N1644, N1643, N1642, N1641, N1640, N164, N1639, N1638,
         N1637, N1636, N1635, N1634, N1633, N1632, N1631, N1630, N163, N1629,
         N1628, N1627, N1626, N1625, N1624, N1623, N1622, N1621, N1620, N162,
         N1619, N1618, N1617, N1616, N1615, N1614, N1613, N1612, N1611, N1610,
         N161, N1609, N1608, N1607, N1606, N1605, N1604, N1603, N1602, N1601,
         N1600, N160, N1599, N1598, N1597, N1596, N1595, N1594, N1593, N1592,
         N1591, N1590, N159, N1589, N1588, N1587, N1586, N1585, N1584, N1583,
         N1582, N1581, N1580, N158, N1579, N1578, N1577, N1576, N1575, N1574,
         N1573, N1572, N1571, N1570, N157, N1569, N1568, N1567, N1566, N1565,
         N1564, N1563, N1562, N1561, N1560, N156, N1559, N1558, N1557, N1556,
         N1555, N1554, N1553, N1552, N1551, N1550, N155, N1549, N1548, N1547,
         N1546, N1545, N1544, N1543, N1542, N1541, N1540, N154, N1539, N1538,
         N1537, N1536, N1535, N1534, N1533, N1532, N1531, N1530, N153, N1529,
         N1528, N1527, N1526, N1525, N1524, N1523, N1522, N1521, N1520, N152,
         N1519, N1518, N1517, N1516, N1515, N1514, N1513, N1512, N1511, N1510,
         N151, N1509, N1508, N1507, N1506, N1505, N1504, N1503, N1502, N1501,
         N1500, N150, N1499, N1498, N1497, N1496, N1495, N1494, N1493, N1492,
         N1491, N1490, N149, N1489, N1488, N1487, N1486, N1485, N1484, N1483,
         N1482, N1481, N1480, N148, N1479, N1478, N1477, N1476, N1475, N1474,
         N1473, N1472, N1471, N1470, N147, N1469, N1468, N1467, N1466, N1465,
         N1464, N1463, N1462, N1461, N1460, N146, N1459, N1458, N1457, N1456,
         N1455, N1454, N1453, N1452, N1451, N1450, N145, N1449, N1448, N1447,
         N1446, N1445, N1444, N1443, N1442, N1441, N144, N1433, N1432, N1431,
         N1430, N143, N1429, N1428, N1427, N1426, N1425, N1424, N1423, N1422,
         N1421, N1420, N142, N1419, N1418, N1417, N1416, N1415, N1414, N1413,
         N1412, N1411, N1410, N141, N1409, N1408, N1407, N1406, N1405, N1404,
         N1403, N1402, N1401, N1400, N140, N1399, N1398, N1397, N1396, N1395,
         N1394, N1393, N1392, N1391, N1390, N139, N1389, N1388, N1387, N1386,
         N1385, N1384, N1383, N1382, N1381, N1380, N138, N1379, N1378, N1377,
         N1376, N1375, N1374, N1373, N1372, N1371, N1370, N137, N1369, N1368,
         N1367, N1366, N1365, N1364, N1363, N1362, N1361, N1360, N136, N1359,
         N1358, N1357, N1356, N1355, N1354, N1353, N1352, N1351, N1350, N135,
         N1349, N1348, N1347, N1346, N1345, N1344, N1343, N1342, N1341, N1340,
         N134, N1339, N1338, N1337, N1336, N1335, N1334, N1333, N1332, N1331,
         N1330, N133, N1329, N1328, N1327, N1326, N1325, N1324, N1323, N1322,
         N1321, N1320, N132, N1319, N1318, N1317, N1316, N1315, N1314, N1313,
         N1312, N1311, N1310, N131, N1309, N1308, N1307, N1306, N1305, N1304,
         N1303, N1302, N1301, N1300, N130, N1299, N1298, N1297, N1296, N1295,
         N1294, N1293, N1292, N1291, N1290, N129, N1289, N1288, N1287, N1286,
         N1285, N1284, N1283, N1282, N1281, N1280, N128, N1279, N1278, N1277,
         N1276, N1275, N1274, N1273, N1272, N1271, N1270, N127, N1269, N1268,
         N1267, N1266, N1265, N1264, N1263, N1262, N1261, N1260, N126, N1259,
         N1258, N1257, N1256, N1255, N1254, N1253, N1252, N1251, N1250, N125,
         N1249, N1248, N1247, N1246, N1245, N1244, N1243, N1242, N1241, N1240,
         N124, N1239, N1238, N1237, N1236, N1235, N1234, N1233, N1232, N1231,
         N1230, N123, N1229, N1228, N1227, N1226, N1225, N1224, N1223, N1222,
         N1221, N1220, N122, N1219, N1218, N1217, N1216, N1215, N1214, N1213,
         N1212, N1211, N1210, N121, N1209, N1208, N1207, N1206, N1205, N1204,
         N1203, N1202, N1201, N1200, N120, N1199, N1198, N1197, N1196, N1195,
         N1194, N1193, N1192, N1191, N1190, N119, N1189, N1188, N1187, N1186,
         N1185, N1184, N1183, N1182, N1181, N1180, N118, N1179, N1178, N1177,
         N1176, N1175, N1174, N1173, N1172, N1171, N1170, N117, N1169, N1168,
         N1167, N1166, N1165, N1164, N1163, N1162, N1161, N1160, N116, N1159,
         N1158, N1157, N1156, N1155, N1154, N1153, N1152, N1151, N1150, N115,
         N1149, N1148, N1147, N1146, N1145, N1144, N1143, N1142, N1141, N1140,
         N114, N1139, N1138, N1137, N1136, N1135, N1134, N1133, N1132, N1131,
         N1130, N113, N1129, N1128, N1127, N1126, N1125, N1124, N1123, N1122,
         N1121, N1120, N112, N1119, N1118, N1117, N1116, N1115, N1114, N1113,
         N1112, N1111, N1110, N111, N1109, N1108, N1107, N1106, N1105, N1104,
         N1103, N1102, N1101, N1100, N110, N1099, N1098, N1097, N1096, N1095,
         N1094, N1093, N1092, N1091, N1090, N109, N1089, N1088, N1087, N1086,
         N1085, N1084, N1083, N1082, N1081, N1080, N108, N1079, N1078, N1077,
         N1076, N1075, N1074, N1073, N1072, N1071, N1070, N107, N1069, N1068,
         N1067, N1066, N1065, N1064, N1063, N1062, N1061, N1060, N106, N1059,
         N1058, N1057, N1056, N1055, N1054, N1053, N1052, N1051, N1050, N105,
         N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040,
         N104, N1039, N1038, N1037, N1036, N1035, N1034, N1033, N1032, N1031,
         N1030, N103, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022,
         N1021, N1020, N102, N1019, N1018, N1017, N1016, N1015, N1014, N1013,
         N1012, N1011, N1010, N101, N1009, N1008, N1007, N1006, N1005, N1004,
         N1003, N1002, N1001, N1000, N100,
         \add_60_root_sub_0_root_add_115_61/carry[7] ,
         \add_60_root_sub_0_root_add_115_61/carry[8] ,
         \add_60_root_sub_0_root_add_115_61/carry[9] ,
         \add_60_root_sub_0_root_add_115_61/carry[10] ,
         \add_60_root_sub_0_root_add_115_61/carry[11] ,
         \add_60_root_sub_0_root_add_115_61/carry[12] ,
         \add_60_root_sub_0_root_add_115_61/carry[13] ,
         \add_60_root_sub_0_root_add_115_61/carry[14] ,
         \add_60_root_sub_0_root_add_115_61/carry[15] ,
         \add_60_root_sub_0_root_add_115_61/carry[16] ,
         \add_60_root_sub_0_root_add_115_61/carry[17] ,
         \add_60_root_sub_0_root_add_115_61/carry[18] ,
         \add_60_root_sub_0_root_add_115_61/carry[19] ,
         \add_60_root_sub_0_root_add_115_61/carry[20] ,
         \add_60_root_sub_0_root_add_115_61/carry[21] ,
         \add_60_root_sub_0_root_add_115_61/carry[22] ,
         \add_17_root_sub_0_root_add_115_61/carry[5] ,
         \add_17_root_sub_0_root_add_115_61/carry[6] ,
         \add_17_root_sub_0_root_add_115_61/carry[7] ,
         \add_17_root_sub_0_root_add_115_61/carry[8] ,
         \add_17_root_sub_0_root_add_115_61/carry[9] ,
         \add_17_root_sub_0_root_add_115_61/carry[10] ,
         \add_17_root_sub_0_root_add_115_61/carry[11] ,
         \add_17_root_sub_0_root_add_115_61/carry[12] ,
         \add_17_root_sub_0_root_add_115_61/carry[13] ,
         \add_17_root_sub_0_root_add_115_61/carry[14] ,
         \add_17_root_sub_0_root_add_115_61/carry[15] ,
         \add_17_root_sub_0_root_add_115_61/carry[16] ,
         \add_17_root_sub_0_root_add_115_61/carry[17] ,
         \add_17_root_sub_0_root_add_115_61/carry[18] ,
         \add_17_root_sub_0_root_add_115_61/carry[19] ,
         \add_17_root_sub_0_root_add_115_61/carry[20] ,
         \add_23_root_sub_0_root_add_115_61/carry[8] ,
         \add_23_root_sub_0_root_add_115_61/carry[9] ,
         \add_23_root_sub_0_root_add_115_61/carry[10] ,
         \add_23_root_sub_0_root_add_115_61/carry[11] ,
         \add_23_root_sub_0_root_add_115_61/carry[12] ,
         \add_23_root_sub_0_root_add_115_61/carry[13] ,
         \add_23_root_sub_0_root_add_115_61/carry[14] ,
         \add_23_root_sub_0_root_add_115_61/carry[15] ,
         \add_23_root_sub_0_root_add_115_61/carry[16] ,
         \add_23_root_sub_0_root_add_115_61/carry[17] ,
         \add_23_root_sub_0_root_add_115_61/carry[18] ,
         \add_23_root_sub_0_root_add_115_61/carry[19] ,
         \add_23_root_sub_0_root_add_115_61/carry[20] ,
         \add_23_root_sub_0_root_add_115_61/carry[21] ,
         \add_23_root_sub_0_root_add_115_61/carry[22] ,
         \add_23_root_sub_0_root_add_115_61/carry[23] ,
         \add_75_root_add_115_61/carry[1] , \add_75_root_add_115_61/carry[2] ,
         \add_75_root_add_115_61/carry[3] , \add_75_root_add_115_61/carry[4] ,
         \add_75_root_add_115_61/carry[5] , \add_75_root_add_115_61/carry[6] ,
         \add_75_root_add_115_61/carry[7] , \add_75_root_add_115_61/carry[8] ,
         \add_75_root_add_115_61/carry[9] , \add_75_root_add_115_61/carry[10] ,
         \add_75_root_add_115_61/carry[11] ,
         \add_75_root_add_115_61/carry[12] ,
         \add_75_root_add_115_61/carry[13] , \add_76_root_add_115_61/carry[2] ,
         \add_76_root_add_115_61/carry[3] , \add_76_root_add_115_61/carry[4] ,
         \add_76_root_add_115_61/carry[5] , \add_76_root_add_115_61/carry[6] ,
         \add_76_root_add_115_61/carry[7] , \add_76_root_add_115_61/carry[8] ,
         \add_76_root_add_115_61/carry[9] , \add_76_root_add_115_61/carry[10] ,
         \add_76_root_add_115_61/carry[11] ,
         \add_76_root_add_115_61/carry[12] ,
         \add_76_root_add_115_61/carry[13] ,
         \add_76_root_add_115_61/carry[14] ,
         \add_76_root_add_115_61/carry[15] ,
         \add_76_root_add_115_61/carry[16] ,
         \add_76_root_add_115_61/carry[17] , n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763;
  wire   [1:0] state;
  wire   [24:6] s0;
  wire   [24:6] s1;
  wire   [24:5] s2;
  wire   [24:5] s3;
  wire   [24:5] s4;
  wire   [24:5] s5;
  wire   [24:2] sp0;
  wire   [24:0] sp1;
  wire   [24:0] sp2;
  wire   [24:0] sp3;
  wire   [24:0] sp4;
  wire   [24:1] \add_68_root_sub_0_root_add_115_61/carry ;
  wire   [24:1] \add_69_root_sub_0_root_add_115_61/carry ;
  wire   [24:1] \add_70_root_sub_0_root_add_115_61/carry ;
  wire   [25:0] \sub_71_root_sub_0_root_add_115_61/carry ;
  wire   [24:1] \add_22_root_sub_0_root_add_115_61/carry ;
  wire   [24:1] \add_35_root_sub_0_root_add_115_61/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;

  IIR_1_DW01_inc_0 add_138 ( .A(RAddr), .SUM({N1944, N1943, N1942, N1941, 
        N1940, N1939, N1938, N1937, N1936, N1935, N1934, N1933, N1932, N1931, 
        N1930, N1929, N1928, N1927, N1926, N1925}) );
  IIR_1_DW01_add_67 add_74_root_add_115_61 ( .A({n735, n735, n735, n735, n735, 
        n735, s5[24], n735, n735, n735, s5[23:12]}), .B({n735, s5[24], s5[24], 
        s5[24], s5[24], s5[24], s5[24], s5[24], n735, n735, n735, s5[23:13]}), 
        .CI(1'b0), .SUM({N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, 
        N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65}) );
  IIR_1_DW01_add_66 add_73_root_add_115_61 ( .A({n735, n735, n735, n735, n735, 
        n735, n735, n735, n735, n735, n735, n735, n735, n735, n735, s5[23:16]}), .B({n736, s4[24], s4[24], n736, s4[24:7], 1'b0}), .CI(1'b0), .SUM({N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, N92, N91, N90, N89, N88, N87}) );
  IIR_1_DW01_add_65 add_72_root_add_115_61 ( .A({s4[24], s4[24], s4[24], 
        s4[24], s4[24], s4[24], s4[24], s4[24:8]}), .B({s4[24], n736, s4[24], 
        n736, s4[24], s4[24], s4[24], s4[24], s4[24], s4[24:10]}), .CI(1'b0), 
        .SUM({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, 
        N110}) );
  IIR_1_DW01_add_63 add_12_root_sub_0_root_add_115_61 ( .A({n602, n602, n602, 
        n602, n602, n602, n602, n602, n602, n602, n602, n602, n602, N470, N469, 
        N468, N467, N466, N465, N464, N463, N462, N461, N460, N459}), .B({N133, 
        N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110}), .CI(1'b0), .SUM({N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, 
        N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184}) );
  IIR_1_DW01_add_62 add_44_root_sub_0_root_add_115_61 ( .A({s3[24], s3[24], 
        s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], 
        s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], n663, n660, n656, n653, 
        n650, n647, n644, n641}), .B({n747, n747, n747, n747, n747, n747, n747, 
        n747, n747, n747, n747, n747, n661, n658, n654, n651, n648, n645, n642, 
        n639, s1[15:11]}), .CI(1'b0), .SUM({N1808, N1807, N1806, N1805, N1804, 
        N1803, N1802, N1801, N1800, N1799, N1798, N1797, N1796, N1795, N1794, 
        N1793, N1792, N1791, N1790, N1789, N1788, N1787, N1786, N1785, N1784})
         );
  IIR_1_DW01_add_61 add_37_root_sub_0_root_add_115_61 ( .A({s4[24], s4[24], 
        s4[24], s4[24], s4[24], s4[24], s4[24], s4[24], s4[24], s4[24], s4[24], 
        s4[24], s4[24], s4[24], s4[24], s4[24], s4[24:16]}), .B({s4[24], n736, 
        n736, n736, n736, n736, n736, n736, n736, n736, n736, n736, s4[23:11]}), .CI(1'b0), .SUM({N1608, N1607, N1606, N1605, N1604, N1603, N1602, N1601, 
        N1600, N1599, N1598, N1597, N1596, N1595, N1594, N1593, N1592, N1591, 
        N1590, N1589, N1588, N1587, N1586, N1585, N1584}) );
  IIR_1_DW01_add_60 add_36_root_sub_0_root_add_115_61 ( .A({N1608, N1607, 
        N1606, N1605, N1604, N1603, N1602, N1601, N1600, N1599, N1598, N1597, 
        N1596, N1595, N1594, N1593, N1592, N1591, N1590, N1589, N1588, N1587, 
        N1586, N1585, N1584}), .B({n736, n736, s4[24], s4[24], n736, n736, 
        n736, n736, n736, n736, n736, s4[24], s4[24], n736, s4[24:14]}), .CI(
        1'b0), .SUM({N508, N507, N506, N505, N504, N503, N502, N501, N500, 
        N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, 
        N487, N486, N485, N484}) );
  IIR_1_DW01_add_59 add_11_root_sub_0_root_add_115_61 ( .A({N1808, N1807, 
        N1806, N1805, N1804, N1803, N1802, N1801, N1800, N1799, N1798, N1797, 
        N1796, N1795, N1794, N1793, N1792, N1791, N1790, N1789, N1788, N1787, 
        N1786, N1785, N1784}), .B({N508, N507, N506, N505, N504, N503, N502, 
        N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, 
        N489, N488, N487, N486, N485, N484}), .CI(1'b0), .SUM({N183, N182, 
        N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, 
        N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159}) );
  IIR_1_DW01_add_58 add_9_root_sub_0_root_add_115_61 ( .A({N208, N207, N206, 
        N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184}), .B({N183, 
        N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159}), .CI(1'b0), .SUM({N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, 
        N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134}) );
  IIR_1_DW01_add_55 add_21_root_sub_0_root_add_115_61 ( .A({N1158, N1157, 
        N1156, N1155, N1154, N1153, N1152, N1151, N1150, N1149, N1148, N1147, 
        N1146, N1145, N1144, N1143, N1142, N1141, N1140, n623, n621, n619, 
        n617, n615, n613}), .B({n727, n726, n726, n726, n726, n726, n726, n726, 
        n726, n726, n726, n633, n635, n631, n629, n627, n625, n623, n621, n619, 
        n617, n615, n613, n611, n609}), .CI(1'b0), .SUM({N1558, N1557, N1556, 
        N1555, N1554, N1553, N1552, N1551, N1550, N1549, N1548, N1547, N1546, 
        N1545, N1544, N1543, N1542, N1541, N1540, N1539, N1538, N1537, N1536, 
        N1535, N1534}) );
  IIR_1_DW01_add_54 add_20_root_sub_0_root_add_115_61 ( .A({N1558, N1557, 
        N1556, N1555, N1554, N1553, N1552, N1551, N1550, N1549, N1548, N1547, 
        N1546, N1545, N1544, N1543, N1542, N1541, N1540, N1539, N1538, N1537, 
        N1536, N1535, N1534}), .B({n727, n727, n727, n727, n727, n727, n727, 
        n633, n635, n631, n629, n627, n625, n623, n621, n619, n617, n615, n613, 
        n611, n609, sp1[9], n606, N315, 1'b0}), .CI(1'b0), .SUM({N308, N307, 
        N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, 
        N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284}) );
  IIR_1_DW01_add_53 add_19_root_sub_0_root_add_115_61 ( .A({N308, N307, N306, 
        N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, 
        N293, N292, N291, N290, N289, N288, N287, N286, N285, N284}), .B({n728, 
        n728, n728, n728, n728, n728, n727, n728, n728, n728, n727, n727, n727, 
        n727, n633, n635, n631, n629, n627, n625, n623, n621, n619, n617, n615}), .CI(1'b0), .SUM({N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, 
        N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, 
        N261, N260, N259}) );
  IIR_1_DW01_add_52 add_16_root_sub_0_root_add_115_61 ( .A({n729, n729, n729, 
        n729, n729, n729, n729, n729, n729, n633, n635, n631, n629, n627, n625, 
        n623, n621, n619, n617, n615, n613, n611, n609, sp1[9], n606}), .B({
        N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, 
        N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, 
        N259}), .CI(1'b0), .SUM({N233, N232, N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, 
        N214, N213, N212, N211, N210, N209}) );
  IIR_1_DW01_add_50 add_45_root_sub_0_root_add_115_61 ( .A({n739, s3[24], 
        s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], s3[24], 
        s3[24], n663, n660, n656, n653, n650, n647, n644, n641, s3[15:11]}), 
        .B({n739, n738, n738, n738, n738, n738, n738, n738, n738, n738, n663, 
        n660, n656, n653, n650, n647, n644, n641, s3[15:9]}), .CI(1'b0), .SUM(
        {N1633, N1632, N1631, N1630, N1629, N1628, N1627, N1626, N1625, N1624, 
        N1623, N1622, N1621, N1620, N1619, N1618, N1617, N1616, N1615, N1614, 
        N1613, N1612, N1611, N1610, N1609}) );
  IIR_1_DW01_add_46 add_67_root_sub_0_root_add_115_61 ( .A({N908, N907, N906, 
        N905, N904, N903, N902, N901, N900, N899, N898, N897, N896, N895, N894, 
        N893, N892, N891, n607, n605, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n721, 
        n721, n721, n721, n721, n721, n721, n634, n636, n632, n630, n628, n626, 
        n624, n622, n620, n618, n616, n614, n612, n610, n608, n607, n605, 1'b0}), .CI(1'b0), .SUM({N883, N882, N881, N880, N879, N878, N877, N876, N875, N874, 
        N873, N872, N871, N870, N869, N868, N867, N866, N865, N864, N863, N862, 
        N861, N860, SYNOPSYS_UNCONNECTED__0}) );
  IIR_1_DW01_add_45 add_66_root_sub_0_root_add_115_61 ( .A({N883, N882, N881, 
        N880, N879, N878, N877, N876, N875, N874, N873, N872, N871, N870, N869, 
        N868, N867, N866, N865, N864, N863, N862, N861, N860, 1'b0}), .B({n722, 
        n722, n722, n722, n722, n722, n721, n721, n634, n636, n632, n630, n628, 
        n626, n624, n622, n620, n618, n616, n614, n612, n610, n608, n607, n605}), .CI(1'b0), .SUM({N1433, N1432, N1431, N1430, N1429, N1428, N1427, N1426, 
        N1425, N1424, N1423, N1422, N1421, N1420, N1419, N1418, N1417, N1416, 
        N1415, N1414, N1413, N1412, N1411, N1410, N1409}) );
  IIR_1_DW01_sub_5 sub_62_root_sub_0_root_add_115_61 ( .A({N1433, N1432, N1431, 
        N1430, N1429, N1428, N1427, N1426, N1425, N1424, N1423, N1422, N1421, 
        N1420, N1419, N1418, N1417, N1416, N1415, N1414, N1413, N1412, N1411, 
        N1410, N1409}), .B({n638, n638, n638, n638, n638, n638, n638, n638, 
        n638, n638, n638, sp3[23:10]}), .CI(1'b0), .DIFF({N1408, N1407, N1406, 
        N1405, N1404, N1403, N1402, N1401, N1400, N1399, N1398, N1397, N1396, 
        N1395, N1394, N1393, N1392, N1391, N1390, N1389, N1388, N1387, N1386, 
        N1385, N1384}) );
  IIR_1_DW01_add_44 add_56_root_sub_0_root_add_115_61 ( .A({n734, n734, n734, 
        n733, n733, n733, n733, n733, n733, n733, n733, n733, sp0[23:11]}), 
        .B({n734, n733, n733, n733, n731, n731, n731, n731, n731, n731, n731, 
        n731, n731, n731, sp0[23:13]}), .CI(1'b0), .SUM({N1383, N1382, N1381, 
        N1380, N1379, N1378, N1377, N1376, N1375, N1374, N1373, N1372, N1371, 
        N1370, N1369, N1368, N1367, N1366, N1365, N1364, N1363, N1362, N1361, 
        N1360, N1359}) );
  IIR_1_DW01_add_43 add_55_root_sub_0_root_add_115_61 ( .A({N1383, N1382, 
        N1381, N1380, N1379, N1378, N1377, N1376, N1375, N1374, N1373, N1372, 
        N1371, N1370, N1369, N1368, N1367, N1366, N1365, N1364, N1363, N1362, 
        N1361, N1360, N1359}), .B({n733, n733, n733, sp0[23:7], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N758, N757, N756, N755, N754, 
        N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, 
        N741, N740, N739, N738, N737, N736, N735, N734}) );
  IIR_1_DW01_add_42 add_54_root_sub_0_root_add_115_61 ( .A({N758, N757, N756, 
        N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, 
        N743, N742, N741, N740, N739, N738, N737, N736, N735, N734}), .B({n732, 
        n732, n733, n733, sp0[23:7], 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, 
        N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, 
        N710, N709}) );
  IIR_1_DW01_add_41 add_52_root_sub_0_root_add_115_61 ( .A({N1408, N1407, 
        N1406, N1405, N1404, N1403, N1402, N1401, N1400, N1399, N1398, N1397, 
        N1396, N1395, N1394, N1393, N1392, N1391, N1390, N1389, N1388, N1387, 
        N1386, N1385, N1384}), .B({N733, N732, N731, N730, N729, N728, N727, 
        N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, 
        N714, N713, N712, N711, N710, N709}), .CI(1'b0), .SUM({N1658, N1657, 
        N1656, N1655, N1654, N1653, N1652, N1651, N1650, N1649, N1648, N1647, 
        N1646, N1645, N1644, N1643, N1642, N1641, N1640, N1639, N1638, N1637, 
        N1636, N1635, N1634}) );
  IIR_1_DW01_add_40 add_24_root_sub_0_root_add_115_61 ( .A({N1633, N1632, 
        N1631, N1630, N1629, N1628, N1627, N1626, N1625, N1624, N1623, N1622, 
        N1621, N1620, N1619, N1618, N1617, N1616, N1615, N1614, N1613, N1612, 
        N1611, N1610, N1609}), .B({N1658, N1657, N1656, N1655, N1654, N1653, 
        N1652, N1651, N1650, N1649, N1648, N1647, N1646, N1645, N1644, N1643, 
        N1642, N1641, N1640, N1639, N1638, N1637, N1636, N1635, N1634}), .CI(
        1'b0), .SUM({N358, N357, N356, N355, N354, N353, N352, N351, N350, 
        N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, 
        N337, N336, N335, N334}) );
  IIR_1_DW01_add_39 add_48_root_sub_0_root_add_115_61 ( .A({n739, n739, n739, 
        n739, n739, n739, n739, n739, n739, n739, n739, n739, n739, s3[24], 
        n739, n663, n660, n656, n653, n650, n647, n644, n641, s3[15:14]}), .B(
        {n739, n738, n738, n738, n738, n738, n663, n660, n656, n653, n650, 
        n647, n644, n641, s3[15:7], 1'b0, 1'b0}), .CI(1'b0), .SUM({N658, N657, 
        N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, 
        N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634}) );
  IIR_1_DW01_add_38 add_47_root_sub_0_root_add_115_61 ( .A({N658, N657, N656, 
        N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, 
        N643, N642, N641, N640, N639, N638, N637, N636, N635, N634}), .B({n738, 
        s3[24], s3[24], s3[24], n738, s3[24], n738, s3[24], n738, s3[24], n738, 
        s3[24], n738, n738, n738, n738, n663, n660, n656, n653, n650, n647, 
        n644, n641, s3[15]}), .CI(1'b0), .SUM({N633, N632, N631, N630, N629, 
        N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, 
        N616, N615, N614, N613, N612, N611, N610, N609}) );
  IIR_1_DW01_add_37 add_46_root_sub_0_root_add_115_61 ( .A({N633, N632, N631, 
        N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, 
        N618, N617, N616, N615, N614, N613, N612, N611, N610, N609}), .B({
        s3[24], s3[24], n738, n738, n738, n738, n738, s3[24], s3[24], n663, 
        n660, n656, n653, n650, n647, n644, n641, s3[15:8]}), .CI(1'b0), .SUM(
        {N1308, N1307, N1306, N1305, N1304, N1303, N1302, N1301, N1300, N1299, 
        N1298, N1297, N1296, N1295, N1294, N1293, N1292, N1291, N1290, N1289, 
        N1288, N1287, N1286, N1285, N1284}) );
  IIR_1_DW01_add_36 add_43_root_sub_0_root_add_115_61 ( .A({n751, n750, n750, 
        n750, n750, n750, n750, n661, n658, n654, n651, n648, n645, n642, n639, 
        s1[15:7], 1'b0}), .B({n751, n749, n749, n749, n749, n749, n749, n749, 
        n749, n749, n748, n748, n748, n748, n748, n747, n661, n658, n654, n651, 
        n648, n645, n642, n639, s1[15]}), .CI(1'b0), .SUM({N608, N607, N606, 
        N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, 
        N593, N592, N591, N590, N589, N588, N587, N586, N585, N584}) );
  IIR_1_DW01_add_35 add_42_root_sub_0_root_add_115_61 ( .A({N608, N607, N606, 
        N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, 
        N593, N592, N591, N590, N589, N588, N587, N586, N585, N584}), .B({n749, 
        n749, n749, n750, n750, n750, n749, n750, n750, n750, n750, n661, n658, 
        n654, n651, n648, n645, n642, n639, s1[15:10]}), .CI(1'b0), .SUM({N583, 
        N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, 
        N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559}) );
  IIR_1_DW01_add_34 add_26_root_sub_0_root_add_115_61 ( .A({N1308, N1307, 
        N1306, N1305, N1304, N1303, N1302, N1301, N1300, N1299, N1298, N1297, 
        N1296, N1295, N1294, N1293, N1292, N1291, N1290, N1289, N1288, N1287, 
        N1286, N1285, N1284}), .B({N583, N582, N581, N580, N579, N578, N577, 
        N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, 
        N564, N563, N562, N561, N560, N559}), .CI(1'b0), .SUM({N383, N382, 
        N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, 
        N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359}) );
  IIR_1_DW01_add_33 add_27_root_sub_0_root_add_115_61 ( .A({n746, n745, n745, 
        n745, n745, n745, n746, n745, n745, n745, n746, n745, n745, n746, n746, 
        n746, n746, n662, n659, n655, n652, n649, n646, n643, n640}), .B({n746, 
        n741, n741, n741, n741, n741, n741, n741, n741, n741, n741, n741, n662, 
        n659, n655, n652, n649, n646, n643, n640, s2[15:11]}), .CI(1'b0), 
        .SUM({N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, 
        N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, 
        N385, N384}) );
  IIR_1_DW01_add_32 add_32_root_sub_0_root_add_115_61 ( .A({n755, n754, n754, 
        n754, n754, n754, n754, n754, n754, n754, n754, n754, n754, s0[23], 
        n657, s0[21:12]}), .B({n755, n752, n752, n752, n752, n752, n752, 
        s0[23], n657, s0[21:7], 1'b0}), .CI(1'b0), .SUM({N433, N432, N431, 
        N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, 
        N418, N417, N416, N415, N414, N413, N412, N411, N410, N409}) );
  IIR_1_DW01_add_31 add_34_root_sub_0_root_add_115_61 ( .A({n755, n755, n755, 
        n755, n754, n755, n754, n754, n754, n754, n754, n754, n754, n754, n754, 
        n754, n754, s0[23], n657, s0[21:16]}), .B({n755, n753, n754, n753, 
        n753, n753, n753, n753, n752, n753, n753, n753, s0[23], n657, 
        s0[21:11]}), .CI(1'b0), .SUM({N1233, N1232, N1231, N1230, N1229, N1228, 
        N1227, N1226, N1225, N1224, N1223, N1222, N1221, N1220, N1219, N1218, 
        N1217, N1216, N1215, N1214, N1213, N1212, N1211, N1210, N1209}) );
  IIR_1_DW01_add_30 add_33_root_sub_0_root_add_115_61 ( .A({N1233, N1232, 
        N1231, N1230, N1229, N1228, N1227, N1226, N1225, N1224, N1223, N1222, 
        N1221, N1220, N1219, N1218, N1217, N1216, N1215, N1214, N1213, N1212, 
        N1211, N1210, N1209}), .B({n752, n752, n752, n752, n752, n753, n752, 
        n753, n753, n753, s0[23], n657, s0[21:9]}), .CI(1'b0), .SUM({N458, 
        N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, 
        N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434}) );
  IIR_1_DW01_add_29 add_65_root_sub_0_root_add_115_61 ( .A({n723, n722, n723, 
        n723, n723, n722, n722, n722, n722, n634, n636, n632, n630, n628, n626, 
        n624, n622, n620, n618, n616, n614, n612, n610, n608, n607}), .B({n723, 
        n722, n722, n722, n722, n634, n636, n632, n630, n628, n626, n624, n622, 
        n620, n618, n616, n614, n612, n610, n608, n607, n605, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N1708, N1707, N1706, N1705, N1704, N1703, N1702, N1701, 
        N1700, N1699, N1698, N1697, N1696, N1695, N1694, N1693, N1692, N1691, 
        N1690, N1689, N1688, N1687, N1686, N1685, N1684}) );
  IIR_1_DW01_add_28 add_63_root_sub_0_root_add_115_61 ( .A({n638, n638, n638, 
        n638, n638, n638, n638, n638, n638, n638, sp3[23:9]}), .B({n638, n637, 
        n637, n637, n637, n637, n637, n637, sp3[23:7]}), .CI(1'b0), .SUM({N833, 
        N832, N831, N830, N829, N828, N827, N826, N825, N824, N823, N822, N821, 
        N820, N819, N818, N817, N816, N815, N814, N813, N812, N811, N810, N809}) );
  IIR_1_DW01_sub_4 sub_58_root_sub_0_root_add_115_61 ( .A({N1708, N1707, N1706, 
        N1705, N1704, N1703, N1702, N1701, N1700, N1699, N1698, N1697, N1696, 
        N1695, N1694, N1693, N1692, N1691, N1690, N1689, N1688, N1687, N1686, 
        N1685, N1684}), .B({N833, N832, N831, N830, N829, N828, N827, N826, 
        N825, N824, N823, N822, N821, N820, N819, N818, N817, N816, N815, N814, 
        N813, N812, N811, N810, N809}), .CI(1'b0), .DIFF({N808, N807, N806, 
        N805, N804, N803, N802, N801, N800, N799, N798, N797, N796, N795, N794, 
        N793, N792, N791, N790, N789, N788, N787, N786, N785, N784}) );
  IIR_1_DW01_add_27 add_50_root_sub_0_root_add_115_61 ( .A({N808, N807, N806, 
        N805, N804, N803, N802, N801, N800, N799, N798, N797, N796, N795, N794, 
        N793, N792, N791, N790, N789, N788, N787, N786, N785, N784}), .B({N64, 
        N64, N64, N64, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, 
        N53, N52, N51, N50, N49, N48, N47, N46, N45, N44}), .CI(1'b0), .SUM({
        N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, 
        N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, 
        N659}) );
  IIR_1_DW01_add_26 add_61_root_sub_0_root_add_115_61 ( .A({sp4[24], sp4[24], 
        sp4[24], sp4[24], sp4[24], sp4[24], sp4[24], sp4[24], sp4[24], sp4[24], 
        sp4[24], sp4[24], sp4[24], sp4[24:13]}), .B({sp4[24], sp4[24], sp4[24], 
        sp4[24], sp4[24], sp4[24], sp4[24], sp4[24], sp4[24], sp4[24], sp4[24], 
        sp4[24], sp4[24], sp4[24], sp4[24:14]}), .CI(1'b0), .SUM({N983, N982, 
        N981, N980, N979, N978, N977, N976, N975, N974, N973, N972, N971, N970, 
        N969, N968, N967, N966, N965, N964, N963, N962, N961, N960, N959}) );
  IIR_1_DW01_add_25 add_59_root_sub_0_root_add_115_61 ( .A({sp4[24], sp4[24], 
        sp4[24:13], N1664, N1663, N1662, N1661, N1660, N942, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .B({N983, N982, N981, N980, N979, N978, N977, N976, N975, 
        N974, N973, N972, N971, N970, N969, N968, N967, N966, N965, N964, N963, 
        N962, N961, N960, N959}), .CI(1'b0), .SUM({N1833, N1832, N1831, N1830, 
        N1829, N1828, N1827, N1826, N1825, N1824, N1823, N1822, N1821, N1820, 
        N1819, N1818, N1817, N1816, N1815, N1814, N1813, N1812, N1811, N1810, 
        N1809}) );
  IIR_1_DW01_add_24 add_49_root_sub_0_root_add_115_61 ( .A({N1833, N1832, 
        N1831, N1830, N1829, N1828, N1827, N1826, N1825, N1824, N1823, N1822, 
        N1821, N1820, N1819, N1818, N1817, N1816, N1815, N1814, N1813, N1812, 
        N1811, N1810, N1809}), .B({N86, N86, N86, N86, N85, N84, N83, N82, N81, 
        N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, 
        N66, N65}), .CI(1'b0), .SUM({N1333, N1332, N1331, N1330, N1329, N1328, 
        N1327, N1326, N1325, N1324, N1323, N1322, N1321, N1320, N1319, N1318, 
        N1317, N1316, N1315, N1314, N1313, N1312, N1311, N1310, N1309}) );
  IIR_1_DW01_add_23 add_39_root_sub_0_root_add_115_61 ( .A({N683, N682, N681, 
        N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, 
        N668, N667, N666, N665, N664, N663, N662, N661, N660, N659}), .B({
        N1333, N1332, N1331, N1330, N1329, N1328, N1327, N1326, N1325, N1324, 
        N1323, N1322, N1321, N1320, N1319, N1318, N1317, N1316, N1315, N1314, 
        N1313, N1312, N1311, N1310, N1309}), .CI(1'b0), .SUM({N533, N532, N531, 
        N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, 
        N518, N517, N516, N515, N514, N513, N512, N511, N510, N509}) );
  IIR_1_DW01_sub_3 sub_64_root_sub_0_root_add_115_61 ( .A({n723, n723, n723, 
        n723, n723, n723, n634, n636, n632, n630, n628, n626, n624, n622, n620, 
        n618, n616, n614, n612, n610, n608, n607, n605, 1'b0, 1'b0}), .B({n638, 
        n638, n638, n638, n638, n638, n638, n638, n638, n638, n638, n638, n638, 
        sp3[23:12]}), .CI(1'b0), .DIFF({N858, N857, N856, N855, N854, N853, 
        N852, N851, N850, N849, N848, N847, N846, N845, N844, N843, N842, N841, 
        N840, N839, N838, N837, N836, N835, N834}) );
  IIR_1_DW01_add_21 add_57_root_sub_0_root_add_115_61 ( .A({N858, N857, N856, 
        N855, N854, N853, N852, N851, N850, N849, N848, N847, N846, N845, N844, 
        N843, N842, N841, N840, N839, N838, N837, N836, N835, N834}), .B({
        N1683, N1682, N1681, N1680, N1679, N1678, N1677, N1676, N1675, N1674, 
        N1673, N1672, N1671, N1670, N1669, N1668, N1667, N1666, N1665, N1664, 
        N1663, N1662, N1661, N1660, N942}), .CI(1'b0), .SUM({N783, N782, N781, 
        N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, 
        N768, N767, N766, N765, N764, N763, N762, N761, N760, N759}) );
  IIR_1_DW01_add_20 add_51_root_sub_0_root_add_115_61 ( .A({N783, N782, N781, 
        N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, 
        N768, N767, N766, N765, N764, N763, N762, N761, N760, N759}), .B({N43, 
        N43, N43, N43, N43, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31, N30, N29, N28, N27, N26, N25, N24}), .CI(1'b0), .SUM({
        N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, 
        N696, N695, N694, N693, N692, N691, N690, N689, N688, N687, N686, N685, 
        N684}) );
  IIR_1_DW01_add_19 add_40_root_sub_0_root_add_115_61 ( .A({n751, n751, n751, 
        n751, n751, n751, n751, n751, n751, n751, n751, n750, n751, n750, n750, 
        n750, n750, n661, n658, n654, n651, n648, n645, n642, n639}), .B({N708, 
        N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, 
        N695, N694, N693, N692, N691, N690, N689, N688, N687, N686, N685, N684}), .CI(1'b0), .SUM({N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, 
        N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, 
        N536, N535, N534}) );
  IIR_1_DW01_add_18 add_31_root_sub_0_root_add_115_61 ( .A({n754, n755, n755, 
        n755, n755, n755, n755, n755, n754, n755, n755, s0[23], n657, 
        s0[21:10]}), .B({n742, n742, n742, n742, n741, n741, n662, n659, n655, 
        n652, n649, n646, n643, n640, s2[15:7], 1'b0, 1'b0}), .CI(1'b0), .SUM(
        {N1208, N1207, N1206, N1205, N1204, N1203, N1202, N1201, N1200, N1199, 
        N1198, N1197, N1196, N1195, N1194, N1193, N1192, N1191, N1190, N1189, 
        N1188, N1187, N1186, N1185, N1184}) );
  IIR_1_DW01_add_17 add_15_root_sub_0_root_add_115_61 ( .A({N433, N432, N431, 
        N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, 
        N418, N417, N416, N415, N414, N413, N412, N411, N410, N409}), .B({
        N1208, N1207, N1206, N1205, N1204, N1203, N1202, N1201, N1200, N1199, 
        N1198, N1197, N1196, N1195, N1194, N1193, N1192, N1191, N1190, N1189, 
        N1188, N1187, N1186, N1185, N1184}), .CI(1'b0), .SUM({N1108, N1107, 
        N1106, N1105, N1104, N1103, N1102, N1101, N1100, N1099, N1098, N1097, 
        N1096, N1095, N1094, N1093, N1092, N1091, N1090, N1089, N1088, N1087, 
        N1086, N1085, N1084}) );
  IIR_1_DW01_add_16 add_53_root_sub_0_root_add_115_61 ( .A({n734, n734, n734, 
        n734, n734, n734, n734, n733, n734, sp0[23:8]}), .B({n734, n731, n731, 
        n731, n732, n732, n732, n732, n732, n732, n732, n732, n732, n732, n732, 
        sp0[23:14]}), .CI(1'b0), .SUM({N1358, N1357, N1356, N1355, N1354, 
        N1353, N1352, N1351, N1350, N1349, N1348, N1347, N1346, N1345, N1344, 
        N1343, N1342, N1341, N1340, N1339, N1338, N1337, N1336, N1335, N1334})
         );
  IIR_1_DW01_add_15 add_38_root_sub_0_root_add_115_61 ( .A({N1358, N1357, 
        N1356, N1355, N1354, N1353, N1352, N1351, N1350, N1349, N1348, N1347, 
        N1346, N1345, N1344, N1343, N1342, N1341, N1340, N1339, N1338, N1337, 
        N1336, N1335, N1334}), .B({N533, N532, N531, N530, N529, N528, N527, 
        N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, 
        N514, N513, N512, N511, N510, N509}), .CI(1'b0), .SUM({N1258, N1257, 
        N1256, N1255, N1254, N1253, N1252, N1251, N1250, N1249, N1248, N1247, 
        N1246, N1245, N1244, N1243, N1242, N1241, N1240, N1239, N1238, N1237, 
        N1236, N1235, N1234}) );
  IIR_1_DW01_add_14 add_25_root_sub_0_root_add_115_61 ( .A({N458, N457, N456, 
        N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, 
        N443, N442, N441, N440, N439, N438, N437, N436, N435, N434}), .B({
        N1258, N1257, N1256, N1255, N1254, N1253, N1252, N1251, N1250, N1249, 
        N1248, N1247, N1246, N1245, N1244, N1243, N1242, N1241, N1240, N1239, 
        N1238, N1237, N1236, N1235, N1234}), .CI(1'b0), .SUM({N1183, N1182, 
        N1181, N1180, N1179, N1178, N1177, N1176, N1175, N1174, N1173, N1172, 
        N1171, N1170, N1169, N1168, N1167, N1166, N1165, N1164, N1163, N1162, 
        N1161, N1160, N1159}) );
  IIR_1_DW01_add_13 add_8_root_sub_0_root_add_115_61 ( .A({N1108, N1107, N1106, 
        N1105, N1104, N1103, N1102, N1101, N1100, N1099, N1098, N1097, N1096, 
        N1095, N1094, N1093, N1092, N1091, N1090, N1089, N1088, N1087, N1086, 
        N1085, N1084}), .B({N1183, N1182, N1181, N1180, N1179, N1178, N1177, 
        N1176, N1175, N1174, N1173, N1172, N1171, N1170, N1169, N1168, N1167, 
        N1166, N1165, N1164, N1163, N1162, N1161, N1160, N1159}), .CI(1'b0), 
        .SUM({N1058, N1057, N1056, N1055, N1054, N1053, N1052, N1051, N1050, 
        N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040, 
        N1039, N1038, N1037, N1036, N1035, N1034}) );
  IIR_1_DW01_add_12 add_10_root_sub_0_root_add_115_61 ( .A({N558, N557, N556, 
        N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, 
        N543, N542, N541, N540, N539, N538, N537, N536, N535, N534}), .B({N358, 
        N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, 
        N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334}), .CI(1'b0), .SUM({N1083, N1082, N1081, N1080, N1079, N1078, N1077, N1076, 
        N1075, N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067, N1066, 
        N1065, N1064, N1063, N1062, N1061, N1060, N1059}) );
  IIR_1_DW01_add_11 add_6_root_sub_0_root_add_115_61 ( .A({N1058, N1057, N1056, 
        N1055, N1054, N1053, N1052, N1051, N1050, N1049, N1048, N1047, N1046, 
        N1045, N1044, N1043, N1042, N1041, N1040, N1039, N1038, N1037, N1036, 
        N1035, N1034}), .B({N1083, N1082, N1081, N1080, N1079, N1078, N1077, 
        N1076, N1075, N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067, 
        N1066, N1065, N1064, N1063, N1062, N1061, N1060, N1059}), .CI(1'b0), 
        .SUM({N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026, N1025, 
        N1024, N1023, N1022, N1021, N1020, N1019, N1018, N1017, N1016, N1015, 
        N1014, N1013, N1012, N1011, N1010, N1009}) );
  IIR_1_DW01_add_10 add_5_root_sub_0_root_add_115_61 ( .A({N383, N382, N381, 
        N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360, N359}), .B({
        N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026, N1025, N1024, 
        N1023, N1022, N1021, N1020, N1019, N1018, N1017, N1016, N1015, N1014, 
        N1013, N1012, N1011, N1010, N1009}), .CI(1'b0), .SUM({N1008, N1007, 
        N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, 
        N996, N995, N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, 
        N984}) );
  IIR_1_DW01_add_9 add_18_root_sub_0_root_add_115_61 ( .A({n730, n730, n730, 
        n730, n730, n730, n730, n730, n633, n635, n631, n629, n627, n625, n623, 
        n621, n619, n617, n615, n613, n611, n609, sp1[9], n606, N315}), .B({
        n730, n728, n729, n728, n729, n729, n729, n728, n729, n729, n729, n728, 
        n633, n635, n631, n629, n627, n625, n623, n621, n619, n617, n615, n613, 
        n611}), .CI(1'b0), .SUM({N1133, N1132, N1131, N1130, N1129, N1128, 
        N1127, N1126, N1125, N1124, N1123, N1122, N1121, N1120, N1119, N1118, 
        N1117, N1116, N1115, N1114, N1113, N1112, N1111, N1110, N1109}) );
  IIR_1_DW01_add_8 add_41_root_sub_0_root_add_115_61 ( .A({n751, n751, n751, 
        n751, n751, n751, n751, n751, n751, n751, n751, n750, n751, n751, n751, 
        n661, n658, n654, n651, n648, n645, n642, n639, s1[15:14]}), .B({n751, 
        n748, n748, n748, n748, n748, n748, n748, n748, n661, n658, n654, n651, 
        n648, n645, n642, n639, s1[15:8]}), .CI(1'b0), .SUM({N1283, N1282, 
        N1281, N1280, N1279, N1278, N1277, N1276, N1275, N1274, N1273, N1272, 
        N1271, N1270, N1269, N1268, N1267, N1266, N1265, N1264, N1263, N1262, 
        N1261, N1260, N1259}) );
  IIR_1_DW01_add_7 add_7_root_sub_0_root_add_115_61 ( .A({N408, N407, N406, 
        N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, 
        N393, N392, N391, N390, N389, N388, N387, N386, N385, N384}), .B({N158, 
        N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, 
        N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134}), .CI(1'b0), .SUM({N1508, N1507, N1506, N1505, N1504, N1503, N1502, N1501, 
        N1500, N1499, N1498, N1497, N1496, N1495, N1494, N1493, N1492, N1491, 
        N1490, N1489, N1488, N1487, N1486, N1485, N1484}) );
  IIR_1_DW01_add_6 add_4_root_sub_0_root_add_115_61 ( .A({N1008, N1007, N1006, 
        N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, N996, N995, 
        N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, N984}), 
        .B({N1508, N1507, N1506, N1505, N1504, N1503, N1502, N1501, N1500, 
        N1499, N1498, N1497, N1496, N1495, N1494, N1493, N1492, N1491, N1490, 
        N1489, N1488, N1487, N1486, N1485, N1484}), .CI(1'b0), .SUM({N1483, 
        N1482, N1481, N1480, N1479, N1478, N1477, N1476, N1475, N1474, N1473, 
        N1472, N1471, N1470, N1469, N1468, N1467, N1466, N1465, N1464, N1463, 
        N1462, N1461, N1460, N1459}) );
  IIR_1_DW01_add_5 add_30_root_sub_0_root_add_115_61 ( .A({n746, n745, n745, 
        n745, n745, n745, n745, n745, n745, n745, n662, n659, n655, n652, n649, 
        n646, n643, n640, s2[15:9]}), .B({n746, n743, n743, n743, n743, n743, 
        n743, n742, n742, n742, n742, n742, n742, n742, n742, n742, n662, n659, 
        n655, n652, n649, n646, n643, n640, s2[15]}), .CI(1'b0), .SUM({N1583, 
        N1582, N1581, N1580, N1579, N1578, N1577, N1576, N1575, N1574, N1573, 
        N1572, N1571, N1570, N1569, N1568, N1567, N1566, N1565, N1564, N1563, 
        N1562, N1561, N1560, N1559}) );
  IIR_1_DW01_add_4 add_29_root_sub_0_root_add_115_61 ( .A({N1583, N1582, N1581, 
        N1580, N1579, N1578, N1577, N1576, N1575, N1574, N1573, N1572, N1571, 
        N1570, N1569, N1568, N1567, N1566, N1565, N1564, N1563, N1562, N1561, 
        N1560, N1559}), .B({n744, n744, n743, n744, n744, n744, n743, n743, 
        n743, n662, n659, n655, n652, n649, n646, n643, n640, s2[15:8]}), .CI(
        1'b0), .SUM({N1783, N1782, N1781, N1780, N1779, N1778, N1777, N1776, 
        N1775, N1774, N1773, N1772, N1771, N1770, N1769, N1768, N1767, N1766, 
        N1765, N1764, N1763, N1762, N1761, N1760, N1759}) );
  IIR_1_DW01_add_3 add_28_root_sub_0_root_add_115_61 ( .A({N1783, N1782, N1781, 
        N1780, N1779, N1778, N1777, N1776, N1775, N1774, N1773, N1772, N1771, 
        N1770, N1769, N1768, N1767, N1766, N1765, N1764, N1763, N1762, N1761, 
        N1760, N1759}), .B({n743, n745, n745, n744, n745, n745, n744, n744, 
        n744, n743, n744, n744, n744, n743, n744, n662, n659, n655, n652, n649, 
        n646, n643, n640, s2[15:14]}), .CI(1'b0), .SUM({N1883, N1882, N1881, 
        N1880, N1879, N1878, N1877, N1876, N1875, N1874, N1873, N1872, N1871, 
        N1870, N1869, N1868, N1867, N1866, N1865, N1864, N1863, N1862, N1861, 
        N1860, N1859}) );
  IIR_1_DW01_add_2 add_14_root_sub_0_root_add_115_61 ( .A({N1283, N1282, N1281, 
        N1280, N1279, N1278, N1277, N1276, N1275, N1274, N1273, N1272, N1271, 
        N1270, N1269, N1268, N1267, N1266, N1265, N1264, N1263, N1262, N1261, 
        N1260, N1259}), .B({N1883, N1882, N1881, N1880, N1879, N1878, N1877, 
        N1876, N1875, N1874, N1873, N1872, N1871, N1870, N1869, N1868, N1867, 
        N1866, N1865, N1864, N1863, N1862, N1861, N1860, N1859}), .CI(1'b0), 
        .SUM({N1533, N1532, N1531, N1530, N1529, N1528, N1527, N1526, N1525, 
        N1524, N1523, N1522, N1521, N1520, N1519, N1518, N1517, N1516, N1515, 
        N1514, N1513, N1512, N1511, N1510, N1509}) );
  IIR_1_DW01_add_1 add_3_root_sub_0_root_add_115_61 ( .A({N1483, N1482, N1481, 
        N1480, N1479, N1478, N1477, N1476, N1475, N1474, N1473, N1472, N1471, 
        N1470, N1469, N1468, N1467, N1466, N1465, N1464, N1463, N1462, N1461, 
        N1460, N1459}), .B({N1533, N1532, N1531, N1530, N1529, N1528, N1527, 
        N1526, N1525, N1524, N1523, N1522, N1521, N1520, N1519, N1518, N1517, 
        N1516, N1515, N1514, N1513, N1512, N1511, N1510, N1509}), .CI(1'b0), 
        .SUM({N1733, N1732, N1731, N1730, N1729, N1728, N1727, N1726, N1725, 
        N1724, N1723, N1722, N1721, N1720, N1719, N1718, N1717, N1716, N1715, 
        N1714, N1713, N1712, N1711, N1710, N1709}) );
  IIR_1_DW01_sub_2 sub_13_root_sub_0_root_add_115_61 ( .A({N109, N109, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, N92, N91, N90, N89, N88, N87}), .B({N1133, N1132, 
        N1131, N1130, N1129, N1128, N1127, N1126, N1125, N1124, N1123, N1122, 
        N1121, N1120, N1119, N1118, N1117, N1116, N1115, N1114, N1113, N1112, 
        N1111, N1110, N1109}), .CI(1'b0), .DIFF({N1758, N1757, N1756, N1755, 
        N1754, N1753, N1752, N1751, N1750, N1749, N1748, N1747, N1746, N1745, 
        N1744, N1743, N1742, N1741, N1740, N1739, N1738, N1737, N1736, N1735, 
        N1734}) );
  IIR_1_DW01_sub_1 sub_2_root_sub_0_root_add_115_61 ( .A({N1733, N1732, N1731, 
        N1730, N1729, N1728, N1727, N1726, N1725, N1724, N1723, N1722, N1721, 
        N1720, N1719, N1718, N1717, N1716, N1715, N1714, N1713, N1712, N1711, 
        N1710, N1709}), .B({N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, 
        N238, n627, n625, n623, n621}), .CI(1'b0), .DIFF({N1858, N1857, N1856, 
        N1855, N1854, N1853, N1852, N1851, N1850, N1849, N1848, N1847, N1846, 
        N1845, N1844, N1843, N1842, N1841, N1840, N1839, N1838, N1837, N1836, 
        N1835, N1834}) );
  IIR_1_DW01_add_0 add_1_root_sub_0_root_add_115_61 ( .A({N1758, N1757, N1756, 
        N1755, N1754, N1753, N1752, N1751, N1750, N1749, N1748, N1747, N1746, 
        N1745, N1744, N1743, N1742, N1741, N1740, N1739, N1738, N1737, N1736, 
        N1735, N1734}), .B({N1858, N1857, N1856, N1855, N1854, N1853, N1852, 
        N1851, N1850, N1849, N1848, N1847, N1846, N1845, N1844, N1843, N1842, 
        N1841, N1840, N1839, N1838, N1837, N1836, N1835, N1834}), .CI(1'b0), 
        .SUM({N1908, N1907, N1906, N1905, N1904, N1903, N1902, N1901, N1900, 
        N1899, N1898, N1897, N1896, N1895, N1894, N1893, N1892, N1891, N1890, 
        N1889, N1888, N1887, N1886, N1885, N1884}) );
  IIR_1_DW01_sub_0 sub_0_root_sub_0_root_add_115_61 ( .A({N1908, N1907, N1906, 
        N1905, N1904, N1903, N1902, N1901, N1900, N1899, N1898, N1897, N1896, 
        N1895, N1894, N1893, N1892, N1891, N1890, N1889, N1888, N1887, N1886, 
        N1885, N1884}), .B({N233, N232, N231, N230, N229, N228, N227, N226, 
        N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, 
        N213, N212, N211, N210, N209}), .CI(1'b0), .DIFF({N1924, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, N1923, N1922, N1921, 
        N1920, N1919, N1918, N1917, N1916, N1915, N1914, N1913, N1912, N1911, 
        N1910, N1909, SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
  TLATX1 \sum_reg[24]  ( .G(N1945), .D(N1924), .QN(n493) );
  TLATX1 \sum_reg[21]  ( .G(N1945), .D(N1923), .QN(n494) );
  TLATX1 \sum_reg[20]  ( .G(N1945), .D(N1922), .QN(n495) );
  TLATX1 \sum_reg[19]  ( .G(N1945), .D(N1921), .QN(n496) );
  TLATX1 \sum_reg[18]  ( .G(N1945), .D(N1920), .QN(n497) );
  TLATX1 \sum_reg[17]  ( .G(N1945), .D(N1919), .QN(n498) );
  TLATX1 \sum_reg[16]  ( .G(N1945), .D(N1918), .QN(n499) );
  TLATX1 \sum_reg[15]  ( .G(N1945), .D(N1917), .QN(n500) );
  TLATX1 \sum_reg[14]  ( .G(N1945), .D(N1916), .QN(n501) );
  TLATX1 \sum_reg[13]  ( .G(N1945), .D(N1915), .QN(n502) );
  TLATX1 \sum_reg[12]  ( .G(N1945), .D(N1914), .QN(n503) );
  TLATX1 \sum_reg[11]  ( .G(N1945), .D(N1913), .QN(n504) );
  TLATX1 \sum_reg[10]  ( .G(N1945), .D(N1912), .QN(n505) );
  TLATX1 \sum_reg[9]  ( .G(N1945), .D(N1911), .QN(n506) );
  TLATX1 \sum_reg[8]  ( .G(N1945), .D(N1910), .QN(n507) );
  TLATX1 \sum_reg[7]  ( .G(N1945), .D(N1909), .QN(n508) );
  DFFRX1 \RAddr_reg[19]  ( .D(n471), .CK(clk), .RN(n685), .Q(RAddr[19]), .QN(
        n252) );
  DFFRX1 \s4_reg[24]  ( .D(n469), .CK(clk), .RN(n685), .Q(s4[24]), .QN(n510)
         );
  DFFRX1 \s3_reg[24]  ( .D(n468), .CK(clk), .RN(n685), .Q(s3[24]) );
  DFFRX1 \s3_reg[23]  ( .D(n462), .CK(clk), .RN(n684), .Q(s3[23]), .QN(n535)
         );
  DFFRX1 \s3_reg[22]  ( .D(n456), .CK(clk), .RN(n684), .Q(s3[22]), .QN(n534)
         );
  DFFRX1 \s3_reg[21]  ( .D(n450), .CK(clk), .RN(n684), .Q(s3[21]), .QN(n533)
         );
  DFFRX1 \s3_reg[20]  ( .D(n444), .CK(clk), .RN(n683), .Q(s3[20]), .QN(n532)
         );
  DFFRX1 \s3_reg[19]  ( .D(n438), .CK(clk), .RN(n683), .Q(s3[19]), .QN(n531)
         );
  DFFRX1 \s3_reg[18]  ( .D(n432), .CK(clk), .RN(n682), .Q(s3[18]), .QN(n530)
         );
  DFFRX1 \s3_reg[17]  ( .D(n426), .CK(clk), .RN(n682), .Q(s3[17]), .QN(n566)
         );
  DFFRX1 \s3_reg[16]  ( .D(n420), .CK(clk), .RN(n681), .Q(s3[16]), .QN(n529)
         );
  DFFRX1 \sp1_reg[8]  ( .D(n279), .CK(clk), .RN(n670), .Q(sp1[8]) );
  DFFRX1 \sp2_reg[7]  ( .D(n275), .CK(clk), .RN(n670), .Q(N889) );
  DFFRX1 \s5_reg[7]  ( .D(n368), .CK(clk), .RN(n677), .Q(s5[7]), .QN(n573) );
  DFFRX1 \s0_reg[8]  ( .D(n369), .CK(clk), .RN(n677), .Q(s0[8]) );
  DFFRX1 \s1_reg[7]  ( .D(n364), .CK(clk), .RN(n677), .Q(s1[7]) );
  DFFRX1 \s5_reg[8]  ( .D(n374), .CK(clk), .RN(n678), .Q(s5[8]), .QN(n577) );
  DFFRX1 \s0_reg[7]  ( .D(n363), .CK(clk), .RN(n677), .Q(s0[7]) );
  DFFRX1 \s2_reg[23]  ( .D(n461), .CK(clk), .RN(n684), .Q(s2[23]) );
  DFFRX1 \s1_reg[23]  ( .D(n460), .CK(clk), .RN(n684), .Q(s1[23]) );
  DFFRX1 \s2_reg[22]  ( .D(n455), .CK(clk), .RN(n684), .Q(s2[22]) );
  DFFRX1 \s1_reg[22]  ( .D(n454), .CK(clk), .RN(n684), .Q(s1[22]) );
  DFFRX1 \s0_reg[22]  ( .D(n453), .CK(clk), .RN(n684), .Q(s0[22]) );
  DFFRX1 \s2_reg[21]  ( .D(n449), .CK(clk), .RN(n683), .Q(s2[21]) );
  DFFRX1 \s1_reg[21]  ( .D(n448), .CK(clk), .RN(n683), .Q(s1[21]) );
  DFFRX1 \s2_reg[20]  ( .D(n443), .CK(clk), .RN(n683), .Q(s2[20]) );
  DFFRX1 \s1_reg[20]  ( .D(n442), .CK(clk), .RN(n683), .Q(s1[20]) );
  DFFRX1 \s2_reg[19]  ( .D(n437), .CK(clk), .RN(n683), .Q(s2[19]) );
  DFFRX1 \s1_reg[19]  ( .D(n436), .CK(clk), .RN(n682), .Q(s1[19]) );
  DFFRX1 \s2_reg[18]  ( .D(n431), .CK(clk), .RN(n682), .Q(s2[18]) );
  DFFRX1 \s1_reg[18]  ( .D(n430), .CK(clk), .RN(n682), .Q(s1[18]) );
  DFFRX1 \s2_reg[17]  ( .D(n425), .CK(clk), .RN(n682), .Q(s2[17]) );
  DFFRX1 \s1_reg[17]  ( .D(n424), .CK(clk), .RN(n682), .Q(s1[17]) );
  DFFRX1 \s2_reg[16]  ( .D(n419), .CK(clk), .RN(n681), .Q(s2[16]) );
  DFFRX1 \s1_reg[16]  ( .D(n418), .CK(clk), .RN(n681), .Q(s1[16]) );
  DFFRX1 \sp3_reg[24]  ( .D(n361), .CK(clk), .RN(n677), .Q(sp3[24]), .QN(n565)
         );
  DFFRX1 \sp2_reg[22]  ( .D(n355), .CK(clk), .RN(n676), .Q(sp2[22]) );
  DFFRX1 \sp1_reg[22]  ( .D(n354), .CK(clk), .RN(n676), .Q(sp1[22]) );
  DFFRX1 \sp2_reg[23]  ( .D(n350), .CK(clk), .RN(n676), .Q(sp2[23]) );
  DFFRX1 \sp1_reg[23]  ( .D(n349), .CK(clk), .RN(n676), .Q(sp1[23]) );
  DFFRX1 \sp2_reg[21]  ( .D(n345), .CK(clk), .RN(n675), .Q(sp2[21]) );
  DFFRX1 \sp1_reg[21]  ( .D(n344), .CK(clk), .RN(n675), .Q(sp1[21]) );
  DFFRX1 \sp2_reg[20]  ( .D(n340), .CK(clk), .RN(n675), .Q(sp2[20]) );
  DFFRX1 \sp1_reg[20]  ( .D(n339), .CK(clk), .RN(n675), .Q(sp1[20]) );
  DFFRX1 \sp2_reg[19]  ( .D(n335), .CK(clk), .RN(n675), .Q(sp2[19]) );
  DFFRX1 \sp1_reg[19]  ( .D(n334), .CK(clk), .RN(n675), .Q(N237) );
  DFFRX1 \sp2_reg[18]  ( .D(n330), .CK(clk), .RN(n674), .Q(sp2[18]) );
  DFFRX1 \sp1_reg[18]  ( .D(n329), .CK(clk), .RN(n674), .Q(N236) );
  DFFRX1 \sp2_reg[17]  ( .D(n325), .CK(clk), .RN(n674), .Q(sp2[17]) );
  DFFRX1 \sp1_reg[17]  ( .D(n324), .CK(clk), .RN(n674), .Q(N1139) );
  DFFRX1 \sp2_reg[16]  ( .D(n320), .CK(clk), .RN(n674), .Q(sp2[16]) );
  DFFRX1 \sp1_reg[16]  ( .D(n319), .CK(clk), .RN(n673), .Q(N1138) );
  DFFRX1 \sp2_reg[15]  ( .D(n315), .CK(clk), .RN(n673), .Q(sp2[15]) );
  DFFRX1 \sp1_reg[15]  ( .D(n314), .CK(clk), .RN(n673), .Q(N1137) );
  DFFRX1 \sp2_reg[14]  ( .D(n310), .CK(clk), .RN(n673), .Q(sp2[14]) );
  DFFRX1 \sp1_reg[14]  ( .D(n309), .CK(clk), .RN(n673), .Q(N1136) );
  DFFRX1 \sp2_reg[13]  ( .D(n305), .CK(clk), .RN(n672), .Q(sp2[13]) );
  DFFRX1 \sp1_reg[13]  ( .D(n304), .CK(clk), .RN(n672), .Q(N1135) );
  DFFRX1 \sp2_reg[12]  ( .D(n300), .CK(clk), .RN(n672), .Q(sp2[12]) );
  DFFRX1 \sp1_reg[12]  ( .D(n299), .CK(clk), .RN(n672), .Q(N1134) );
  DFFRX1 \sp2_reg[11]  ( .D(n295), .CK(clk), .RN(n672), .Q(sp2[11]) );
  DFFRX1 \sp1_reg[11]  ( .D(n294), .CK(clk), .RN(n672), .Q(sp1[11]) );
  DFFRX1 \sp2_reg[10]  ( .D(n290), .CK(clk), .RN(n671), .Q(sp2[10]) );
  DFFRX1 \sp1_reg[10]  ( .D(n289), .CK(clk), .RN(n671), .Q(sp1[10]) );
  DFFRX1 \sp2_reg[9]  ( .D(n285), .CK(clk), .RN(n671), .Q(N1441) );
  DFFRX1 \sp2_reg[8]  ( .D(n280), .CK(clk), .RN(n670), .Q(N890) );
  DFFRX1 \s2_reg[7]  ( .D(n365), .CK(clk), .RN(n677), .Q(s2[7]) );
  DFFRX1 \s5_reg[10]  ( .D(n386), .CK(clk), .RN(n679), .Q(s5[10]), .QN(n558)
         );
  DFFRX1 \s1_reg[9]  ( .D(n376), .CK(clk), .RN(n678), .Q(s1[9]) );
  DFFRX1 \s1_reg[8]  ( .D(n370), .CK(clk), .RN(n677), .Q(s1[8]) );
  DFFRX1 \s4_reg[7]  ( .D(n367), .CK(clk), .RN(n677), .Q(s4[7]), .QN(n528) );
  DFFRX1 \sp2_reg[24]  ( .D(n360), .CK(clk), .RN(n677), .Q(sp2[24]) );
  DFFRX1 \s3_reg[7]  ( .D(n366), .CK(clk), .RN(n677), .Q(s3[7]), .QN(n576) );
  DFFRX1 \s4_reg[9]  ( .D(n379), .CK(clk), .RN(n678), .Q(s4[9]), .QN(n574) );
  DFFRX1 \s0_reg[9]  ( .D(n375), .CK(clk), .RN(n678), .Q(s0[9]) );
  DFFRX1 \s5_reg[9]  ( .D(n380), .CK(clk), .RN(n678), .Q(N24), .QN(n527) );
  DFFRX1 \sp0_reg[7]  ( .D(n273), .CK(clk), .RN(n670), .Q(sp0[7]) );
  DFFRX1 \s2_reg[8]  ( .D(n371), .CK(clk), .RN(n677), .Q(s2[8]) );
  DFFRX1 \sp0_reg[10]  ( .D(n288), .CK(clk), .RN(n671), .Q(sp0[10]) );
  DFFRX1 \sp0_reg[9]  ( .D(n283), .CK(clk), .RN(n671), .Q(sp0[9]) );
  DFFRX1 \s4_reg[8]  ( .D(n373), .CK(clk), .RN(n678), .Q(s4[8]), .QN(n537) );
  DFFRX1 \s2_reg[10]  ( .D(n383), .CK(clk), .RN(n678), .Q(s2[10]) );
  DFFRX1 \sp1_reg[7]  ( .D(n274), .CK(clk), .RN(n670), .Q(N315) );
  DFFRX1 \s0_reg[24]  ( .D(n465), .CK(clk), .RN(n685), .Q(s0[24]) );
  DFFRX1 \sp0_reg[24]  ( .D(n358), .CK(clk), .RN(n676), .Q(sp0[24]) );
  DFFRX1 \s5_reg[24]  ( .D(n470), .CK(clk), .RN(n685), .Q(s5[24]), .QN(n513)
         );
  DFFRX1 \sp4_reg[24]  ( .D(n362), .CK(clk), .RN(n677), .Q(sp4[24]), .QN(n511)
         );
  DFFRX1 \s1_reg[10]  ( .D(n382), .CK(clk), .RN(n678), .Q(s1[10]) );
  DFFRX1 \s5_reg[11]  ( .D(n392), .CK(clk), .RN(n679), .Q(s5[11]), .QN(n559)
         );
  DFFRX1 \sp3_reg[8]  ( .D(n281), .CK(clk), .RN(n671), .Q(sp3[8]), .QN(n601)
         );
  DFFRX1 \sp4_reg[8]  ( .D(n282), .CK(clk), .RN(n671), .Q(N1660), .QN(n557) );
  DFFRX1 \RAddr_reg[12]  ( .D(n478), .CK(clk), .RN(n686), .Q(RAddr[12]), .QN(
        n259) );
  DFFRX1 \RAddr_reg[13]  ( .D(n477), .CK(clk), .RN(n686), .Q(RAddr[13]), .QN(
        n258) );
  DFFRX1 \RAddr_reg[14]  ( .D(n476), .CK(clk), .RN(n686), .Q(RAddr[14]), .QN(
        n257) );
  DFFRX1 \RAddr_reg[15]  ( .D(n475), .CK(clk), .RN(n685), .Q(RAddr[15]), .QN(
        n256) );
  DFFRX1 \RAddr_reg[16]  ( .D(n474), .CK(clk), .RN(n685), .Q(RAddr[16]), .QN(
        n255) );
  DFFRX1 \RAddr_reg[17]  ( .D(n473), .CK(clk), .RN(n685), .Q(RAddr[17]), .QN(
        n254) );
  DFFRX1 \RAddr_reg[18]  ( .D(n472), .CK(clk), .RN(n685), .Q(RAddr[18]), .QN(
        n253) );
  DFFRX1 \state_reg[1]  ( .D(n720), .CK(clk), .RN(n670), .Q(state[1]), .QN(
        n545) );
  DFFRX1 \RAddr_reg[4]  ( .D(n486), .CK(clk), .RN(n686), .Q(RAddr[4]), .QN(
        n267) );
  DFFRX1 \RAddr_reg[5]  ( .D(n485), .CK(clk), .RN(n686), .Q(RAddr[5]), .QN(
        n266) );
  DFFRX1 \RAddr_reg[6]  ( .D(n484), .CK(clk), .RN(n686), .Q(RAddr[6]), .QN(
        n265) );
  DFFRX1 \RAddr_reg[7]  ( .D(n483), .CK(clk), .RN(n686), .Q(RAddr[7]), .QN(
        n264) );
  DFFRX1 \RAddr_reg[8]  ( .D(n482), .CK(clk), .RN(n686), .Q(RAddr[8]), .QN(
        n263) );
  DFFRX1 \RAddr_reg[9]  ( .D(n481), .CK(clk), .RN(n686), .Q(RAddr[9]), .QN(
        n262) );
  DFFRX1 \RAddr_reg[10]  ( .D(n480), .CK(clk), .RN(n686), .Q(RAddr[10]), .QN(
        n261) );
  DFFRX1 \RAddr_reg[11]  ( .D(n479), .CK(clk), .RN(n686), .Q(RAddr[11]), .QN(
        n260) );
  DFFRX1 \RAddr_reg[1]  ( .D(n489), .CK(clk), .RN(n687), .Q(RAddr[1]), .QN(
        n270) );
  DFFRX1 \RAddr_reg[2]  ( .D(n488), .CK(clk), .RN(n686), .Q(RAddr[2]), .QN(
        n269) );
  DFFRX1 \RAddr_reg[3]  ( .D(n487), .CK(clk), .RN(n686), .Q(RAddr[3]), .QN(
        n268) );
  DFFRX1 \RAddr_reg[0]  ( .D(n490), .CK(clk), .RN(n687), .Q(RAddr[0]), .QN(
        n271) );
  TLATX1 load_reg ( .G(N17), .D(n670), .Q(load) );
  DFFRX1 hold_reg ( .D(N1948), .CK(clk), .RN(n670), .Q(hold) );
  DFFRX1 \sp0_reg[12]  ( .D(n298), .CK(clk), .RN(n672), .Q(sp0[12]) );
  DFFRX1 \sp0_reg[8]  ( .D(n278), .CK(clk), .RN(n670), .Q(sp0[8]) );
  DFFRX1 \sp3_reg[7]  ( .D(n276), .CK(clk), .RN(n670), .Q(sp3[7]), .QN(n589)
         );
  DFFRX1 \sp4_reg[12]  ( .D(n302), .CK(clk), .RN(n672), .Q(N1664), .QN(n564)
         );
  DFFRX1 \sp4_reg[11]  ( .D(n297), .CK(clk), .RN(n672), .Q(N1663), .QN(n563)
         );
  DFFRX1 \sp4_reg[10]  ( .D(n292), .CK(clk), .RN(n671), .Q(N1662), .QN(n562)
         );
  DFFRX1 \sp4_reg[9]  ( .D(n287), .CK(clk), .RN(n671), .Q(N1661), .QN(n561) );
  DFFRX1 \s3_reg[8]  ( .D(n372), .CK(clk), .RN(n678), .Q(s3[8]), .QN(n572) );
  DFFRX1 \sp4_reg[13]  ( .D(n307), .CK(clk), .RN(n673), .Q(sp4[13]), .QN(n546)
         );
  DFFRX1 \sp4_reg[7]  ( .D(n277), .CK(clk), .RN(n670), .Q(N942), .QN(n542) );
  DFFRX1 \s2_reg[9]  ( .D(n377), .CK(clk), .RN(n678), .Q(s2[9]) );
  DFFRX1 \s0_reg[10]  ( .D(n381), .CK(clk), .RN(n678), .Q(s0[10]) );
  DFFRX1 \sp0_reg[11]  ( .D(n293), .CK(clk), .RN(n671), .Q(sp0[11]) );
  DFFRX1 \s2_reg[13]  ( .D(n401), .CK(clk), .RN(n680), .Q(s2[13]) );
  DFFRX1 \s1_reg[13]  ( .D(n400), .CK(clk), .RN(n680), .Q(s1[13]) );
  DFFRX1 \s2_reg[12]  ( .D(n395), .CK(clk), .RN(n679), .Q(s2[12]) );
  DFFRX1 \s1_reg[12]  ( .D(n394), .CK(clk), .RN(n679), .Q(s1[12]) );
  DFFRX1 \sp3_reg[9]  ( .D(n286), .CK(clk), .RN(n671), .Q(sp3[9]), .QN(n600)
         );
  DFFRX1 \s2_reg[11]  ( .D(n389), .CK(clk), .RN(n679), .Q(s2[11]) );
  DFFRX1 \s1_reg[11]  ( .D(n388), .CK(clk), .RN(n679), .Q(s1[11]) );
  DFFRX1 \sp1_reg[9]  ( .D(n284), .CK(clk), .RN(n671), .Q(sp1[9]) );
  DFFRX1 \s3_reg[10]  ( .D(n384), .CK(clk), .RN(n678), .Q(s3[10]), .QN(n575)
         );
  DFFRX1 \sp0_reg[13]  ( .D(n303), .CK(clk), .RN(n672), .Q(sp0[13]) );
  DFFRX1 \s3_reg[9]  ( .D(n378), .CK(clk), .RN(n678), .Q(s3[9]), .QN(n536) );
  DFFRX1 \sp3_reg[23]  ( .D(n351), .CK(clk), .RN(n676), .Q(sp3[23]), .QN(n568)
         );
  DFFRX1 \sp3_reg[11]  ( .D(n296), .CK(clk), .RN(n672), .Q(sp3[11]), .QN(n599)
         );
  DFFRX1 \sp3_reg[10]  ( .D(n291), .CK(clk), .RN(n671), .Q(sp3[10]), .QN(n541)
         );
  DFFRX1 \s0_reg[11]  ( .D(n387), .CK(clk), .RN(n679), .Q(s0[11]) );
  DFFRX1 \s3_reg[13]  ( .D(n402), .CK(clk), .RN(n680), .Q(s3[13]), .QN(n571)
         );
  DFFRX1 \s3_reg[12]  ( .D(n396), .CK(clk), .RN(n679), .Q(s3[12]), .QN(n570)
         );
  DFFRX1 \s0_reg[23]  ( .D(n459), .CK(clk), .RN(n684), .Q(s0[23]), .QN(n587)
         );
  DFFRX1 \sp4_reg[21]  ( .D(n347), .CK(clk), .RN(n676), .Q(sp4[21]), .QN(n553)
         );
  DFFRX1 \sp4_reg[20]  ( .D(n342), .CK(clk), .RN(n675), .Q(sp4[20]), .QN(n552)
         );
  DFFRX1 \sp4_reg[19]  ( .D(n337), .CK(clk), .RN(n675), .Q(sp4[19]), .QN(n551)
         );
  DFFRX1 \sp4_reg[18]  ( .D(n332), .CK(clk), .RN(n674), .Q(sp4[18]), .QN(n550)
         );
  DFFRX1 \sp4_reg[17]  ( .D(n327), .CK(clk), .RN(n674), .Q(sp4[17]), .QN(n549)
         );
  DFFRX1 \sp4_reg[16]  ( .D(n322), .CK(clk), .RN(n674), .Q(sp4[16]), .QN(n548)
         );
  DFFRX1 \sp4_reg[15]  ( .D(n317), .CK(clk), .RN(n673), .Q(sp4[15]), .QN(n547)
         );
  DFFRX1 \s5_reg[12]  ( .D(n398), .CK(clk), .RN(n680), .Q(s5[12]), .QN(n560)
         );
  DFFRX1 \s1_reg[14]  ( .D(n406), .CK(clk), .RN(n680), .Q(s1[14]) );
  DFFRX1 \s0_reg[13]  ( .D(n399), .CK(clk), .RN(n680), .Q(s0[13]) );
  DFFRX1 \sp4_reg[14]  ( .D(n312), .CK(clk), .RN(n673), .Q(sp4[14]), .QN(n543)
         );
  DFFRX1 \s2_reg[14]  ( .D(n407), .CK(clk), .RN(n680), .Q(s2[14]) );
  DFFRX1 \s0_reg[12]  ( .D(n393), .CK(clk), .RN(n679), .Q(s0[12]) );
  DFFRX1 \s3_reg[11]  ( .D(n390), .CK(clk), .RN(n679), .Q(s3[11]), .QN(n569)
         );
  DFFRX1 \s0_reg[15]  ( .D(n411), .CK(clk), .RN(n681), .Q(s0[15]) );
  DFFRX1 \s0_reg[14]  ( .D(n405), .CK(clk), .RN(n680), .Q(s0[14]) );
  DFFRX1 \sp0_reg[22]  ( .D(n353), .CK(clk), .RN(n676), .Q(sp0[22]) );
  DFFRX1 \sp0_reg[23]  ( .D(n348), .CK(clk), .RN(n676), .Q(sp0[23]) );
  DFFRX1 \sp0_reg[21]  ( .D(n343), .CK(clk), .RN(n675), .Q(sp0[21]) );
  DFFRX1 \sp0_reg[20]  ( .D(n338), .CK(clk), .RN(n675), .Q(sp0[20]) );
  DFFRX1 \sp0_reg[19]  ( .D(n333), .CK(clk), .RN(n675), .Q(sp0[19]) );
  DFFRX1 \sp0_reg[18]  ( .D(n328), .CK(clk), .RN(n674), .Q(sp0[18]) );
  DFFRX1 \sp0_reg[17]  ( .D(n323), .CK(clk), .RN(n674), .Q(sp0[17]) );
  DFFRX1 \sp0_reg[16]  ( .D(n318), .CK(clk), .RN(n673), .Q(sp0[16]) );
  DFFRX1 \sp0_reg[15]  ( .D(n313), .CK(clk), .RN(n673), .Q(sp0[15]) );
  DFFRX1 \s1_reg[15]  ( .D(n412), .CK(clk), .RN(n681), .Q(s1[15]) );
  DFFRX1 \sp3_reg[22]  ( .D(n356), .CK(clk), .RN(n676), .Q(sp3[22]), .QN(n588)
         );
  DFFRX1 \sp3_reg[21]  ( .D(n346), .CK(clk), .RN(n676), .Q(sp3[21]), .QN(n598)
         );
  DFFRX1 \sp3_reg[20]  ( .D(n341), .CK(clk), .RN(n675), .Q(sp3[20]), .QN(n597)
         );
  DFFRX1 \sp3_reg[19]  ( .D(n336), .CK(clk), .RN(n675), .Q(sp3[19]), .QN(n596)
         );
  DFFRX1 \sp3_reg[18]  ( .D(n331), .CK(clk), .RN(n674), .Q(sp3[18]), .QN(n595)
         );
  DFFRX1 \sp3_reg[17]  ( .D(n326), .CK(clk), .RN(n674), .Q(sp3[17]), .QN(n594)
         );
  DFFRX1 \sp3_reg[16]  ( .D(n321), .CK(clk), .RN(n674), .Q(sp3[16]), .QN(n593)
         );
  DFFRX1 \sp3_reg[15]  ( .D(n316), .CK(clk), .RN(n673), .Q(sp3[15]), .QN(n592)
         );
  DFFRX1 \sp3_reg[14]  ( .D(n311), .CK(clk), .RN(n673), .Q(sp3[14]), .QN(n591)
         );
  DFFRX1 \sp3_reg[13]  ( .D(n306), .CK(clk), .RN(n672), .Q(sp3[13]), .QN(n540)
         );
  DFFRX1 \s5_reg[15]  ( .D(n416), .CK(clk), .RN(n681), .Q(s5[15]), .QN(n555)
         );
  DFFRX1 \s5_reg[14]  ( .D(n410), .CK(clk), .RN(n680), .Q(s5[14]), .QN(n554)
         );
  DFFRX1 \sp0_reg[14]  ( .D(n308), .CK(clk), .RN(n673), .Q(sp0[14]) );
  DFFRX1 \s5_reg[13]  ( .D(n404), .CK(clk), .RN(n680), .Q(s5[13]), .QN(n544)
         );
  DFFRX1 \s3_reg[14]  ( .D(n408), .CK(clk), .RN(n680), .Q(s3[14]), .QN(n567)
         );
  DFFRX1 \s0_reg[21]  ( .D(n447), .CK(clk), .RN(n683), .Q(s0[21]) );
  DFFRX1 \s0_reg[20]  ( .D(n441), .CK(clk), .RN(n683), .Q(s0[20]) );
  DFFRX1 \s0_reg[19]  ( .D(n435), .CK(clk), .RN(n682), .Q(s0[19]) );
  DFFRX1 \s0_reg[18]  ( .D(n429), .CK(clk), .RN(n682), .Q(s0[18]) );
  DFFRX1 \s0_reg[17]  ( .D(n423), .CK(clk), .RN(n681), .Q(s0[17]) );
  DFFRX1 \s5_reg[21]  ( .D(n452), .CK(clk), .RN(n684), .Q(s5[21]), .QN(n519)
         );
  DFFRX1 \s5_reg[20]  ( .D(n446), .CK(clk), .RN(n683), .Q(s5[20]), .QN(n518)
         );
  DFFRX1 \s5_reg[19]  ( .D(n440), .CK(clk), .RN(n683), .Q(s5[19]), .QN(n517)
         );
  DFFRX1 \s5_reg[18]  ( .D(n434), .CK(clk), .RN(n682), .Q(s5[18]), .QN(n516)
         );
  DFFRX1 \s2_reg[15]  ( .D(n413), .CK(clk), .RN(n681), .Q(s2[15]) );
  DFFRX1 \sp3_reg[12]  ( .D(n301), .CK(clk), .RN(n672), .Q(sp3[12]), .QN(n590)
         );
  DFFRX1 \state_reg[0]  ( .D(\next_state[0] ), .CK(clk), .RN(n670), .Q(
        state[0]) );
  DFFRX1 \s0_reg[16]  ( .D(n417), .CK(clk), .RN(n681), .Q(s0[16]) );
  DFFRX1 \s4_reg[10]  ( .D(n385), .CK(clk), .RN(n679), .Q(s4[10]), .QN(n524)
         );
  DFFRX1 \s4_reg[13]  ( .D(n403), .CK(clk), .RN(n680), .Q(s4[13]), .QN(n526)
         );
  DFFRX1 \s4_reg[12]  ( .D(n397), .CK(clk), .RN(n679), .Q(s4[12]), .QN(n525)
         );
  DFFRX1 \s4_reg[11]  ( .D(n391), .CK(clk), .RN(n679), .Q(s4[11]), .QN(n522)
         );
  DFFRX1 \sp4_reg[22]  ( .D(n357), .CK(clk), .RN(n676), .Q(sp4[22]), .QN(n556)
         );
  DFFRX1 \sp4_reg[23]  ( .D(n352), .CK(clk), .RN(n676), .Q(sp4[23]), .QN(n523)
         );
  DFFRX1 \s4_reg[14]  ( .D(n409), .CK(clk), .RN(n680), .Q(s4[14]), .QN(n515)
         );
  DFFRX1 \s4_reg[15]  ( .D(n415), .CK(clk), .RN(n681), .Q(s4[15]), .QN(n514)
         );
  DFFRX1 \s5_reg[23]  ( .D(n464), .CK(clk), .RN(n685), .Q(s5[23]), .QN(n521)
         );
  DFFRX1 \s5_reg[22]  ( .D(n458), .CK(clk), .RN(n684), .Q(s5[22]), .QN(n520)
         );
  DFFRX1 \s1_reg[24]  ( .D(n466), .CK(clk), .RN(n685), .Q(s1[24]) );
  DFFRX1 \s2_reg[24]  ( .D(n467), .CK(clk), .RN(n685), .Q(s2[24]) );
  DFFRX1 \sp1_reg[24]  ( .D(n359), .CK(clk), .RN(n677), .Q(sp1[24]) );
  DFFRX1 Finish_reg ( .D(hold), .CK(clk), .RN(n670), .Q(Finish) );
  TLATNX1 \WAddr_reg[19]  ( .D(RAddr[19]), .GN(n692), .Q(WAddr[19]) );
  TLATNX1 \WAddr_reg[18]  ( .D(RAddr[18]), .GN(n692), .Q(WAddr[18]) );
  TLATNX1 \WAddr_reg[17]  ( .D(RAddr[17]), .GN(n692), .Q(WAddr[17]) );
  TLATNX1 \WAddr_reg[16]  ( .D(RAddr[16]), .GN(n692), .Q(WAddr[16]) );
  TLATNX1 \WAddr_reg[15]  ( .D(RAddr[15]), .GN(n692), .Q(WAddr[15]) );
  TLATNX1 \WAddr_reg[14]  ( .D(RAddr[14]), .GN(n692), .Q(WAddr[14]) );
  TLATNX1 \WAddr_reg[13]  ( .D(RAddr[13]), .GN(n692), .Q(WAddr[13]) );
  TLATNX1 \WAddr_reg[12]  ( .D(RAddr[12]), .GN(n692), .Q(WAddr[12]) );
  TLATNX1 \WAddr_reg[11]  ( .D(RAddr[11]), .GN(n692), .Q(WAddr[11]) );
  TLATNX1 \WAddr_reg[10]  ( .D(RAddr[10]), .GN(n692), .Q(WAddr[10]) );
  TLATNX1 \WAddr_reg[9]  ( .D(RAddr[9]), .GN(n692), .Q(WAddr[9]) );
  TLATNX1 \WAddr_reg[8]  ( .D(RAddr[8]), .GN(n692), .Q(WAddr[8]) );
  TLATNX1 \WAddr_reg[7]  ( .D(RAddr[7]), .GN(n692), .Q(WAddr[7]) );
  TLATNX1 \WAddr_reg[6]  ( .D(RAddr[6]), .GN(n692), .Q(WAddr[6]) );
  TLATNX1 \WAddr_reg[5]  ( .D(RAddr[5]), .GN(n692), .Q(WAddr[5]) );
  TLATNX1 \WAddr_reg[4]  ( .D(RAddr[4]), .GN(n692), .Q(WAddr[4]) );
  TLATNX1 \WAddr_reg[3]  ( .D(RAddr[3]), .GN(n692), .Q(WAddr[3]) );
  TLATNX1 \WAddr_reg[2]  ( .D(RAddr[2]), .GN(n692), .Q(WAddr[2]) );
  TLATNX1 \WAddr_reg[1]  ( .D(RAddr[1]), .GN(n692), .Q(WAddr[1]) );
  TLATNX1 \WAddr_reg[0]  ( .D(RAddr[0]), .GN(n692), .Q(WAddr[0]) );
  DFFRX1 \s3_reg[15]  ( .D(n414), .CK(clk), .RN(n681), .Q(s3[15]), .QN(n586)
         );
  DFFRX1 \s5_reg[17]  ( .D(n428), .CK(clk), .RN(n682), .Q(s5[17]), .QN(n585)
         );
  DFFRX1 \s4_reg[23]  ( .D(n463), .CK(clk), .RN(n685), .Q(s4[23]), .QN(n584)
         );
  DFFRX1 \s4_reg[22]  ( .D(n457), .CK(clk), .RN(n684), .Q(s4[22]), .QN(n583)
         );
  DFFRX1 \s4_reg[21]  ( .D(n451), .CK(clk), .RN(n684), .Q(s4[21]), .QN(n582)
         );
  DFFRX1 \s4_reg[20]  ( .D(n445), .CK(clk), .RN(n683), .Q(s4[20]), .QN(n581)
         );
  DFFRX1 \s4_reg[19]  ( .D(n439), .CK(clk), .RN(n683), .Q(s4[19]), .QN(n580)
         );
  DFFRX1 \s4_reg[18]  ( .D(n433), .CK(clk), .RN(n682), .Q(s4[18]), .QN(n579)
         );
  DFFRX1 \s4_reg[16]  ( .D(n421), .CK(clk), .RN(n681), .Q(s4[16]), .QN(n578)
         );
  DFFRX1 \s4_reg[17]  ( .D(n427), .CK(clk), .RN(n682), .Q(s4[17]), .QN(n539)
         );
  DFFRX1 \s5_reg[16]  ( .D(n422), .CK(clk), .RN(n681), .Q(s5[16]), .QN(n538)
         );
  NOR2X1 U383 ( .A(N1945), .B(n693), .Y(n512) );
  ADDFXL U384 ( .A(n735), .B(n735), .CI(N63), .CO(N64) );
  NOR2X1 U385 ( .A(N17), .B(n693), .Y(n491) );
  CLKINVX1 U386 ( .A(n738), .Y(n740) );
  CLKINVX1 U387 ( .A(n513), .Y(n735) );
  ADDFXL U388 ( .A(n735), .B(n735), .CI(N42), .CO(N43) );
  NOR2X1 U389 ( .A(n545), .B(state[0]), .Y(N1945) );
  CLKBUFX3 U390 ( .A(s1[24]), .Y(n751) );
  NAND2X1 U391 ( .A(state[1]), .B(state[0]), .Y(n509) );
  CLKBUFX3 U392 ( .A(sp1[23]), .Y(n633) );
  CLKBUFX3 U393 ( .A(s0[24]), .Y(n754) );
  CLKBUFX3 U394 ( .A(s2[24]), .Y(n745) );
  CLKBUFX3 U395 ( .A(sp2[24]), .Y(n721) );
  CLKBUFX3 U396 ( .A(sp0[24]), .Y(n733) );
  CLKBUFX3 U397 ( .A(sp1[24]), .Y(n729) );
  CLKBUFX3 U398 ( .A(s1[24]), .Y(n750) );
  CLKBUFX3 U399 ( .A(sp1[24]), .Y(n727) );
  CLKBUFX3 U400 ( .A(sp2[24]), .Y(n722) );
  CLKBUFX3 U401 ( .A(sp0[24]), .Y(n731) );
  CLKBUFX3 U402 ( .A(sp1[24]), .Y(n728) );
  CLKBUFX3 U403 ( .A(sp1[24]), .Y(n726) );
  CLKBUFX3 U404 ( .A(s2[24]), .Y(n742) );
  CLKBUFX3 U405 ( .A(s2[24]), .Y(n744) );
  CLKBUFX3 U406 ( .A(s2[24]), .Y(n743) );
  CLKBUFX3 U407 ( .A(s1[24]), .Y(n747) );
  CLKBUFX3 U408 ( .A(s1[24]), .Y(n749) );
  CLKBUFX3 U409 ( .A(s0[24]), .Y(n752) );
  CLKBUFX3 U410 ( .A(sp1[24]), .Y(n724) );
  CLKBUFX3 U411 ( .A(sp1[24]), .Y(n725) );
  CLKBUFX3 U412 ( .A(s2[24]), .Y(n741) );
  CLKBUFX3 U413 ( .A(s1[24]), .Y(n748) );
  CLKBUFX3 U414 ( .A(s0[24]), .Y(n753) );
  CLKINVX1 U415 ( .A(rst), .Y(n763) );
  CLKINVX1 U416 ( .A(n709), .Y(n707) );
  CLKINVX1 U417 ( .A(n710), .Y(n706) );
  CLKINVX1 U418 ( .A(n713), .Y(n704) );
  CLKINVX1 U419 ( .A(n712), .Y(n705) );
  CLKINVX1 U420 ( .A(n695), .Y(n691) );
  CLKINVX1 U421 ( .A(n698), .Y(n688) );
  CLKINVX1 U422 ( .A(n697), .Y(n689) );
  CLKINVX1 U423 ( .A(n696), .Y(n690) );
  CLKINVX1 U424 ( .A(n693), .Y(n692) );
  OAI22XL U425 ( .A0(n705), .A1(n740), .B0(n689), .B1(n737), .Y(n468) );
  CLKBUFX3 U426 ( .A(n491), .Y(n712) );
  CLKBUFX3 U427 ( .A(n491), .Y(n711) );
  CLKBUFX3 U428 ( .A(n491), .Y(n715) );
  CLKBUFX3 U429 ( .A(n491), .Y(n710) );
  CLKBUFX3 U430 ( .A(n491), .Y(n714) );
  CLKBUFX3 U431 ( .A(n491), .Y(n709) );
  CLKBUFX3 U432 ( .A(n491), .Y(n713) );
  CLKBUFX3 U433 ( .A(n491), .Y(n708) );
  CLKBUFX3 U434 ( .A(n703), .Y(n694) );
  CLKBUFX3 U435 ( .A(n703), .Y(n693) );
  CLKBUFX3 U436 ( .A(n694), .Y(n695) );
  CLKBUFX3 U437 ( .A(n694), .Y(n697) );
  CLKBUFX3 U438 ( .A(n694), .Y(n696) );
  CLKBUFX3 U439 ( .A(n694), .Y(n698) );
  CLKBUFX3 U440 ( .A(n694), .Y(n700) );
  CLKBUFX3 U441 ( .A(n694), .Y(n699) );
  CLKBUFX3 U442 ( .A(n694), .Y(n701) );
  CLKBUFX3 U443 ( .A(n491), .Y(n718) );
  CLKBUFX3 U444 ( .A(n491), .Y(n719) );
  CLKBUFX3 U445 ( .A(n491), .Y(n717) );
  CLKBUFX3 U446 ( .A(n491), .Y(n716) );
  CLKINVX1 U447 ( .A(n603), .Y(WEN) );
  CLKBUFX3 U448 ( .A(n694), .Y(n702) );
  CLKBUFX3 U449 ( .A(n491), .Y(n720) );
  CLKINVX1 U450 ( .A(n740), .Y(n739) );
  ADDFXL U451 ( .A(n735), .B(n735), .CI(N59), .CO(N60) );
  ADDFXL U452 ( .A(n735), .B(n735), .CI(N60), .CO(N61) );
  ADDFXL U453 ( .A(n735), .B(n735), .CI(N61), .CO(N62) );
  ADDFXL U454 ( .A(n735), .B(n735), .CI(N62), .CO(N63) );
  CLKBUFX3 U455 ( .A(n664), .Y(n670) );
  CLKBUFX3 U456 ( .A(n664), .Y(n671) );
  CLKBUFX3 U457 ( .A(n664), .Y(n672) );
  CLKBUFX3 U458 ( .A(n665), .Y(n673) );
  CLKBUFX3 U459 ( .A(n665), .Y(n674) );
  CLKBUFX3 U460 ( .A(n665), .Y(n675) );
  CLKBUFX3 U461 ( .A(n666), .Y(n676) );
  CLKBUFX3 U462 ( .A(n666), .Y(n677) );
  CLKBUFX3 U463 ( .A(n666), .Y(n678) );
  CLKBUFX3 U464 ( .A(n667), .Y(n679) );
  CLKBUFX3 U465 ( .A(n667), .Y(n680) );
  CLKBUFX3 U466 ( .A(n667), .Y(n681) );
  CLKBUFX3 U467 ( .A(n668), .Y(n682) );
  CLKBUFX3 U468 ( .A(n668), .Y(n683) );
  CLKBUFX3 U469 ( .A(n668), .Y(n684) );
  CLKBUFX3 U470 ( .A(n669), .Y(n685) );
  CLKBUFX3 U471 ( .A(n669), .Y(n686) );
  CLKBUFX3 U472 ( .A(n669), .Y(n687) );
  OAI22XL U473 ( .A0(n706), .A1(n565), .B0(n689), .B1(n511), .Y(n361) );
  OAI22XL U474 ( .A0(n707), .A1(n528), .B0(n690), .B1(n573), .Y(n367) );
  OAI22XL U475 ( .A0(n704), .A1(n537), .B0(n690), .B1(n577), .Y(n373) );
  OAI22XL U476 ( .A0(n706), .A1(n574), .B0(n690), .B1(n527), .Y(n379) );
  OAI22XL U477 ( .A0(n705), .A1(n524), .B0(n691), .B1(n558), .Y(n385) );
  OAI22XL U478 ( .A0(n705), .A1(n522), .B0(n691), .B1(n559), .Y(n391) );
  OAI22XL U479 ( .A0(n705), .A1(n525), .B0(n691), .B1(n560), .Y(n397) );
  OAI22XL U480 ( .A0(n705), .A1(n526), .B0(n691), .B1(n544), .Y(n403) );
  OAI22XL U481 ( .A0(n705), .A1(n515), .B0(n691), .B1(n554), .Y(n409) );
  OAI22XL U482 ( .A0(n705), .A1(n514), .B0(n691), .B1(n555), .Y(n415) );
  OAI22XL U483 ( .A0(n704), .A1(n529), .B0(n688), .B1(n578), .Y(n420) );
  OAI22XL U484 ( .A0(n705), .A1(n578), .B0(n691), .B1(n538), .Y(n421) );
  OAI22XL U485 ( .A0(n704), .A1(n566), .B0(n688), .B1(n539), .Y(n426) );
  OAI22XL U486 ( .A0(n705), .A1(n539), .B0(n691), .B1(n585), .Y(n427) );
  OAI22XL U487 ( .A0(n704), .A1(n530), .B0(n688), .B1(n579), .Y(n432) );
  OAI22XL U488 ( .A0(n705), .A1(n579), .B0(n691), .B1(n516), .Y(n433) );
  OAI22XL U489 ( .A0(n704), .A1(n531), .B0(n688), .B1(n580), .Y(n438) );
  OAI22XL U490 ( .A0(n707), .A1(n580), .B0(n691), .B1(n517), .Y(n439) );
  OAI22XL U491 ( .A0(n704), .A1(n532), .B0(n688), .B1(n581), .Y(n444) );
  OAI22XL U492 ( .A0(n704), .A1(n581), .B0(n691), .B1(n518), .Y(n445) );
  OAI22XL U493 ( .A0(n704), .A1(n533), .B0(n688), .B1(n582), .Y(n450) );
  OAI22XL U494 ( .A0(n706), .A1(n582), .B0(n691), .B1(n519), .Y(n451) );
  OAI22XL U495 ( .A0(n704), .A1(n534), .B0(n688), .B1(n583), .Y(n456) );
  OAI22XL U496 ( .A0(n705), .A1(n583), .B0(n690), .B1(n520), .Y(n457) );
  OAI22XL U497 ( .A0(n704), .A1(n535), .B0(n689), .B1(n584), .Y(n462) );
  OAI22XL U498 ( .A0(n707), .A1(n584), .B0(n690), .B1(n521), .Y(n463) );
  OAI22XL U499 ( .A0(n704), .A1(n510), .B0(n690), .B1(n513), .Y(n469) );
  OAI21XL U500 ( .A0(n706), .A1(n523), .B0(n160), .Y(n352) );
  OAI21XL U501 ( .A0(n706), .A1(n556), .B0(n160), .Y(n357) );
  OAI21XL U502 ( .A0(n512), .A1(n520), .B0(n199), .Y(n458) );
  OAI21XL U503 ( .A0(n512), .A1(n521), .B0(n199), .Y(n464) );
  OAI21XL U504 ( .A0(n704), .A1(n511), .B0(n160), .Y(n362) );
  OAI21XL U505 ( .A0(n512), .A1(n513), .B0(n199), .Y(n470) );
  CLKBUFX3 U506 ( .A(n251), .Y(n603) );
  CLKINVX1 U507 ( .A(n509), .Y(n703) );
  AO22X1 U508 ( .A0(n699), .A1(n739), .B0(n716), .B1(n746), .Y(n467) );
  AO22X1 U509 ( .A0(n701), .A1(n607), .B0(n712), .B1(n606), .Y(n279) );
  AO22X1 U510 ( .A0(n701), .A1(n638), .B0(n708), .B1(n723), .Y(n360) );
  AO22X1 U511 ( .A0(n700), .A1(n730), .B0(n734), .B1(n719), .Y(n358) );
  AO22X1 U512 ( .A0(n701), .A1(n723), .B0(n713), .B1(n730), .Y(n359) );
  AO22X1 U513 ( .A0(n696), .A1(n751), .B0(n755), .B1(n718), .Y(n465) );
  AO22X1 U514 ( .A0(n698), .A1(n746), .B0(n717), .B1(n751), .Y(n466) );
  CLKINVX1 U515 ( .A(n736), .Y(n737) );
  ADDFXL U516 ( .A(n735), .B(n735), .CI(N58), .CO(N59) );
  ADDFXL U517 ( .A(n633), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[20] ), .CO(N255), .S(N254) );
  ADDFXL U518 ( .A(n729), .B(n725), .CI(N255), .CO(N256) );
  ADDFXL U519 ( .A(n729), .B(n725), .CI(N256), .CO(N257) );
  ADDFXL U520 ( .A(sp4[24]), .B(sp4[24]), .CI(N1682), .CO(N1683) );
  CLKBUFX3 U521 ( .A(n251), .Y(n604) );
  CLKBUFX3 U522 ( .A(N483), .Y(n602) );
  XOR2X1 U523 ( .A(n761), .B(n762), .Y(N483) );
  ADDFXL U524 ( .A(n729), .B(n633), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[23] ), .CO(N333), .S(N332) );
  ADDFXL U525 ( .A(N918), .B(n612), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [9]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [10]), .S(N1443) );
  ADDFXL U526 ( .A(N1442), .B(n607), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [8]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [9]), .S(N892) );
  ADDFXL U527 ( .A(n608), .B(N944), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [10]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [11]), .S(N919) );
  ADDFXL U528 ( .A(n610), .B(N945), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [11]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [12]), .S(N920) );
  ADDFXL U529 ( .A(N919), .B(n614), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [10]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [11]), .S(N1444) );
  ADDFXL U530 ( .A(N1443), .B(n608), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [9]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [10]), .S(N893) );
  ADDFXL U531 ( .A(n612), .B(N946), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [12]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [13]), .S(N921) );
  ADDFXL U532 ( .A(N920), .B(n616), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [11]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [12]), .S(N1445) );
  ADDFXL U533 ( .A(N1444), .B(n610), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [10]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [11]), .S(N894) );
  ADDFXL U534 ( .A(n614), .B(N947), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [13]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [14]), .S(N922) );
  ADDFXL U535 ( .A(N921), .B(n618), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [12]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [13]), .S(N1446) );
  ADDFXL U536 ( .A(N1445), .B(n612), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [11]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [12]), .S(N895) );
  ADDFXL U537 ( .A(n616), .B(N948), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [14]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [15]), .S(N923) );
  ADDFXL U538 ( .A(N922), .B(n620), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [13]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [14]), .S(N1447) );
  ADDFXL U539 ( .A(N1446), .B(n614), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [12]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [13]), .S(N896) );
  ADDFXL U540 ( .A(n618), .B(N949), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [15]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [16]), .S(N924) );
  ADDFXL U541 ( .A(N923), .B(n622), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [14]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [15]), .S(N1448) );
  ADDFXL U542 ( .A(N1447), .B(n616), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [13]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [14]), .S(N897) );
  ADDFXL U543 ( .A(n620), .B(N950), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [16]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [17]), .S(N925) );
  ADDFXL U544 ( .A(N924), .B(n624), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [15]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [16]), .S(N1449) );
  ADDFXL U545 ( .A(N1448), .B(n618), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [14]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [15]), .S(N898) );
  ADDFXL U546 ( .A(n622), .B(N951), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [17]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [18]), .S(N926) );
  ADDFXL U547 ( .A(N925), .B(n626), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [16]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [17]), .S(N1450) );
  ADDFXL U548 ( .A(N1449), .B(n620), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [15]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [16]), .S(N899) );
  ADDFXL U549 ( .A(n624), .B(N952), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [18]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [19]), .S(N927) );
  ADDFXL U550 ( .A(N926), .B(n628), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [17]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [18]), .S(N1451) );
  ADDFXL U551 ( .A(N1450), .B(n622), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [16]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [17]), .S(N900) );
  ADDFXL U552 ( .A(n609), .B(n633), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[7] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[8] ), .S(N241) );
  ADDFXL U553 ( .A(n626), .B(N953), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [19]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [20]), .S(N928) );
  ADDFXL U554 ( .A(N927), .B(n630), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [18]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [19]), .S(N1452) );
  ADDFXL U555 ( .A(N1451), .B(n624), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [17]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [18]), .S(N901) );
  ADDFXL U556 ( .A(N317), .B(n629), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [8]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [9]), .S(N1142) );
  ADDFXL U557 ( .A(n611), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[8] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[9] ), .S(N242) );
  ADDFXL U558 ( .A(n628), .B(N954), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [20]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [21]), .S(N929) );
  ADDFXL U559 ( .A(N928), .B(n632), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [19]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [20]), .S(N1453) );
  ADDFXL U560 ( .A(N1452), .B(n626), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [18]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [19]), .S(N902) );
  ADDFXL U561 ( .A(n611), .B(n609), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[10] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[11] ), .S(N319) );
  ADDFXL U562 ( .A(N318), .B(n631), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [9]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [10]), .S(N1143) );
  ADDFXL U563 ( .A(n630), .B(N955), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [21]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [22]), .S(N930) );
  ADDFXL U564 ( .A(n613), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[9] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[10] ), .S(N243) );
  ADDFXL U565 ( .A(N929), .B(n636), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [20]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [21]), .S(N1454) );
  ADDFXL U566 ( .A(N1453), .B(n628), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [19]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [20]), .S(N903) );
  ADDFXL U567 ( .A(n613), .B(n611), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[11] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[12] ), .S(N320) );
  ADDFXL U568 ( .A(N319), .B(n635), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [10]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [11]), .S(N1144) );
  ADDFXL U569 ( .A(n632), .B(N956), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [22]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [23]), .S(N931) );
  ADDFXL U570 ( .A(N930), .B(n634), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [21]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [22]), .S(N1455) );
  ADDFXL U571 ( .A(n615), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[10] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[11] ), .S(N244) );
  ADDFXL U572 ( .A(N1454), .B(n630), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [20]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [21]), .S(N904) );
  ADDFXL U573 ( .A(n615), .B(n613), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[12] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[13] ), .S(N321) );
  ADDFXL U574 ( .A(N320), .B(n633), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [11]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [12]), .S(N1145) );
  ADDFXL U575 ( .A(N931), .B(n721), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [22]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [23]), .S(N1456) );
  ADDFXL U576 ( .A(N1455), .B(n632), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [21]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [22]), .S(N905) );
  ADDFXL U577 ( .A(n617), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[11] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[12] ), .S(N245) );
  ADDFXL U578 ( .A(n617), .B(n615), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[13] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[14] ), .S(N322) );
  ADDFXL U579 ( .A(N321), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [12]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [13]), .S(N1146) );
  ADDFXL U580 ( .A(N1456), .B(n636), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [22]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [23]), .S(N906) );
  ADDFXL U581 ( .A(n619), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[12] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[13] ), .S(N246) );
  ADDFXL U582 ( .A(n619), .B(n617), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[14] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[15] ), .S(N323) );
  ADDFXL U583 ( .A(N322), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [13]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [14]), .S(N1147) );
  ADDFXL U584 ( .A(n621), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[13] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[14] ), .S(N247) );
  ADDFXL U585 ( .A(n636), .B(N957), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [23]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [24]), .S(N932) );
  ADDFXL U586 ( .A(n621), .B(n619), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[15] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[16] ), .S(N324) );
  ADDFXL U587 ( .A(N323), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [14]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [15]), .S(N1148) );
  ADDFXL U588 ( .A(n623), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[14] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[15] ), .S(N248) );
  ADDFXL U589 ( .A(N932), .B(n721), .CI(
        \add_69_root_sub_0_root_add_115_61/carry [23]), .CO(
        \add_69_root_sub_0_root_add_115_61/carry [24]), .S(N1457) );
  ADDFXL U590 ( .A(n623), .B(n621), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[16] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[17] ), .S(N325) );
  ADDFXL U591 ( .A(N324), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [15]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [16]), .S(N1149) );
  ADDFXL U592 ( .A(n625), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[15] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[16] ), .S(N249) );
  ADDFXL U593 ( .A(N1457), .B(n634), .CI(
        \add_68_root_sub_0_root_add_115_61/carry [23]), .CO(
        \add_68_root_sub_0_root_add_115_61/carry [24]), .S(N907) );
  ADDFXL U594 ( .A(n625), .B(n623), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[17] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[18] ), .S(N326) );
  ADDFXL U595 ( .A(N325), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [16]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [17]), .S(N1150) );
  ADDFXL U596 ( .A(n627), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[16] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[17] ), .S(N250) );
  ADDFXL U597 ( .A(n627), .B(n625), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[18] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[19] ), .S(N327) );
  ADDFXL U598 ( .A(N326), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [17]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [18]), .S(N1151) );
  ADDFXL U599 ( .A(n629), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[17] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[18] ), .S(N251) );
  ADDFXL U600 ( .A(n629), .B(n627), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[19] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[20] ), .S(N328) );
  ADDFXL U601 ( .A(N327), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [18]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [19]), .S(N1152) );
  ADDFXL U602 ( .A(n631), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[18] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[19] ), .S(N252) );
  ADDFXL U603 ( .A(n631), .B(n629), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[20] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[21] ), .S(N329) );
  ADDFXL U604 ( .A(N328), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [19]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [20]), .S(N1153) );
  ADDFXL U605 ( .A(n635), .B(n724), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[19] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[20] ), .S(N253) );
  ADDFXL U606 ( .A(n635), .B(n631), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[21] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[22] ), .S(N330) );
  ADDFXL U607 ( .A(N329), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [20]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [21]), .S(N1154) );
  ADDFXL U608 ( .A(n633), .B(n635), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[22] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[23] ), .S(N331) );
  ADDFXL U609 ( .A(N330), .B(n725), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [21]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [22]), .S(N1155) );
  ADDFXL U610 ( .A(N331), .B(n726), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [22]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [23]), .S(N1156) );
  ADDFXL U611 ( .A(N332), .B(n726), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [23]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [24]), .S(N1157) );
  CLKBUFX3 U612 ( .A(n763), .Y(n665) );
  CLKBUFX3 U613 ( .A(n763), .Y(n666) );
  CLKBUFX3 U614 ( .A(n763), .Y(n667) );
  CLKBUFX3 U615 ( .A(n763), .Y(n668) );
  CLKBUFX3 U616 ( .A(n763), .Y(n669) );
  CLKBUFX3 U617 ( .A(n763), .Y(n664) );
  XOR3X1 U618 ( .A(N1458), .B(n721), .C(
        \add_68_root_sub_0_root_add_115_61/carry [24]), .Y(N908) );
  XOR3X1 U619 ( .A(N933), .B(n721), .C(
        \add_69_root_sub_0_root_add_115_61/carry [24]), .Y(N1458) );
  XOR3X1 U620 ( .A(N333), .B(n726), .C(
        \add_22_root_sub_0_root_add_115_61/carry [24]), .Y(N1158) );
  ADDFXL U621 ( .A(n730), .B(n725), .CI(N257), .CO(N258) );
  OAI2BB2XL U622 ( .B0(n252), .B1(n707), .A0N(N1944), .A1N(n702), .Y(n471) );
  OAI2BB2XL U623 ( .B0(n253), .B1(n705), .A0N(N1943), .A1N(n702), .Y(n472) );
  OAI2BB2XL U624 ( .B0(n254), .B1(n704), .A0N(N1942), .A1N(n702), .Y(n473) );
  OAI2BB2XL U625 ( .B0(n255), .B1(n706), .A0N(N1941), .A1N(n702), .Y(n474) );
  OAI2BB2XL U626 ( .B0(n256), .B1(n704), .A0N(N1940), .A1N(n702), .Y(n475) );
  OAI2BB2XL U627 ( .B0(n257), .B1(n705), .A0N(N1939), .A1N(n702), .Y(n476) );
  OAI2BB2XL U628 ( .B0(n258), .B1(n707), .A0N(N1938), .A1N(n702), .Y(n477) );
  OAI2BB2XL U629 ( .B0(n259), .B1(n705), .A0N(N1937), .A1N(n702), .Y(n478) );
  OAI2BB2XL U630 ( .B0(n260), .B1(n705), .A0N(N1936), .A1N(n702), .Y(n479) );
  OAI2BB2XL U631 ( .B0(n261), .B1(n706), .A0N(N1935), .A1N(n702), .Y(n480) );
  OAI2BB2XL U632 ( .B0(n262), .B1(n705), .A0N(N1934), .A1N(n701), .Y(n481) );
  OAI22XL U633 ( .A0(n706), .A1(n589), .B0(n689), .B1(n542), .Y(n276) );
  OAI22XL U634 ( .A0(n707), .A1(n601), .B0(n689), .B1(n557), .Y(n281) );
  OAI22XL U635 ( .A0(n707), .A1(n600), .B0(n689), .B1(n561), .Y(n286) );
  OAI22XL U636 ( .A0(n706), .A1(n541), .B0(n690), .B1(n562), .Y(n291) );
  OAI22XL U637 ( .A0(n705), .A1(n599), .B0(n690), .B1(n563), .Y(n296) );
  OAI22XL U638 ( .A0(n707), .A1(n590), .B0(n690), .B1(n564), .Y(n301) );
  OAI22XL U639 ( .A0(n706), .A1(n540), .B0(n690), .B1(n546), .Y(n306) );
  OAI22XL U640 ( .A0(n706), .A1(n591), .B0(n690), .B1(n543), .Y(n311) );
  OAI22XL U641 ( .A0(n706), .A1(n592), .B0(n690), .B1(n547), .Y(n316) );
  OAI22XL U642 ( .A0(n706), .A1(n593), .B0(n690), .B1(n548), .Y(n321) );
  OAI22XL U643 ( .A0(n706), .A1(n594), .B0(n689), .B1(n549), .Y(n326) );
  OAI22XL U644 ( .A0(n706), .A1(n595), .B0(n689), .B1(n550), .Y(n331) );
  OAI22XL U645 ( .A0(n706), .A1(n596), .B0(n689), .B1(n551), .Y(n336) );
  OAI22XL U646 ( .A0(n706), .A1(n597), .B0(n689), .B1(n552), .Y(n341) );
  OAI22XL U647 ( .A0(n706), .A1(n598), .B0(n689), .B1(n553), .Y(n346) );
  OAI22XL U648 ( .A0(n706), .A1(n568), .B0(n689), .B1(n523), .Y(n351) );
  OAI22XL U649 ( .A0(n706), .A1(n588), .B0(n689), .B1(n556), .Y(n356) );
  OAI22XL U650 ( .A0(n705), .A1(n576), .B0(n692), .B1(n528), .Y(n366) );
  OAI22XL U651 ( .A0(n705), .A1(n572), .B0(n692), .B1(n537), .Y(n372) );
  OAI22XL U652 ( .A0(n705), .A1(n536), .B0(n691), .B1(n574), .Y(n378) );
  OAI22XL U653 ( .A0(n704), .A1(n575), .B0(n688), .B1(n524), .Y(n384) );
  OAI22XL U654 ( .A0(n704), .A1(n569), .B0(n688), .B1(n522), .Y(n390) );
  OAI22XL U655 ( .A0(n704), .A1(n570), .B0(n688), .B1(n525), .Y(n396) );
  OAI22XL U656 ( .A0(n704), .A1(n571), .B0(n688), .B1(n526), .Y(n402) );
  OAI22XL U657 ( .A0(n704), .A1(n567), .B0(n688), .B1(n515), .Y(n408) );
  OAI22XL U658 ( .A0(n704), .A1(n586), .B0(n688), .B1(n514), .Y(n414) );
  OAI22XL U659 ( .A0(n707), .A1(n542), .B0(n508), .B1(n692), .Y(n277) );
  OAI22XL U660 ( .A0(n706), .A1(n557), .B0(n507), .B1(n692), .Y(n282) );
  OAI22XL U661 ( .A0(n705), .A1(n561), .B0(n506), .B1(n692), .Y(n287) );
  OAI22XL U662 ( .A0(n707), .A1(n562), .B0(n505), .B1(n692), .Y(n292) );
  OAI22XL U663 ( .A0(n707), .A1(n563), .B0(n504), .B1(n692), .Y(n297) );
  OAI22XL U664 ( .A0(n707), .A1(n564), .B0(n503), .B1(n692), .Y(n302) );
  OAI22XL U665 ( .A0(n707), .A1(n546), .B0(n502), .B1(n692), .Y(n307) );
  OAI22XL U666 ( .A0(n707), .A1(n543), .B0(n501), .B1(n692), .Y(n312) );
  OAI22XL U667 ( .A0(n707), .A1(n547), .B0(n500), .B1(n692), .Y(n317) );
  OAI22XL U668 ( .A0(n707), .A1(n548), .B0(n499), .B1(n692), .Y(n322) );
  OAI22XL U669 ( .A0(n707), .A1(n549), .B0(n498), .B1(n692), .Y(n327) );
  OAI22XL U670 ( .A0(n707), .A1(n550), .B0(n497), .B1(n692), .Y(n332) );
  OAI22XL U671 ( .A0(n707), .A1(n551), .B0(n496), .B1(n692), .Y(n337) );
  OAI22XL U672 ( .A0(n707), .A1(n552), .B0(n495), .B1(n692), .Y(n342) );
  OAI22XL U673 ( .A0(n705), .A1(n553), .B0(n494), .B1(n692), .Y(n347) );
  NAND2BX1 U674 ( .AN(n493), .B(n694), .Y(n160) );
  NOR2X1 U675 ( .A(state[0]), .B(state[1]), .Y(N17) );
  NAND2X1 U676 ( .A(state[0]), .B(n545), .Y(n251) );
  OAI2BB2XL U677 ( .B0(n573), .B1(n512), .A0N(DIn[0]), .A1N(WEN), .Y(n368) );
  OAI2BB2XL U678 ( .B0(n577), .B1(n512), .A0N(DIn[1]), .A1N(WEN), .Y(n374) );
  OAI2BB2XL U679 ( .B0(n558), .B1(n512), .A0N(DIn[3]), .A1N(WEN), .Y(n386) );
  OAI2BB2XL U680 ( .B0(n527), .B1(n512), .A0N(DIn[2]), .A1N(WEN), .Y(n380) );
  OAI2BB2XL U681 ( .B0(n559), .B1(n512), .A0N(DIn[4]), .A1N(WEN), .Y(n392) );
  OAI2BB2XL U682 ( .B0(n270), .B1(n704), .A0N(N1926), .A1N(n702), .Y(n489) );
  OAI2BB2XL U683 ( .B0(n271), .B1(n707), .A0N(N1925), .A1N(n702), .Y(n490) );
  OAI2BB2XL U684 ( .B0(n263), .B1(n707), .A0N(N1933), .A1N(n701), .Y(n482) );
  OAI2BB2XL U685 ( .B0(n264), .B1(n705), .A0N(N1932), .A1N(n702), .Y(n483) );
  OAI2BB2XL U686 ( .B0(n265), .B1(n706), .A0N(N1931), .A1N(n702), .Y(n484) );
  OAI2BB2XL U687 ( .B0(n266), .B1(n704), .A0N(N1930), .A1N(n702), .Y(n485) );
  OAI2BB2XL U688 ( .B0(n267), .B1(n705), .A0N(N1929), .A1N(n702), .Y(n486) );
  OAI2BB2XL U689 ( .B0(n268), .B1(n707), .A0N(N1928), .A1N(n702), .Y(n487) );
  OAI2BB2XL U690 ( .B0(n269), .B1(n707), .A0N(N1927), .A1N(n702), .Y(n488) );
  OAI2BB2XL U691 ( .B0(n560), .B1(n512), .A0N(DIn[5]), .A1N(WEN), .Y(n398) );
  OAI2BB2XL U692 ( .B0(n544), .B1(n512), .A0N(DIn[6]), .A1N(WEN), .Y(n404) );
  OAI2BB2XL U693 ( .B0(n554), .B1(n512), .A0N(DIn[7]), .A1N(WEN), .Y(n410) );
  OAI2BB2XL U694 ( .B0(n555), .B1(n512), .A0N(DIn[8]), .A1N(WEN), .Y(n416) );
  OAI2BB2XL U695 ( .B0(n538), .B1(n512), .A0N(DIn[9]), .A1N(WEN), .Y(n422) );
  OAI2BB2XL U696 ( .B0(n585), .B1(n512), .A0N(DIn[10]), .A1N(WEN), .Y(n428) );
  OAI2BB2XL U697 ( .B0(n516), .B1(n512), .A0N(DIn[11]), .A1N(WEN), .Y(n434) );
  OAI2BB2XL U698 ( .B0(n517), .B1(n512), .A0N(DIn[12]), .A1N(WEN), .Y(n440) );
  OAI2BB2XL U699 ( .B0(n518), .B1(n512), .A0N(DIn[13]), .A1N(WEN), .Y(n446) );
  OAI2BB2XL U700 ( .B0(n519), .B1(n512), .A0N(DIn[14]), .A1N(WEN), .Y(n452) );
  NAND2X1 U701 ( .A(DIn[15]), .B(WEN), .Y(n199) );
  CLKBUFX3 U702 ( .A(sp1[24]), .Y(n730) );
  CLKBUFX3 U703 ( .A(s2[24]), .Y(n746) );
  AO22X1 U704 ( .A0(n695), .A1(n639), .B0(s0[16]), .B1(n718), .Y(n417) );
  AO22X1 U705 ( .A0(n695), .A1(n642), .B0(s0[17]), .B1(n718), .Y(n423) );
  AO22X1 U706 ( .A0(n695), .A1(n645), .B0(s0[18]), .B1(n719), .Y(n429) );
  AO22X1 U707 ( .A0(n695), .A1(n648), .B0(s0[19]), .B1(n718), .Y(n435) );
  AO22X1 U708 ( .A0(n695), .A1(n651), .B0(s0[20]), .B1(n718), .Y(n441) );
  AO22X1 U709 ( .A0(n695), .A1(n654), .B0(s0[21]), .B1(n718), .Y(n447) );
  AO22X1 U710 ( .A0(n699), .A1(s3[15]), .B0(n717), .B1(s2[15]), .Y(n413) );
  AO22X1 U711 ( .A0(n699), .A1(n617), .B0(sp0[14]), .B1(n719), .Y(n308) );
  AO22X1 U712 ( .A0(n701), .A1(sp3[12]), .B0(n711), .B1(sp2[12]), .Y(n300) );
  AO22X1 U713 ( .A0(n697), .A1(s2[15]), .B0(n718), .B1(s1[15]), .Y(n412) );
  AO22X1 U714 ( .A0(n699), .A1(n619), .B0(sp0[15]), .B1(n719), .Y(n313) );
  AO22X1 U715 ( .A0(n699), .A1(n621), .B0(sp0[16]), .B1(n719), .Y(n318) );
  AO22X1 U716 ( .A0(n699), .A1(n623), .B0(sp0[17]), .B1(n719), .Y(n323) );
  AO22X1 U717 ( .A0(n699), .A1(n625), .B0(sp0[18]), .B1(n719), .Y(n328) );
  AO22X1 U718 ( .A0(n700), .A1(n627), .B0(sp0[19]), .B1(n719), .Y(n333) );
  AO22X1 U719 ( .A0(n700), .A1(n629), .B0(sp0[20]), .B1(n719), .Y(n338) );
  AO22X1 U720 ( .A0(n700), .A1(n631), .B0(sp0[21]), .B1(n719), .Y(n343) );
  AO22X1 U721 ( .A0(n700), .A1(n633), .B0(sp0[23]), .B1(n719), .Y(n348) );
  AO22X1 U722 ( .A0(n700), .A1(n635), .B0(sp0[22]), .B1(n719), .Y(n353) );
  AO22X1 U723 ( .A0(n695), .A1(s1[14]), .B0(s0[14]), .B1(n719), .Y(n405) );
  AO22X1 U724 ( .A0(n695), .A1(s1[15]), .B0(s0[15]), .B1(n718), .Y(n411) );
  AO22X1 U725 ( .A0(n694), .A1(s1[12]), .B0(s0[12]), .B1(n718), .Y(n393) );
  AO22X1 U726 ( .A0(n698), .A1(s3[14]), .B0(n717), .B1(s2[14]), .Y(n407) );
  AO22X1 U727 ( .A0(n694), .A1(s1[13]), .B0(s0[13]), .B1(n718), .Y(n399) );
  AO22X1 U728 ( .A0(n695), .A1(n661), .B0(s0[23]), .B1(n719), .Y(n459) );
  AO22X1 U729 ( .A0(n696), .A1(s2[14]), .B0(n717), .B1(s1[14]), .Y(n406) );
  AO22X1 U730 ( .A0(n701), .A1(sp3[13]), .B0(n711), .B1(sp2[13]), .Y(n305) );
  AO22X1 U731 ( .A0(n701), .A1(sp3[14]), .B0(n711), .B1(sp2[14]), .Y(n310) );
  AO22X1 U732 ( .A0(n701), .A1(sp3[15]), .B0(n711), .B1(sp2[15]), .Y(n315) );
  AO22X1 U733 ( .A0(n701), .A1(sp3[16]), .B0(n710), .B1(sp2[16]), .Y(n320) );
  AO22X1 U734 ( .A0(n701), .A1(sp3[17]), .B0(n710), .B1(sp2[17]), .Y(n325) );
  AO22X1 U735 ( .A0(n701), .A1(sp3[18]), .B0(n710), .B1(sp2[18]), .Y(n330) );
  AO22X1 U736 ( .A0(n701), .A1(sp3[19]), .B0(n710), .B1(sp2[19]), .Y(n335) );
  AO22X1 U737 ( .A0(n701), .A1(sp3[20]), .B0(n709), .B1(sp2[20]), .Y(n340) );
  AO22X1 U738 ( .A0(n701), .A1(sp3[21]), .B0(n709), .B1(sp2[21]), .Y(n345) );
  AO22X1 U739 ( .A0(n701), .A1(sp3[22]), .B0(n709), .B1(sp2[22]), .Y(n355) );
  AO22X1 U740 ( .A0(n694), .A1(s1[11]), .B0(s0[11]), .B1(n718), .Y(n387) );
  AO22X1 U741 ( .A0(n698), .A1(s3[11]), .B0(n717), .B1(s2[11]), .Y(n389) );
  AO22X1 U742 ( .A0(n699), .A1(n615), .B0(sp0[13]), .B1(n719), .Y(n303) );
  AO22X1 U743 ( .A0(n701), .A1(n608), .B0(n712), .B1(sp1[9]), .Y(n284) );
  AO22X1 U744 ( .A0(n696), .A1(s2[11]), .B0(n718), .B1(s1[11]), .Y(n388) );
  AO22X1 U745 ( .A0(n696), .A1(s2[12]), .B0(n718), .B1(s1[12]), .Y(n394) );
  AO22X1 U746 ( .A0(n698), .A1(s3[12]), .B0(n716), .B1(s2[12]), .Y(n395) );
  AO22X1 U747 ( .A0(n696), .A1(s2[13]), .B0(n718), .B1(s1[13]), .Y(n400) );
  AO22X1 U748 ( .A0(n698), .A1(s3[13]), .B0(n717), .B1(s2[13]), .Y(n401) );
  AO22X1 U749 ( .A0(n699), .A1(n611), .B0(sp0[11]), .B1(n719), .Y(n293) );
  AO22X1 U750 ( .A0(n694), .A1(s1[10]), .B0(s0[10]), .B1(n718), .Y(n381) );
  AO22X1 U751 ( .A0(n701), .A1(sp3[10]), .B0(n712), .B1(sp2[10]), .Y(n290) );
  AO22X1 U752 ( .A0(n701), .A1(sp3[11]), .B0(n712), .B1(sp2[11]), .Y(n295) );
  AO22X1 U753 ( .A0(n701), .A1(sp3[23]), .B0(n709), .B1(sp2[23]), .Y(n350) );
  AO22X1 U754 ( .A0(n699), .A1(s3[9]), .B0(n716), .B1(s2[9]), .Y(n377) );
  AO22X1 U755 ( .A0(n698), .A1(s3[10]), .B0(n716), .B1(s2[10]), .Y(n383) );
  AO22X1 U756 ( .A0(n700), .A1(sp1[9]), .B0(sp0[9]), .B1(n718), .Y(n283) );
  AO22X1 U757 ( .A0(n700), .A1(n606), .B0(sp0[8]), .B1(n720), .Y(n278) );
  AO22X1 U758 ( .A0(n699), .A1(n613), .B0(sp0[12]), .B1(n719), .Y(n298) );
  AO22X1 U759 ( .A0(n696), .A1(s2[10]), .B0(n716), .B1(s1[10]), .Y(n382) );
  AO22X1 U760 ( .A0(n701), .A1(n605), .B0(n713), .B1(N315), .Y(n274) );
  AO22X1 U761 ( .A0(n694), .A1(sp3[9]), .B0(n708), .B1(N1441), .Y(n285) );
  AO22X1 U762 ( .A0(n699), .A1(n609), .B0(sp0[10]), .B1(n719), .Y(n288) );
  AO22X1 U763 ( .A0(n699), .A1(s3[8]), .B0(n716), .B1(s2[8]), .Y(n371) );
  AO22X1 U764 ( .A0(n700), .A1(N315), .B0(sp0[7]), .B1(n720), .Y(n273) );
  AO22X1 U765 ( .A0(n696), .A1(s1[9]), .B0(s0[9]), .B1(n718), .Y(n375) );
  AO22X1 U766 ( .A0(n699), .A1(n658), .B0(s0[22]), .B1(n719), .Y(n453) );
  AO22X1 U767 ( .A0(n701), .A1(sp3[7]), .B0(n708), .B1(n605), .Y(n275) );
  AO22X1 U768 ( .A0(n701), .A1(sp3[8]), .B0(n708), .B1(N890), .Y(n280) );
  AO22X1 U769 ( .A0(n700), .A1(n610), .B0(n716), .B1(sp1[10]), .Y(n289) );
  AO22X1 U770 ( .A0(n700), .A1(n612), .B0(n716), .B1(sp1[11]), .Y(n294) );
  AO22X1 U771 ( .A0(n700), .A1(n614), .B0(n716), .B1(N1134), .Y(n299) );
  AO22X1 U772 ( .A0(n700), .A1(n616), .B0(n716), .B1(N1135), .Y(n304) );
  AO22X1 U773 ( .A0(n700), .A1(n618), .B0(n715), .B1(N1136), .Y(n309) );
  AO22X1 U774 ( .A0(n700), .A1(n620), .B0(n715), .B1(N1137), .Y(n314) );
  AO22X1 U775 ( .A0(n700), .A1(n622), .B0(n715), .B1(N1138), .Y(n319) );
  AO22X1 U776 ( .A0(n700), .A1(n624), .B0(n715), .B1(N1139), .Y(n324) );
  AO22X1 U777 ( .A0(n700), .A1(n626), .B0(n714), .B1(N236), .Y(n329) );
  AO22X1 U778 ( .A0(n700), .A1(n628), .B0(n714), .B1(N237), .Y(n334) );
  AO22X1 U779 ( .A0(n700), .A1(n630), .B0(n714), .B1(sp1[20]), .Y(n339) );
  AO22X1 U780 ( .A0(n700), .A1(n632), .B0(n714), .B1(sp1[21]), .Y(n344) );
  AO22X1 U781 ( .A0(n700), .A1(n634), .B0(n713), .B1(sp1[23]), .Y(n349) );
  AO22X1 U782 ( .A0(n700), .A1(n636), .B0(n713), .B1(sp1[22]), .Y(n354) );
  AO22X1 U783 ( .A0(n696), .A1(s1[7]), .B0(s0[7]), .B1(n718), .Y(n363) );
  AO22X1 U784 ( .A0(n696), .A1(s1[8]), .B0(s0[8]), .B1(n718), .Y(n369) );
  AO22X1 U785 ( .A0(n697), .A1(n640), .B0(n717), .B1(s1[16]), .Y(n418) );
  AO22X1 U786 ( .A0(n699), .A1(n641), .B0(n716), .B1(s2[16]), .Y(n419) );
  AO22X1 U787 ( .A0(n697), .A1(n643), .B0(n717), .B1(s1[17]), .Y(n424) );
  AO22X1 U788 ( .A0(n699), .A1(n644), .B0(n717), .B1(s2[17]), .Y(n425) );
  AO22X1 U789 ( .A0(n697), .A1(n646), .B0(n717), .B1(s1[18]), .Y(n430) );
  AO22X1 U790 ( .A0(n699), .A1(n647), .B0(n717), .B1(s2[18]), .Y(n431) );
  AO22X1 U791 ( .A0(n697), .A1(n649), .B0(n717), .B1(s1[19]), .Y(n436) );
  AO22X1 U792 ( .A0(n699), .A1(n650), .B0(n716), .B1(s2[19]), .Y(n437) );
  AO22X1 U793 ( .A0(n697), .A1(n652), .B0(n717), .B1(s1[20]), .Y(n442) );
  AO22X1 U794 ( .A0(n699), .A1(n653), .B0(n716), .B1(s2[20]), .Y(n443) );
  AO22X1 U795 ( .A0(n697), .A1(n655), .B0(n717), .B1(s1[21]), .Y(n448) );
  AO22X1 U796 ( .A0(n699), .A1(n656), .B0(n716), .B1(s2[21]), .Y(n449) );
  AO22X1 U797 ( .A0(n697), .A1(n659), .B0(n717), .B1(s1[22]), .Y(n454) );
  AO22X1 U798 ( .A0(n699), .A1(n660), .B0(n716), .B1(s2[22]), .Y(n455) );
  AO22X1 U799 ( .A0(n697), .A1(n662), .B0(n717), .B1(s1[23]), .Y(n460) );
  AO22X1 U800 ( .A0(n699), .A1(n663), .B0(n716), .B1(s2[23]), .Y(n461) );
  AO22X1 U801 ( .A0(n698), .A1(s2[7]), .B0(n717), .B1(s1[7]), .Y(n364) );
  AO22X1 U802 ( .A0(n699), .A1(s3[7]), .B0(n716), .B1(s2[7]), .Y(n365) );
  AO22X1 U803 ( .A0(n698), .A1(s2[8]), .B0(n716), .B1(s1[8]), .Y(n370) );
  AO22X1 U804 ( .A0(n698), .A1(s2[9]), .B0(n717), .B1(s1[9]), .Y(n376) );
  AND2X2 U805 ( .A(data_done), .B(n694), .Y(N1948) );
  CLKBUFX3 U806 ( .A(sp3[24]), .Y(n638) );
  CLKBUFX3 U807 ( .A(sp1[21]), .Y(n631) );
  CLKBUFX3 U808 ( .A(sp1[22]), .Y(n635) );
  CLKBUFX3 U809 ( .A(N237), .Y(n627) );
  CLKBUFX3 U810 ( .A(N1138), .Y(n621) );
  CLKBUFX3 U811 ( .A(N1139), .Y(n623) );
  CLKBUFX3 U812 ( .A(sp1[20]), .Y(n629) );
  CLKBUFX3 U813 ( .A(N236), .Y(n625) );
  CLKBUFX3 U814 ( .A(N1135), .Y(n615) );
  OAI21XL U815 ( .A0(state[0]), .A1(rst), .B0(n545), .Y(\next_state[0] ) );
  CLKBUFX3 U816 ( .A(N1136), .Y(n617) );
  CLKBUFX3 U817 ( .A(N1137), .Y(n619) );
  CLKBUFX3 U818 ( .A(s3[16]), .Y(n641) );
  CLKBUFX3 U819 ( .A(sp2[11]), .Y(n612) );
  CLKBUFX3 U820 ( .A(N1134), .Y(n613) );
  CLKBUFX3 U821 ( .A(s2[16]), .Y(n640) );
  CLKBUFX3 U822 ( .A(sp2[12]), .Y(n614) );
  CLKBUFX3 U823 ( .A(sp2[13]), .Y(n616) );
  CLKBUFX3 U824 ( .A(sp2[14]), .Y(n618) );
  CLKBUFX3 U825 ( .A(sp2[15]), .Y(n620) );
  CLKBUFX3 U826 ( .A(sp2[16]), .Y(n622) );
  CLKBUFX3 U827 ( .A(sp2[17]), .Y(n624) );
  CLKBUFX3 U828 ( .A(sp2[18]), .Y(n626) );
  CLKBUFX3 U829 ( .A(sp2[19]), .Y(n628) );
  CLKBUFX3 U830 ( .A(sp2[20]), .Y(n630) );
  CLKBUFX3 U831 ( .A(sp2[21]), .Y(n632) );
  CLKBUFX3 U832 ( .A(sp2[22]), .Y(n636) );
  CLKBUFX3 U833 ( .A(sp2[23]), .Y(n634) );
  CLKBUFX3 U834 ( .A(s3[17]), .Y(n644) );
  CLKBUFX3 U835 ( .A(s3[18]), .Y(n647) );
  CLKBUFX3 U836 ( .A(s3[19]), .Y(n650) );
  CLKBUFX3 U837 ( .A(s3[20]), .Y(n653) );
  CLKBUFX3 U838 ( .A(s3[21]), .Y(n656) );
  CLKBUFX3 U839 ( .A(s3[22]), .Y(n660) );
  CLKBUFX3 U840 ( .A(s3[23]), .Y(n663) );
  CLKBUFX3 U841 ( .A(N890), .Y(n607) );
  CLKBUFX3 U842 ( .A(s0[24]), .Y(n755) );
  CLKBUFX3 U843 ( .A(s1[16]), .Y(n639) );
  CLKBUFX3 U844 ( .A(s2[17]), .Y(n643) );
  CLKBUFX3 U845 ( .A(s2[18]), .Y(n646) );
  CLKBUFX3 U846 ( .A(s2[19]), .Y(n649) );
  CLKBUFX3 U847 ( .A(s2[20]), .Y(n652) );
  CLKBUFX3 U848 ( .A(s2[21]), .Y(n655) );
  CLKBUFX3 U849 ( .A(s2[22]), .Y(n659) );
  CLKBUFX3 U850 ( .A(s2[23]), .Y(n662) );
  CLKBUFX3 U851 ( .A(sp1[11]), .Y(n611) );
  CLKBUFX3 U852 ( .A(s1[17]), .Y(n642) );
  CLKBUFX3 U853 ( .A(s1[18]), .Y(n645) );
  CLKBUFX3 U854 ( .A(s1[19]), .Y(n648) );
  CLKBUFX3 U855 ( .A(s1[20]), .Y(n651) );
  CLKBUFX3 U856 ( .A(s1[21]), .Y(n654) );
  CLKBUFX3 U857 ( .A(s1[22]), .Y(n658) );
  CLKBUFX3 U858 ( .A(s1[23]), .Y(n661) );
  CLKBUFX3 U859 ( .A(N889), .Y(n605) );
  CLKBUFX3 U860 ( .A(sp2[10]), .Y(n610) );
  CLKBUFX3 U861 ( .A(N1441), .Y(n608) );
  CLKBUFX3 U862 ( .A(sp1[10]), .Y(n609) );
  CLKBUFX3 U863 ( .A(s3[24]), .Y(n738) );
  CLKBUFX3 U864 ( .A(s4[24]), .Y(n736) );
  CLKBUFX3 U865 ( .A(sp2[24]), .Y(n723) );
  CLKBUFX3 U866 ( .A(sp1[8]), .Y(n606) );
  CLKBUFX3 U867 ( .A(sp0[24]), .Y(n734) );
  CLKBUFX3 U868 ( .A(sp0[24]), .Y(n732) );
  ADDFXL U869 ( .A(s5[23]), .B(n735), .CI(\add_76_root_add_115_61/carry[17] ), 
        .CO(N42), .S(N41) );
  ADDFXL U870 ( .A(sp4[23]), .B(sp4[24]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[22] ), .CO(N1682), .S(N1681)
         );
  ADDFXL U871 ( .A(s5[23]), .B(n735), .CI(\add_75_root_add_115_61/carry[13] ), 
        .CO(N58), .S(N57) );
  CLKBUFX3 U872 ( .A(sp3[24]), .Y(n637) );
  CLKBUFX3 U873 ( .A(s0[22]), .Y(n657) );
  ADDFXL U874 ( .A(N1661), .B(n601), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [10]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [11]), .S(N944) );
  ADDFXL U875 ( .A(n607), .B(N943), .CI(
        \add_70_root_sub_0_root_add_115_61/carry [9]), .CO(
        \add_70_root_sub_0_root_add_115_61/carry [10]), .S(N918) );
  ADDFXL U876 ( .A(s5[11]), .B(s5[12]), .CI(\add_75_root_add_115_61/carry[1] ), 
        .CO(\add_75_root_add_115_61/carry[2] ), .S(N45) );
  ADDFXL U877 ( .A(s5[8]), .B(s5[11]), .CI(\add_76_root_add_115_61/carry[2] ), 
        .CO(\add_76_root_add_115_61/carry[3] ), .S(N26) );
  ADDFXL U878 ( .A(s4[16]), .B(s0[14]), .CI(
        \add_35_root_sub_0_root_add_115_61/carry [1]), .CO(
        \add_35_root_sub_0_root_add_115_61/carry [2]), .S(N460) );
  ADDFXL U879 ( .A(N1660), .B(sp4[14]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[7] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[8] ), .S(N1666) );
  ADDFXL U880 ( .A(n606), .B(n631), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[5] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[6] ), .S(N239) );
  ADDFXL U881 ( .A(sp1[9]), .B(n606), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[8] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[9] ), .S(N317) );
  ADDFXL U882 ( .A(N316), .B(n627), .CI(
        \add_22_root_sub_0_root_add_115_61/carry [7]), .CO(
        \add_22_root_sub_0_root_add_115_61/carry [8]), .S(N1141) );
  ADDFXL U883 ( .A(s5[12]), .B(s5[13]), .CI(\add_75_root_add_115_61/carry[2] ), 
        .CO(\add_75_root_add_115_61/carry[3] ), .S(N46) );
  ADDFXL U884 ( .A(s5[13]), .B(s5[14]), .CI(\add_75_root_add_115_61/carry[3] ), 
        .CO(\add_75_root_add_115_61/carry[4] ), .S(N47) );
  ADDFXL U885 ( .A(s5[14]), .B(s5[15]), .CI(\add_75_root_add_115_61/carry[4] ), 
        .CO(\add_75_root_add_115_61/carry[5] ), .S(N48) );
  ADDFXL U886 ( .A(s5[15]), .B(s5[16]), .CI(\add_75_root_add_115_61/carry[5] ), 
        .CO(\add_75_root_add_115_61/carry[6] ), .S(N49) );
  ADDFXL U887 ( .A(N24), .B(s5[12]), .CI(\add_76_root_add_115_61/carry[3] ), 
        .CO(\add_76_root_add_115_61/carry[4] ), .S(N27) );
  ADDFXL U888 ( .A(s5[16]), .B(s5[17]), .CI(\add_75_root_add_115_61/carry[6] ), 
        .CO(\add_75_root_add_115_61/carry[7] ), .S(N50) );
  ADDFXL U889 ( .A(s5[10]), .B(s5[13]), .CI(\add_76_root_add_115_61/carry[4] ), 
        .CO(\add_76_root_add_115_61/carry[5] ), .S(N28) );
  ADDFXL U890 ( .A(s4[17]), .B(s0[15]), .CI(
        \add_35_root_sub_0_root_add_115_61/carry [2]), .CO(
        \add_35_root_sub_0_root_add_115_61/carry [3]), .S(N461) );
  ADDFXL U891 ( .A(N1662), .B(n600), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [11]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [12]), .S(N945) );
  ADDFXL U892 ( .A(s5[17]), .B(s5[18]), .CI(\add_75_root_add_115_61/carry[7] ), 
        .CO(\add_75_root_add_115_61/carry[8] ), .S(N51) );
  ADDFXL U893 ( .A(s5[11]), .B(s5[14]), .CI(\add_76_root_add_115_61/carry[5] ), 
        .CO(\add_76_root_add_115_61/carry[6] ), .S(N29) );
  ADDFXL U894 ( .A(s4[18]), .B(s0[16]), .CI(
        \add_35_root_sub_0_root_add_115_61/carry [3]), .CO(
        \add_35_root_sub_0_root_add_115_61/carry [4]), .S(N462) );
  ADDFXL U895 ( .A(N1663), .B(n541), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [12]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [13]), .S(N946) );
  ADDFXL U896 ( .A(s5[18]), .B(s5[19]), .CI(\add_75_root_add_115_61/carry[8] ), 
        .CO(\add_75_root_add_115_61/carry[9] ), .S(N52) );
  ADDFXL U897 ( .A(s5[12]), .B(s5[15]), .CI(\add_76_root_add_115_61/carry[6] ), 
        .CO(\add_76_root_add_115_61/carry[7] ), .S(N30) );
  ADDFXL U898 ( .A(s4[19]), .B(s0[17]), .CI(
        \add_35_root_sub_0_root_add_115_61/carry [4]), .CO(
        \add_35_root_sub_0_root_add_115_61/carry [5]), .S(N463) );
  ADDFXL U899 ( .A(N1664), .B(n599), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [13]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [14]), .S(N947) );
  ADDFXL U900 ( .A(s5[19]), .B(s5[20]), .CI(\add_75_root_add_115_61/carry[9] ), 
        .CO(\add_75_root_add_115_61/carry[10] ), .S(N53) );
  ADDFXL U901 ( .A(N1661), .B(sp4[15]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[8] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[9] ), .S(N1667) );
  ADDFXL U902 ( .A(s5[13]), .B(s5[16]), .CI(\add_76_root_add_115_61/carry[7] ), 
        .CO(\add_76_root_add_115_61/carry[8] ), .S(N31) );
  ADDFXL U903 ( .A(s4[20]), .B(s0[18]), .CI(
        \add_35_root_sub_0_root_add_115_61/carry [5]), .CO(
        \add_35_root_sub_0_root_add_115_61/carry [6]), .S(N464) );
  ADDFXL U904 ( .A(sp4[13]), .B(n590), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [14]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [15]), .S(N948) );
  ADDFXL U905 ( .A(s5[20]), .B(s5[21]), .CI(\add_75_root_add_115_61/carry[10] ), .CO(\add_75_root_add_115_61/carry[11] ), .S(N54) );
  ADDFXL U906 ( .A(N1662), .B(sp4[16]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[9] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[10] ), .S(N1668) );
  ADDFXL U907 ( .A(s5[14]), .B(s5[17]), .CI(\add_76_root_add_115_61/carry[8] ), 
        .CO(\add_76_root_add_115_61/carry[9] ), .S(N32) );
  ADDFXL U908 ( .A(s4[21]), .B(s0[19]), .CI(
        \add_35_root_sub_0_root_add_115_61/carry [6]), .CO(
        \add_35_root_sub_0_root_add_115_61/carry [7]), .S(N465) );
  ADDFXL U909 ( .A(sp4[14]), .B(n540), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [15]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [16]), .S(N949) );
  ADDFXL U910 ( .A(s5[21]), .B(s5[22]), .CI(\add_75_root_add_115_61/carry[11] ), .CO(\add_75_root_add_115_61/carry[12] ), .S(N55) );
  ADDFXL U911 ( .A(N1663), .B(sp4[17]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[10] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[11] ), .S(N1669) );
  ADDFXL U912 ( .A(s5[15]), .B(s5[18]), .CI(\add_76_root_add_115_61/carry[9] ), 
        .CO(\add_76_root_add_115_61/carry[10] ), .S(N33) );
  ADDFXL U913 ( .A(s4[22]), .B(s0[20]), .CI(
        \add_35_root_sub_0_root_add_115_61/carry [7]), .CO(
        \add_35_root_sub_0_root_add_115_61/carry [8]), .S(N466) );
  ADDFXL U914 ( .A(sp4[15]), .B(n591), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [16]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [17]), .S(N950) );
  ADDFXL U915 ( .A(s5[22]), .B(s5[23]), .CI(\add_75_root_add_115_61/carry[12] ), .CO(\add_75_root_add_115_61/carry[13] ), .S(N56) );
  ADDFXL U916 ( .A(N1664), .B(sp4[18]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[11] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[12] ), .S(N1670) );
  ADDFXL U917 ( .A(s5[16]), .B(s5[19]), .CI(\add_76_root_add_115_61/carry[10] ), .CO(\add_76_root_add_115_61/carry[11] ), .S(N34) );
  ADDFXL U918 ( .A(sp4[16]), .B(n592), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [17]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [18]), .S(N951) );
  ADDFXL U919 ( .A(sp4[13]), .B(sp4[19]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[12] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[13] ), .S(N1671) );
  ADDFXL U920 ( .A(s5[17]), .B(s5[20]), .CI(\add_76_root_add_115_61/carry[11] ), .CO(\add_76_root_add_115_61/carry[12] ), .S(N35) );
  ADDFXL U921 ( .A(sp4[17]), .B(n593), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [18]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [19]), .S(N952) );
  ADDFXL U922 ( .A(sp4[14]), .B(sp4[20]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[13] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[14] ), .S(N1672) );
  ADDFXL U923 ( .A(s5[18]), .B(s5[21]), .CI(\add_76_root_add_115_61/carry[12] ), .CO(\add_76_root_add_115_61/carry[13] ), .S(N36) );
  ADDFXL U924 ( .A(sp1[9]), .B(n635), .CI(
        \add_17_root_sub_0_root_add_115_61/carry[6] ), .CO(
        \add_17_root_sub_0_root_add_115_61/carry[7] ), .S(N240) );
  ADDFXL U925 ( .A(sp4[18]), .B(n594), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [19]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [20]), .S(N953) );
  ADDFXL U926 ( .A(sp4[15]), .B(sp4[21]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[14] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[15] ), .S(N1673) );
  ADDFXL U927 ( .A(s5[19]), .B(s5[22]), .CI(\add_76_root_add_115_61/carry[13] ), .CO(\add_76_root_add_115_61/carry[14] ), .S(N37) );
  ADDFXL U928 ( .A(sp4[19]), .B(n595), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [20]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [21]), .S(N954) );
  ADDFXL U929 ( .A(sp4[16]), .B(sp4[22]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[15] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[16] ), .S(N1674) );
  ADDFXL U930 ( .A(s5[20]), .B(s5[23]), .CI(\add_76_root_add_115_61/carry[14] ), .CO(\add_76_root_add_115_61/carry[15] ), .S(N38) );
  ADDFXL U931 ( .A(n609), .B(sp1[9]), .CI(
        \add_23_root_sub_0_root_add_115_61/carry[9] ), .CO(
        \add_23_root_sub_0_root_add_115_61/carry[10] ), .S(N318) );
  ADDFXL U932 ( .A(sp4[20]), .B(n596), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [21]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [22]), .S(N955) );
  ADDFXL U933 ( .A(sp4[17]), .B(sp4[23]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[16] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[17] ), .S(N1675) );
  ADDFXL U934 ( .A(s5[21]), .B(n735), .CI(\add_76_root_add_115_61/carry[15] ), 
        .CO(\add_76_root_add_115_61/carry[16] ), .S(N39) );
  ADDFXL U935 ( .A(sp4[21]), .B(n597), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [22]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [23]), .S(N956) );
  ADDFXL U936 ( .A(sp4[18]), .B(sp4[24]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[17] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[18] ), .S(N1676) );
  ADDFXL U937 ( .A(s5[22]), .B(n735), .CI(\add_76_root_add_115_61/carry[16] ), 
        .CO(\add_76_root_add_115_61/carry[17] ), .S(N40) );
  ADDFXL U938 ( .A(sp4[19]), .B(sp4[24]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[18] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[19] ), .S(N1677) );
  ADDFXL U939 ( .A(sp4[20]), .B(sp4[24]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[19] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[20] ), .S(N1678) );
  ADDFXL U940 ( .A(sp4[21]), .B(sp4[24]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[20] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[21] ), .S(N1679) );
  ADDFXL U941 ( .A(sp4[22]), .B(n598), .CI(
        \sub_71_root_sub_0_root_add_115_61/carry [23]), .CO(
        \sub_71_root_sub_0_root_add_115_61/carry [24]), .S(N957) );
  ADDFXL U942 ( .A(sp4[22]), .B(sp4[24]), .CI(
        \add_60_root_sub_0_root_add_115_61/carry[21] ), .CO(
        \add_60_root_sub_0_root_add_115_61/carry[22] ), .S(N1680) );
  ADDFXL U943 ( .A(s4[23]), .B(s0[21]), .CI(
        \add_35_root_sub_0_root_add_115_61/carry [8]), .CO(
        \add_35_root_sub_0_root_add_115_61/carry [9]), .S(N467) );
  NOR2X1 U944 ( .A(n508), .B(n604), .Y(Yn[0]) );
  NOR2X1 U945 ( .A(n507), .B(n604), .Y(Yn[1]) );
  NOR2X1 U946 ( .A(n506), .B(n604), .Y(Yn[2]) );
  NOR2X1 U947 ( .A(n505), .B(n603), .Y(Yn[3]) );
  NOR2X1 U948 ( .A(n504), .B(n603), .Y(Yn[4]) );
  NOR2X1 U949 ( .A(n503), .B(n603), .Y(Yn[5]) );
  NOR2X1 U950 ( .A(n502), .B(n603), .Y(Yn[6]) );
  NOR2X1 U951 ( .A(n501), .B(n603), .Y(Yn[7]) );
  NOR2X1 U952 ( .A(n500), .B(n603), .Y(Yn[8]) );
  NOR2X1 U953 ( .A(n499), .B(n603), .Y(Yn[9]) );
  NOR2X1 U954 ( .A(n498), .B(n604), .Y(Yn[10]) );
  NOR2X1 U955 ( .A(n497), .B(n604), .Y(Yn[11]) );
  NOR2X1 U956 ( .A(n496), .B(n604), .Y(Yn[12]) );
  NOR2X1 U957 ( .A(n495), .B(n604), .Y(Yn[13]) );
  NOR2X1 U958 ( .A(n494), .B(n604), .Y(Yn[14]) );
  NOR2X1 U959 ( .A(n493), .B(n604), .Y(Yn[15]) );
  XOR3X1 U960 ( .A(n634), .B(N958), .C(
        \add_70_root_sub_0_root_add_115_61/carry [24]), .Y(N933) );
  XOR3X1 U961 ( .A(sp4[23]), .B(n588), .C(
        \sub_71_root_sub_0_root_add_115_61/carry [24]), .Y(N958) );
  AND2X1 U962 ( .A(N315), .B(n625), .Y(
        \add_22_root_sub_0_root_add_115_61/carry [7]) );
  XOR2X1 U963 ( .A(n625), .B(N315), .Y(N1140) );
  AND2X1 U964 ( .A(n606), .B(N315), .Y(
        \add_23_root_sub_0_root_add_115_61/carry[8] ) );
  XOR2X1 U965 ( .A(N315), .B(n606), .Y(N316) );
  AND2X1 U966 ( .A(N315), .B(n629), .Y(
        \add_17_root_sub_0_root_add_115_61/carry[5] ) );
  XOR2X1 U967 ( .A(n629), .B(N315), .Y(N238) );
  AND2X1 U968 ( .A(s4[15]), .B(s0[13]), .Y(
        \add_35_root_sub_0_root_add_115_61/carry [1]) );
  XOR2X1 U969 ( .A(s0[13]), .B(s4[15]), .Y(N459) );
  AND2X1 U970 ( .A(n608), .B(n605), .Y(
        \add_68_root_sub_0_root_add_115_61/carry [8]) );
  XOR2X1 U971 ( .A(n605), .B(n608), .Y(N891) );
  AND2X1 U972 ( .A(N917), .B(n610), .Y(
        \add_69_root_sub_0_root_add_115_61/carry [9]) );
  XOR2X1 U973 ( .A(n610), .B(N917), .Y(N1442) );
  AND2X1 U974 ( .A(n605), .B(N942), .Y(
        \add_70_root_sub_0_root_add_115_61/carry [9]) );
  XOR2X1 U975 ( .A(N942), .B(n605), .Y(N917) );
  OR2X1 U976 ( .A(n589), .B(N1660), .Y(
        \sub_71_root_sub_0_root_add_115_61/carry [10]) );
  XNOR2X1 U977 ( .A(N1660), .B(n589), .Y(N943) );
  AND2X1 U978 ( .A(s5[7]), .B(s5[10]), .Y(\add_76_root_add_115_61/carry[2] )
         );
  XOR2X1 U979 ( .A(s5[10]), .B(s5[7]), .Y(N25) );
  AND2X1 U980 ( .A(N942), .B(sp4[13]), .Y(
        \add_60_root_sub_0_root_add_115_61/carry[7] ) );
  XOR2X1 U981 ( .A(sp4[13]), .B(N942), .Y(N1665) );
  AND2X1 U982 ( .A(s5[10]), .B(s5[11]), .Y(\add_75_root_add_115_61/carry[1] )
         );
  XOR2X1 U983 ( .A(s5[11]), .B(s5[10]), .Y(N44) );
  XNOR2X1 U984 ( .A(n737), .B(n756), .Y(N468) );
  XOR2X1 U985 ( .A(\add_35_root_sub_0_root_add_115_61/carry [9]), .B(n657), 
        .Y(n756) );
  XOR2X1 U986 ( .A(n757), .B(n758), .Y(N469) );
  XOR2X1 U987 ( .A(n587), .B(n736), .Y(n757) );
  XOR2X1 U988 ( .A(n759), .B(n760), .Y(N470) );
  XOR2X1 U989 ( .A(n755), .B(n736), .Y(n760) );
  AOI222XL U990 ( .A0(n759), .A1(s4[24]), .B0(n759), .B1(n755), .C0(s4[24]), 
        .C1(n755), .Y(n762) );
  OAI222XL U991 ( .A0(n758), .A1(n737), .B0(n758), .B1(n587), .C0(n737), .C1(
        n587), .Y(n759) );
  AOI222XL U992 ( .A0(\add_35_root_sub_0_root_add_115_61/carry [9]), .A1(
        s4[24]), .B0(\add_35_root_sub_0_root_add_115_61/carry [9]), .B1(n657), 
        .C0(n657), .C1(s4[24]), .Y(n758) );
  XNOR2X1 U993 ( .A(n755), .B(n736), .Y(n761) );
endmodule

