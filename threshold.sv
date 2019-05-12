module threshold(
    input wire [63:0] th_in,
    output reg [31:0] th_out);

    always_comb begin
        if (th_in[63] == 1) th_out = 32'h0;
        else th_out = 32'(th_in/32);
    end



endmodule : threshold