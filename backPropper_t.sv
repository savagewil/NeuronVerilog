// neuron model
module backPropper_t(input wire [31:0] weight,
    input wire [31:0] backprop, input wire [31:0] trainingMul, input wire [31:0] trainingDiv,
    output wire [31:0] weightNew);

    wire [31:0] multiplication;
    wire [31:0] weightShift;

    multiplier_1 MUL(32'hFFFFFFFE, weight, multiplication);

    assign weightShift = signed'(1) * signed'(backprop) * (1 - multiplication[31])
        * trainingMul / trainingDiv;

    assign weightNew = weight + weightShift;

endmodule: backPropper_t

