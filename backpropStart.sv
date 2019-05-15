// neuron model
module backPropperStart(real bps_expected, real bps_actual,
    real bps_bpc);

    assign bps_bpc = 2.0 * (bps_expected - bps_actual);

endmodule: backPropperStart

