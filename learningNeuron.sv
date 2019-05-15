module learningNeuron(input wire ln_clock,
    input real ln_dendrites[31:0],
    input wire [31:0] ln_enabled,
    input real ln_backprop,
    input real ln_training_ratio,
    output real ln_backpropChange[31:0],
    output real ln_axon);

    real ln_weights[32:0];
    real ln_weightsNew[32:0];


    initial begin
//        ln_weights = ln_startweights;
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

    always @(negedge ln_clock) begin

//        ln_weights = ln_weightsNew;
        ln_weights[0] = ln_weightsNew[0] * ln_enabled[0];
        ln_weights[1] = ln_weightsNew[1] * ln_enabled[1];
        ln_weights[2] = ln_weightsNew[2] * ln_enabled[2];
        ln_weights[3] = ln_weightsNew[3] * ln_enabled[3];
        ln_weights[4] = ln_weightsNew[4] * ln_enabled[4];
        ln_weights[5] = ln_weightsNew[5] * ln_enabled[5];
        ln_weights[6] = ln_weightsNew[6] * ln_enabled[6];
        ln_weights[7] = ln_weightsNew[7] * ln_enabled[7];
        ln_weights[8] = ln_weightsNew[8] * ln_enabled[8];
        ln_weights[9] = ln_weightsNew[9] * ln_enabled[9];
        ln_weights[10] = ln_weightsNew[10] * ln_enabled[10];
        ln_weights[11] = ln_weightsNew[11] * ln_enabled[11];
        ln_weights[12] = ln_weightsNew[12] * ln_enabled[12];
        ln_weights[13] = ln_weightsNew[13] * ln_enabled[13];
        ln_weights[14] = ln_weightsNew[14] * ln_enabled[14];
        ln_weights[15] = ln_weightsNew[15] * ln_enabled[15];
        ln_weights[16] = ln_weightsNew[16] * ln_enabled[16];
        ln_weights[17] = ln_weightsNew[17] * ln_enabled[17];
        ln_weights[18] = ln_weightsNew[18] * ln_enabled[18];
        ln_weights[19] = ln_weightsNew[19] * ln_enabled[19];
        ln_weights[20] = ln_weightsNew[20] * ln_enabled[20];
        ln_weights[21] = ln_weightsNew[21] * ln_enabled[21];
        ln_weights[22] = ln_weightsNew[22] * ln_enabled[22];
        ln_weights[23] = ln_weightsNew[23] * ln_enabled[23];
        ln_weights[24] = ln_weightsNew[24] * ln_enabled[24];
        ln_weights[25] = ln_weightsNew[25] * ln_enabled[25];
        ln_weights[26] = ln_weightsNew[26] * ln_enabled[26];
        ln_weights[27] = ln_weightsNew[27] * ln_enabled[27];
        ln_weights[28] = ln_weightsNew[28] * ln_enabled[28];
        ln_weights[29] = ln_weightsNew[29] * ln_enabled[29];
        ln_weights[30] = ln_weightsNew[30] * ln_enabled[30];
        ln_weights[31] = ln_weightsNew[31] * ln_enabled[31];
        ln_weights[32] = ln_weightsNew[32];

    end

    real test_weight2;
    assign test_weight2 = ln_weights[0];



    neuron n(ln_dendrites, ln_weights,
        ln_enabled,
        ln_axon);
    backPropper bp(ln_dendrites,
        ln_weights,
        ln_axon,
        ln_backprop,
        ln_training_ratio,
        ln_backpropChange,
        ln_weightsNew);



endmodule : learningNeuron