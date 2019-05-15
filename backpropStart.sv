// neuron model
module backPropperStart(input real bps_expected, input real bps_actual,
    output real bps_bpc);

    assign bps_bpc = 2.0 * (bps_expected - bps_actual);

endmodule: backPropperStart

