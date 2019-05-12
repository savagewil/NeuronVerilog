// test bench for testing
`timescale 1ns/1ns
module testing_tb();
    reg clk;
    reg [31:0] count;
    reg [32:0] [31:0] startWeights;

    reg [31:0] [31:0] in;
    reg [31:0] [31:0] back;

    reg [31:0] out;
    reg [31:0] backpropStart;

    initial begin
        clk = 1;
        count = -1;

        out = 0;
        backpropStart = 0;

        startWeights[0] = 8;
        startWeights[1] = 8;
        startWeights[2] = 8;
        startWeights[3] = 8;
        startWeights[4] = 8;
        startWeights[5] = 8;
        startWeights[6] = 8;
        startWeights[7] = 8;
        startWeights[8] = 8;
        startWeights[9] = 8;
        startWeights[10] = 8;
        startWeights[11] = 8;
        startWeights[12] = 8;
        startWeights[13] = 8;
        startWeights[14] = 8;
        startWeights[15] = 8;
        startWeights[16] = 8;
        startWeights[17] = 8;
        startWeights[18] = 8;
        startWeights[19] = 8;
        startWeights[20] = 8;
        startWeights[21] = 8;
        startWeights[22] = 8;
        startWeights[23] = 8;
        startWeights[24] = 8;
        startWeights[25] = 8;
        startWeights[26] = 8;
        startWeights[27] = 8;
        startWeights[28] = 8;
        startWeights[29] = 8;
        startWeights[30] = 8;
        startWeights[31] = 8;
        startWeights[32] = 8;
    end
    always #5 clk = ~clk;
    always @(posedge clk) begin
        count = count+1;
        in[0] = 0;
        in[1] = 0;
        in[2] = 0;
        in[3] = 0;
        in[4] = 0;
        in[5] = 0;
        in[6] = 0;
        in[7] = 0;
        in[8] = 0;
        in[9] = 0;
        in[10] = 0;
        in[11] = 0;
        in[12] = 0;
        in[13] = 0;
        in[14] = 0;
        in[15] = 0;
        in[16] = 0;
        in[17] = 0;
        in[18] = 0;
        in[19] = 0;
        in[20] = 0;
        in[21] = 0;
        in[22] = 0;
        in[23] = 0;
        in[24] = 0;
        in[25] = 0;
        in[26] = 0;
        in[27] = 0;
        in[28] = 0;
        in[29] = 0;
        in[30] = 0;
        in[31] = 0;
    end
    
    learningNeuron LN(clk, in, startWeights, 32'h0, 1, 10, back, out);
    //backPropperStart bps(32'hFFFFFFFE, out, backpropStart);

endmodule

		