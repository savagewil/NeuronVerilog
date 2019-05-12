// test bench for testing
`timescale 1ns/1ns
module testing_tb();
	reg clk;
	reg [1:0] count;
	reg [1:0] [31:0] choices;
	wire [31:0] f;
	

	initial begin
		clk = 1;
		count = -1;
		choices[0] = 7;
		choices[1] = 0;
	end
	always #5 clk = ~clk;
	always @(posedge clk)
		count = count + 1;
	
	mux_32by2_1 MUT(clk, choices, f);
endmodule

		