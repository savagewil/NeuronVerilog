module threshold(
    input wire [63:0] in,
    output reg [31:0] out);

    always_comb begin
        if (in < 0) out = 0;
        else begin
            out = 32'(in/64'b100000);
        end
    end



endmodule : threshold