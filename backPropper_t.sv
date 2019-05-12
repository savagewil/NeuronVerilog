// neuron model
module backPropper_t(input wire [31:0] bpt_w,
    input wire [31:0] bpt_bp, input wire [31:0] bpt_tm, input wire [31:0] bpt_td,
    output wire [31:0] bpt_wn);

    wire [31:0] bpt_multiplication;
    wire [31:0] bpt_ws;

    multiplier_1 MUL(32'hFFFFFFFE, bpt_w, bpt_multiplication);

    assign bpt_ws = signed'(1) * signed'(bpt_bp) * (1 - bpt_multiplication[31])
        * bpt_tm / bpt_td;

    assign bpt_wn = bpt_w + bpt_ws;

endmodule: backPropper_t

