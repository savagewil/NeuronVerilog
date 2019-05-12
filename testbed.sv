// test bench for testing
`timescale 1ns/1ns
module testing_tb();
    reg clk;
    reg [31:0] count;
    reg [32:0] [31:0] constant;
    reg [31:0] [31:0] in;

    wire [31:0] out;

    initial begin
        clk = 1;
        count = -1;

        constant[0] = 8;
        constant[1] = 8;
        constant[2] = 8;
        constant[3] = 8;
        constant[4] = 8;
        constant[5] = 8;
        constant[6] = 8;
        constant[7] = 8;
        constant[8] = 8;
        constant[9] = 8;
        constant[10] = 8;
        constant[11] = 8;
        constant[12] = 8;
        constant[13] = 8;
        constant[14] = 8;
        constant[15] = 8;
        constant[16] = 8;
        constant[17] = 8;
        constant[18] = 8;
        constant[19] = 8;
        constant[20] = 8;
        constant[21] = 8;
        constant[22] = 8;
        constant[23] = 8;
        constant[24] = 8;
        constant[25] = 8;
        constant[26] = 8;
        constant[27] = 8;
        constant[28] = 8;
        constant[29] = 8;
        constant[30] = 8;
        constant[31] = 8;
        constant[32] = 8;
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
    
    neuron NRN(in, constant, out);

endmodule

		