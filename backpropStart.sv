// neuron model
module backPropperStart(input wire [31:0] expected, input wire [31:0] actual,
    output wire [31:0] backpropChange);

    assign backpropChange = 2 * (actual - expected);

endmodule: backPropperStart

