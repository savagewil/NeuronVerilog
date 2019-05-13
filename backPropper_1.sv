// neuron model
module backPropper_1(input wire [31:0] bp1_p, input wire [31:0] bp1_w,
    input wire [63:0] bp1_bp, input wire [31:0] bp1_tm, input wire [31:0] bp1_td,
    output wire [31:0] bp1_bpc, output wire [31:0] bp1_wn);

    wire [31:0] bp1_multiplication;
    wire [31:0] bp1_weightShift;

    multiplier_1 MUL(bp1_p, bp1_w, 1, bp1_multiplication);
//
    assign bp1_bpc = signed'(bp1_w)*signed'(bp1_bp)*(1-bp1_multiplication[31]);
//
    assign bp1_weightShift = signed'(bp1_p)*signed'(bp1_bp)*(1-bp1_multiplication[31])*
        bp1_tm/(bp1_td*32'hFFFFFFFE);
//
    assign bp1_wn = bp1_w+bp1_weightShift;

endmodule: backPropper_1

