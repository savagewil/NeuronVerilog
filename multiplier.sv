module multiplier   (
    input wire [31:0] [31:0] in,
    input wire [32:0] [31:0] constant,
    output reg [32:0] [31:0] out);

    always_comb begin
        multiplier_1 MUT(in[0], constant[0], out[0]);
        multiplier_1 MUT(in[1], constant[1], out[1]);
        multiplier_1 MUT(in[2], constant[2], out[2]);
        multiplier_1 MUT(in[3], constant[3], out[3]);
        multiplier_1 MUT(in[4], constant[4], out[4]);
        multiplier_1 MUT(in[5], constant[5], out[5]);
        multiplier_1 MUT(in[6], constant[6], out[6]);
        multiplier_1 MUT(in[7], constant[7], out[7]);
        multiplier_1 MUT(in[8], constant[8], out[8]);
        multiplier_1 MUT(in[9], constant[9], out[9]);
        multiplier_1 MUT(in[10], constant[10], out[10]);
        multiplier_1 MUT(in[11], constant[11], out[11]);
        multiplier_1 MUT(in[12], constant[12], out[12]);
        multiplier_1 MUT(in[13], constant[13], out[13]);
        multiplier_1 MUT(in[14], constant[14], out[14]);
        multiplier_1 MUT(in[15], constant[15], out[15]);
        multiplier_1 MUT(in[16], constant[16], out[16]);
        multiplier_1 MUT(in[17], constant[17], out[17]);
        multiplier_1 MUT(in[18], constant[18], out[18]);
        multiplier_1 MUT(in[19], constant[19], out[19]);
        multiplier_1 MUT(in[20], constant[20], out[20]);
        multiplier_1 MUT(in[21], constant[21], out[21]);
        multiplier_1 MUT(in[22], constant[22], out[22]);
        multiplier_1 MUT(in[23], constant[23], out[23]);
        multiplier_1 MUT(in[24], constant[24], out[24]);
        multiplier_1 MUT(in[25], constant[25], out[25]);
        multiplier_1 MUT(in[26], constant[26], out[26]);
        multiplier_1 MUT(in[27], constant[27], out[27]);
        multiplier_1 MUT(in[28], constant[28], out[28]);
        multiplier_1 MUT(in[29], constant[29], out[29]);
        multiplier_1 MUT(in[30], constant[30], out[30]);
        multiplier_1 MUT(in[31], constant[31], out[31]);
        multiplier_1 MUT(32'hFFFFFFFF, constant[32], out[32]);
    end
endmodule : multiplier