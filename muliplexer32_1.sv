module mux_32by32_1(
    input wire [4:0] sel,
    input wire [31:0] [31:0] choices,
    output reg [31:0] out);
    always_comb begin
        out <= choices[sel];
    end
endmodule : mux_32by32_1