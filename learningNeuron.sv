module learningNeuron(input wire clock, input wire [31:0] [31:0] dentrites,
    input wire [32:0] [31:0] initialWeights, input wire [31:0] backprop,
    input wire [31:0] trainingMul, input wire [31:0] trainingDiv,
    output wire [31:0] [31:0] backpropChange, output wire [31:0] axon );

    reg [32:0] [31:0] weights;
    wire [32:0] [31:0] weightsNew;

    neuron n(dendrites, weights, axon);
    backPropper bp(dendrites, weights, backprop, trainingMul,
        trainingDiv, backpropChange, weightNew);

    initial begin
        weights = initialWeights;
    end

    always @(posedge clk) begin

        weights = weightsNew;

    end




endmodule : learningNeuron