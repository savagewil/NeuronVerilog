// test bench for testing
`timescale 1ns/1ns
module testing_tb();
    reg clk;
    reg [31:0] count;
    reg [32:0] [31:0] constant;
    reg [31:0] [31:0] in;


    wire [32:0] [31:0] f;
    wire [63:0] o;
    wire [31:0] out;

    initial begin
        clk = 1;
        count = -1;

        constant[0] = 4;
        constant[1] = 4;
        constant[2] = 4;
        constant[3] = 4;
        constant[4] = 4;
        constant[5] = 4;
        constant[6] = 4;
        constant[7] = 4;
        constant[8] = 4;
        constant[9] = 4;
        constant[10] = 4;
        constant[11] = 4;
        constant[12] = 4;
        constant[13] = 4;
        constant[14] = 4;
        constant[15] = 4;
        constant[16] = 4;
        constant[17] = 4;
        constant[18] = 4;
        constant[19] = 4;
        constant[20] = 4;
        constant[21] = 4;
        constant[22] = 4;
        constant[23] = 4;
        constant[24] = 4;
        constant[25] = 4;
        constant[26] = 4;
        constant[27] = 4;
        constant[28] = 4;
        constant[29] = 4;
        constant[30] = 4;
        constant[31] = 4;
        constant[32] = 4;
    end
    always #5 clk = ~clk;
    always @(posedge clk) begin
        count = count+1;
        in[0] = count * 32'h3fffffff;
        in[1] = count * 32'h3fffffff;
        in[2] = count * 32'h3fffffff;
        in[3] = count * 32'h3fffffff;
        in[4] = count * 32'h3fffffff;
        in[5] = count * 32'h3fffffff;
        in[6] = count * 32'h3fffffff;
        in[7] = count * 32'h3fffffff;
        in[8] = count * 32'h3fffffff;
        in[9] = count * 32'h3fffffff;
        in[10] = count * 32'h3fffffff;
        in[11] = count * 32'h3fffffff;
        in[12] = count * 32'h3fffffff;
        in[13] = count * 32'h3fffffff;
        in[14] = count * 32'h3fffffff;
        in[15] = count * 32'h3fffffff;
        in[16] = count * 32'h3fffffff;
        in[17] = count * 32'h3fffffff;
        in[18] = count * 32'h3fffffff;
        in[19] = count * 32'h3fffffff;
        in[20] = count * 32'h3fffffff;
        in[21] = count * 32'h3fffffff;
        in[22] = count * 32'h3fffffff;
        in[23] = count * 32'h3fffffff;
        in[24] = count * 32'h3fffffff;
        in[25] = count * 32'h3fffffff;
        in[26] = count * 32'h3fffffff;
        in[27] = count * 32'h3fffffff;
        in[28] = count * 32'h3fffffff;
        in[29] = count * 32'h3fffffff;
        in[30] = count * 32'h3fffffff;
        in[31] = count * 32'h3fffffff;
    end
    multiplier MUL(in, constant, f);
    summer SUM(f, o);
    threshold THR(o, out);

endmodule

		