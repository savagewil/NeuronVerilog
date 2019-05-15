module multiplier_1(
    input real mul1_in,
    input real mul1_weight,
    input wire mul1_enable,
    output real mul1_out);


    assign mul1_out = mul1_in * mul1_weight * mul1_enable;
//    always_comb begin
//        if (mul1_enable) begin
//            reg [63:0] mulTemp;
//            reg [31:0] choiceUnsigned;
//            choiceUnsigned = mul1_weight;
//            if (mul1_weight[31]) choiceUnsigned = (~mul1_weight) + 1;
//            mulTemp = mul1_in * choiceUnsigned;
//            mul1_out = mulTemp / 32'hFFFFFFFE;
//            if (mul1_weight[31]) mul1_out = (~mul1_out) + 1;
//        end
//        else mul1_out = 0;
//    end
endmodule : multiplier_1