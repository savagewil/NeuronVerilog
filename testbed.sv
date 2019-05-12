// test bench for testing
`timescale 1ns/1ns
module testing_tb();
	reg clk;
	reg [31:0] count;
	wire [31:0] f;

	initial begin
		clk = 1;
		count = -5;

	end
	always #5 clk = ~clk;
	always @(posedge clk)
		count = count + 1;

	multiplier_1 MUT(32'h7FFFFFFF, count, f);
endmodule

		