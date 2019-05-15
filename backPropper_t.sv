// neuron model
module backPropper_t(input real bpt_weight,
    input real bpt_back_prop,
    input real bpt_axon,
    input real bpt_training_ratio,
    output real bpt_weight_new);

    real bpt_sig;
    assign bpt_sig = (1.0-bpt_axon)*bpt_axon;
    real bpt_current_shift;
    assign bpt_current_shift = bpt_sig*bpt_back_prop;

    real bpt_weightshift;
    assign bpt_weightshift = bpt_current_shift*bpt_training_ratio;

    assign bpt_weight_new = bpt_weight+bpt_weightshift;


endmodule: backPropper_t

