module multiplier(
    input wire [31:0] [31:0] mul_in,
    input wire [32:0] [31:0] mul_weight,
    input wire [31:0] mul_enable,
    output wire [32:0] [31:0] mul_out);

    multiplier_1 m0(mul_in[0], mul_weight[0], mul_enable[0], mul_out[0]);
    multiplier_1 m1(mul_in[1], mul_weight[1], mul_enable[1], mul_out[1]);
    multiplier_1 m2(mul_in[2], mul_weight[2], mul_enable[2], mul_out[2]);
    multiplier_1 m3(mul_in[3], mul_weight[3], mul_enable[3], mul_out[3]);
    multiplier_1 m4(mul_in[4], mul_weight[4], mul_enable[4], mul_out[4]);
    multiplier_1 m5(mul_in[5], mul_weight[5], mul_enable[5], mul_out[5]);
    multiplier_1 m6(mul_in[6], mul_weight[6], mul_enable[6], mul_out[6]);
    multiplier_1 m7(mul_in[7], mul_weight[7], mul_enable[7], mul_out[7]);
    multiplier_1 m8(mul_in[8], mul_weight[8], mul_enable[8], mul_out[8]);
    multiplier_1 m9(mul_in[9], mul_weight[9], mul_enable[9], mul_out[9]);
    multiplier_1 m10(mul_in[10], mul_weight[10], mul_enable[10], mul_out[10]);
    multiplier_1 m11(mul_in[11], mul_weight[11], mul_enable[11], mul_out[11]);
    multiplier_1 m12(mul_in[12], mul_weight[12], mul_enable[12], mul_out[12]);
    multiplier_1 m13(mul_in[13], mul_weight[13], mul_enable[13], mul_out[13]);
    multiplier_1 m14(mul_in[14], mul_weight[14], mul_enable[14], mul_out[14]);
    multiplier_1 m15(mul_in[15], mul_weight[15], mul_enable[15], mul_out[15]);
    multiplier_1 m16(mul_in[16], mul_weight[16], mul_enable[16], mul_out[16]);
    multiplier_1 m17(mul_in[17], mul_weight[17], mul_enable[17], mul_out[17]);
    multiplier_1 m18(mul_in[18], mul_weight[18], mul_enable[18], mul_out[18]);
    multiplier_1 m19(mul_in[19], mul_weight[19], mul_enable[19], mul_out[19]);
    multiplier_1 m20(mul_in[20], mul_weight[20], mul_enable[20], mul_out[20]);
    multiplier_1 m21(mul_in[21], mul_weight[21], mul_enable[21], mul_out[21]);
    multiplier_1 m22(mul_in[22], mul_weight[22], mul_enable[22], mul_out[22]);
    multiplier_1 m23(mul_in[23], mul_weight[23], mul_enable[23], mul_out[23]);
    multiplier_1 m24(mul_in[24], mul_weight[24], mul_enable[24], mul_out[24]);
    multiplier_1 m25(mul_in[25], mul_weight[25], mul_enable[25], mul_out[25]);
    multiplier_1 m26(mul_in[26], mul_weight[26], mul_enable[26], mul_out[26]);
    multiplier_1 m27(mul_in[27], mul_weight[27], mul_enable[27], mul_out[27]);
    multiplier_1 m28(mul_in[28], mul_weight[28], mul_enable[28], mul_out[28]);
    multiplier_1 m29(mul_in[29], mul_weight[29], mul_enable[29], mul_out[29]);
    multiplier_1 m30(mul_in[30], mul_weight[30], mul_enable[30], mul_out[30]);
    multiplier_1 m31(mul_in[31], mul_weight[31], mul_enable[31], mul_out[31]);
    multiplier_1 m32(32'hFFFFFFFE, mul_weight[32], 1, mul_out[32]);
     
endmodule: multiplier