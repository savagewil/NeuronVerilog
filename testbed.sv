// test bench for testing
`timescale 1ns/1ns
module testing_tb();
	reg clk;
	reg [1:0] count;
	reg [3:0] [31:0] choices;
	wire [31:0] f;
	

	initial begin
		clk = 1;
		count = -1;
		choices[0] = 0;
		choices[1] = 1;
		choices[2] = 2;
		choices[3] = 3;
	end
	always #5 clk = ~clk;
	always @(posedge clk)
		count = count + 1;
	
	multiplier_1 MUT(count, choices, f);
endmodule

		