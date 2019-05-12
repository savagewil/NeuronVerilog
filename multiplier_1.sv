module multiplier_1(
    input wire [31:0] mul1_in,
    input wire [31:0] mul1_weight,
    output reg [31:0] mul1_out);



    always_comb begin
        reg [63:0] mulTemp;
        reg [31:0] choiceUnsigned;
        choiceUnsigned = mul1_weight;
        if (mul1_weight[31]) choiceUnsigned = (~mul1_weight) + 1;
        mulTemp = mul1_in * choiceUnsigned;
        mul1_out = mulTemp / 32'hFFFFFFFE;
        if (mul1_weight[31]) mul1_out = (~mul1_out) + 1;
    end
endmodule : multiplier_1