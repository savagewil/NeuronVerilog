// test bench for testing
`timescale 1ns/1ns
module testing_tb();
    reg clk;
    reg [32:0] count;
    reg [31:0] enabled;

    reg [31:0] [31:0] in;
    reg [31:0] [31:0] back;

    reg [31:0] out;
    reg [63:0] backpropStart;

    initial begin
        clk = 1;
        count = 0;

        backpropStart = 1;

        enabled[0] = 1;
        enabled[1] = 0;
        enabled[2] = 0;
        enabled[3] = 0;
        enabled[4] = 0;
        enabled[5] = 0;
        enabled[6] = 0;
        enabled[7] = 0;
        enabled[8] = 0;
        enabled[9] = 0;
        enabled[10] = 0;
        enabled[11] = 0;
        enabled[12] = 0;
        enabled[13] = 0;
        enabled[14] = 0;
        enabled[15] = 0;
        enabled[16] = 0;
        enabled[17] = 0;
        enabled[18] = 0;
        enabled[19] = 0;
        enabled[20] = 0;
        enabled[21] = 0;
        enabled[22] = 0;
        enabled[23] = 0;
        enabled[24] = 0;
        enabled[25] = 0;
        enabled[26] = 0;
        enabled[27] = 0;
        enabled[28] = 0;
        enabled[29] = 0;
        enabled[30] = 0;
        enabled[31] = 0;
    end
    always #3 clk = ~clk;
    always @(posedge clk) begin
        count = count + 1;
        in[0] = 32'hFFFFFFFD * (1 - count[0]) + 1;
        in[1] = 32'hFFFFFFFD * (count[1]) + 1;
        in[2] = 32'hFFFFFFFD * (count[2]) + 1;
        in[3] = 32'hFFFFFFFD * (count[3]) + 1;
        in[4] = 32'hFFFFFFFD * (count[4]) + 1;
        in[5] = 32'hFFFFFFFD * (count[5]) + 1;
        in[6] = 32'hFFFFFFFD * (count[6]) + 1;
        in[7] = 32'hFFFFFFFD * (count[7]) + 1;
        in[8] = 32'hFFFFFFFD * (count[8]) + 1;
        in[9] = 32'hFFFFFFFD * (count[9]) + 1;
        in[10] = 32'hFFFFFFFD * (count[10]) + 1;
        in[11] = 32'hFFFFFFFD * (count[11]) + 1;
        in[12] = 32'hFFFFFFFD * (count[12]) + 1;
        in[13] = 32'hFFFFFFFD * (count[13]) + 1;
        in[14] = 32'hFFFFFFFD * (count[14]) + 1;
        in[15] = 32'hFFFFFFFD * (count[15]) + 1;
        in[16] = 32'hFFFFFFFD * (count[16]) + 1;
        in[17] = 32'hFFFFFFFD * (count[17]) + 1;
        in[18] = 32'hFFFFFFFD * (count[18]) + 1;
        in[19] = 32'hFFFFFFFD * (count[19]) + 1;
        in[20] = 32'hFFFFFFFD * (count[20]) + 1;
        in[21] = 32'hFFFFFFFD * (count[21]) + 1;
        in[22] = 32'hFFFFFFFD * (count[22]) + 1;
        in[23] = 32'hFFFFFFFD * (count[23]) + 1;
        in[24] = 32'hFFFFFFFD * (count[24]) + 1;
        in[25] = 32'hFFFFFFFD * (count[25]) + 1;
        in[26] = 32'hFFFFFFFD * (count[26]) + 1;
        in[27] = 32'hFFFFFFFD * (count[27]) + 1;
        in[28] = 32'hFFFFFFFD * (count[28]) + 1;
        in[29] = 32'hFFFFFFFD * (count[29]) + 1;
        in[30] = 32'hFFFFFFFD * (count[30]) + 1;
        in[31] = 32'hFFFFFFFD * (count[31]) + 1;
    end

    learningNeuron LN(clk, in,
        enabled,
        backpropStart,  32'h1,  32'h1000000,
        back, out);

    backPropperStart bps(unsigned'(64'hFFFFFFFE) * unsigned'(count[0]), 64'(unsigned'(out)), backpropStart);

endmodule

		