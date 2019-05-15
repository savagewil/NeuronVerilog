module threshold(
    input real th_in,
    output real th_out);

    assign th_out = 1.0 / (1.0 + 2.718 ** (-th_in));

endmodule : threshold