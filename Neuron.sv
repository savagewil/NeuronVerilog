// neuron model
module neuron(input wire [31:0] [31:0] n_dendrites, input wire [32:0] [31:0] n_weights,
    input wire [31:0] n_enabled,
    output wire [31:0] n_axon);

    wire [32:0] [31:0] n_weightedInputs;
    wire [63:0] n_weightedSum;

    multiplier MUL(n_dendrites, n_weights,
        n_enabled,
        n_weightedInputs);
    summer SUM(n_weightedInputs, n_weightedSum);
    threshold THR(n_weightedSum, n_axon);

endmodule

		