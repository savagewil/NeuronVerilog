// test bench for testing
`timescale 1ns/1ns
module testing_tb();
    reg clk;
    reg [31:0] count;
    reg [31:0] enabled;

    real in [31:0];
    real weights [32:0];
    real back [31:0];

    real out;
    real backpropStart;

    initial begin
        clk = 1;
        count = 0;

        backpropStart = 1;
        enabled = 0;
        enabled[0] = 1;
    end
    always #3 clk = ~clk;
    always @(posedge clk) begin
        count = count+1;
        in = 0;
        in[0] = 1.0 * count[0];
    end

    learningNeuron LN(clk,
        in,
        enabled,
        backpropStart,
        1.0,
        back,
        out);

    real expected;
    assign expected = 1.0 * count[0];
    backPropperStart bps(expected, out, backpropStart);

endmodule

		