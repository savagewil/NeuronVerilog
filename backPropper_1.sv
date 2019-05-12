// neuron model
module backPropper_1(input wire [31:0] previous, input wire [31:0] weight,
    input wire [31:0] backprop, input wire [31:0] trainingMul, input wire [31:0] trainingDiv,
    output wire [31:0] backpropChange, output wire [31:0] weightNew);

    wire [31:0] multiplication;
    wire [31:0] weightShift;

    wire [63:0] pxb;

    multiplier_1 MUL(previous, weight, multiplication);

    assign backpropChange = signed'(weight) * signed'(backprop) * multiplication[31];

    assign weightShift = signed'(previous) * signed'(backprop) *
        multiplication[31] * trainingMul / trainingDiv;

    assign weightNew = weight + weightShift;

endmodule: backPropper_1

