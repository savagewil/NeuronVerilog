module mux_32by2_1(
    input wire [1:0] sel,
    input wire [31:0] choice0,
    input wire [31:0] choice1,
    input wire [31:0] choice2,
    input wire [31:0] choice3,
    output reg [31:0] out);
    always_comb begin
        case (sel)
            1'h0 : out <= choice0[31:0];
            1'h1 : out <= choice1[31:0];
            1'h2 : out <= choice2[31:0];
            1'h3 : out <= choice3[31:0];
        endcase
    end
endmodule : mux_32by2_1