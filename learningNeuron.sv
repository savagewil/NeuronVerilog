module learningNeuron(input wire clock, input wire [31:0] [31:0] dentrites, input wire [31:0] backprop,
    input wire [31:0] trainingMul, input wire [31:0] trainingDiv,
    output wire [31:0] [31:0] backpropChange, output wire [31:0] axon );

    reg [32:0] [31:0] weights;
    reg [32:0] [31:0] weightsNew;

    initial begin
        weights[0] = 0;
        weights[1] = 0;
        weights[2] = 0;
        weights[3] = 0;
        weights[4] = 0;
        weights[5] = 0;
        weights[6] = 0;
        weights[7] = 0;
        weights[8] = 0;
        weights[9] = 0;
        weights[10] = 0;
        weights[11] = 0;
        weights[12] = 0;
        weights[13] = 0;
        weights[14] = 0;
        weights[15] = 0;
        weights[16] = 0;
        weights[17] = 0;
        weights[18] = 0;
        weights[19] = 0;
        weights[20] = 0;
        weights[21] = 0;
        weights[22] = 0;
        weights[23] = 0;
        weights[24] = 0;
        weights[25] = 0;
        weights[26] = 0;
        weights[27] = 0;
        weights[28] = 0;
        weights[29] = 0;
        weights[30] = 0;
        weights[31] = 0;
        weights[32] = 0;
        weightsNew = weights;
    end

//    always @(posedge clock) begin
//
//        weights = weightsNew;
//
//    end


//    neuron n(dendrites, weights, axon);
//    backPropper bp(dendrites, weights, backprop, trainingMul,
//        trainingDiv, backpropChange, weightNew);




endmodule : learningNeuron