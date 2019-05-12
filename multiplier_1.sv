module multiplier_1(
    input wire [31:0] in,
    input wire [31:0] constant,
    output reg [31:0] out);

    always_comb begin
    	reg [63:0] mulTemp;
    	reg [31:0] choiceUnsigned;
        choiceUnsigned = constant;
        if (constant[31]) choiceUnsigned = (~constant) + 1;
        mulTemp = in * choiceUnsigned;
        out = mulTemp / 32'hFFFFFFFE;
        if (constant[31]) out = (~out) + 1;
    end
endmodule : multiplier_1