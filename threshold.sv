module threshold(
    input wire [63:0] in,
    output reg [31:0] out);

    always_comb begin
        if (in[63] == 1) out = 32'h0;
        else out = 32'(in/32);
    end



endmodule : threshold