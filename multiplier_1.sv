module multiplier_1(
    input wire [31:0] in,
    input wire [31:0] constant,
    output wire [31:0] out);
    wire [63:0] mulTemp;
    wire [31:0] choiceUnsigned;

    always_comb begin
        choiceUnsigned = constant;
        if (constant[31]) choiceUnsigned = (~constant) + 1;
        mulTemp = in * choiceUnsigned;
        out = mulTemp / 1'hFFFFFFFF;
        if (constant[31]) out = (~out) + 1;
    end
endmodule : multiplier_1