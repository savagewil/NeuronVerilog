// neuron model
module neuron(input wire [31:0] [31:0] dendrites, input wire [32:0] [31:0] weights,
    output wire [31:0] axon);

    wire [32:0] [31:0] weightedInputs;
    wire [63:0] weightedSum;

    multiplier MUL(dendrites, weights, weightedInputs);
    summer SUM(weightedInputs, weightedSum);
    threshold THR(weightedSum, axon);

endmodule

		