// neuron model
module neuron(input real n_dendrites[31:0] , input real n_weights [32:0],
    input wire [31:0] n_enabled,
    output real n_axon);

    real n_weightedInputs[32:0];
    wire real n_weightedSum;

    multiplier MUL(n_dendrites, n_weights,
        n_enabled,
        n_weightedInputs);
    summer SUM(n_weightedInputs, n_weightedSum);
    threshold THR(n_weightedSum, n_axon);

endmodule

		