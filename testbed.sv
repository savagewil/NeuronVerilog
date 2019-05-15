// test bench for testing
`timescale 1ns/1ns
module testing_tb();
    reg clk;
    reg [31:0] count;
    reg [31:0] enabled;

    real backpropStart;

    real back1 [31:0];
    real back2 [31:0];
    real back3 [31:0];

    real out1;
    real in1 [31:0];
    real out2;
    real in2 [31:0];
    real out3;
    real in3 [31:0];

    initial begin
        clk = 1;
        count = 0;

        backpropStart = 1;
        enabled[0] = 1;
        enabled[1] = 1;
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
        count = count+1;
        in3[0] = 1.0 * count[0];
        in3[1] = 1.0 * count[1];
//        in2[0] = 1.0 * count[0];
//        in2[1] = 1.0 * count[1];
    end


//    learningNeuron LN1(clk,
//        in1,
//        enabled,
//        back3[0],
//        1.0,
//        back1,
//        out1);
//
//    learningNeuron LN2(clk,
//        in2,
//        enabled,
//        back3[1],
//        1.0,
//        back2,
//        out2);

//    assign in3[0] = out1;
//    assign in3[1] = out2;

    learningNeuron LN3(clk,
        in3,
        enabled,
        backpropStart,
        1.0,
        back3,
        out3);

//    real n_weightedInputs[32:0];
//    real n_weightedSum;
//
//    multiplier MUL(in, weights,
//        enabled,
//        n_weightedInputs);
//    summer SUM(n_weightedInputs, n_weightedSum);
//    threshold THR(n_weightedSum, out);


    real expected;
    assign expected = count[1:0] == 3  ? 1.0:0.0;
    backPropperStart bps(expected, out3, backpropStart);

endmodule

		