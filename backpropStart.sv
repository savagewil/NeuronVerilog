// neuron model
module backPropperStart(input wire [63:0] bps_expected, input wire [63:0] bps_actual,
    output wire [63:0] bps_bpc);

    assign bps_bpc = 64'(signed'(2 * ( unsigned'(bps_expected) - unsigned'(bps_actual))));

endmodule: backPropperStart

