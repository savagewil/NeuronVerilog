module learningNeuron(input wire ln_clock, input wire [31:0] [31:0] ln_dendrites,
    input wire [31:0] ln_backprop, input wire [31:0] ln_trainingMul,
    input wire [31:0] ln_trainingDiv, output wire [31:0] [31:0] ln_backpropChange,
    output reg [31:0] ln_axon);

    reg [32:0] [31:0] ln_weights;
    reg [32:0] [31:0] ln_weightsNew;

    initial begin
        ln_weights[0] = 0;
        ln_weights[1] = 0;
        ln_weights[2] = 0;
        ln_weights[3] = 0;
        ln_weights[4] = 0;
        ln_weights[5] = 0;
        ln_weights[6] = 0;
        ln_weights[7] = 0;
        ln_weights[8] = 0;
        ln_weights[9] = 0;
        ln_weights[10] = 0;
        ln_weights[11] = 0;
        ln_weights[12] = 0;
        ln_weights[13] = 0;
        ln_weights[14] = 0;
        ln_weights[15] = 0;
        ln_weights[16] = 0;
        ln_weights[17] = 0;
        ln_weights[18] = 0;
        ln_weights[19] = 0;
        ln_weights[20] = 0;
        ln_weights[21] = 0;
        ln_weights[22] = 0;
        ln_weights[23] = 0;
        ln_weights[24] = 0;
        ln_weights[25] = 0;
        ln_weights[26] = 0;
        ln_weights[27] = 0;
        ln_weights[28] = 0;
        ln_weights[29] = 0;
        ln_weights[30] = 0;
        ln_weights[31] = 0;
        ln_weights[32] = 0;
        ln_weightsNew = ln_weights;
    end

//    always @(posedge clock) begin
//
//        weights = weightsNew;
//
//    end


    neuron n(ln_dendrites, ln_weights, ln_axon);
    backPropper bp(ln_dendrites, ln_weights, ln_backprop, ln_trainingMul,
        ln_trainingDiv, ln_backpropChange, ln_weightNew);




endmodule : learningNeuron