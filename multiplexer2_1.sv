module mux_32by2_1(
    input wire sel,
    input wire [1:0] [31:0] choices,
    output reg [31:0] out);
    always_comb begin
        out <= choices[sel];
    end
endmodule : mux_32by2_1