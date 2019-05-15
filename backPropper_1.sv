// neuron model
module backPropper_1(input real bp1_previous, input real bp1_weight,
    input real bp1_axon, input real bp1_back_prop,
    input real bp1_ratio,
    output real bp1_bp1_back_prop_new, output real bp1_weight_new);

    real bp1_sig = (1.0 - bp1_axon) * bp1_axon;
    real bp1_current_shift = bp1_sig * bp1_back_prop;
    
    assign bp1_bp1_back_prop_new = bp1_current_shift * bp1_weight;
    
    real bp1_weightshift = current_shift * p * bp1_ratio;

    assign bp1_weight_new = bp1_weight + bp1_weightshift;
    
    

endmodule: backPropper_1

