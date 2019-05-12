module summer(
    input wire [32:0] [31:0] in,
    output reg [63:0] sum);


    reg [15:0] [63:0] l1;
    reg [7:0] [63:0] l2;
    reg [3:0] [63:0] l3;
    reg [1:0] [63:0] l4;

    always_comb begin
        l1[0] = signed'(in[0]) + signed'(in[1]);
        l1[1] = signed'(in[2]) + signed'(in[3]);
        l1[2] = signed'(in[4]) + signed'(in[5]);
        l1[3] = signed'(in[6]) + signed'(in[7]);
        l1[4] = signed'(in[8]) + signed'(in[9]);
        l1[5] = signed'(in[10]) + signed'(in[11]);
        l1[6] = signed'(in[12]) + signed'(in[13]);
        l1[7] = signed'(in[14]) + signed'(in[15]);
        l1[8] = signed'(in[16]) + signed'(in[17]);
        l1[9] = signed'(in[18]) + signed'(in[19]);
        l1[10] = signed'(in[20]) + signed'(in[21]);
        l1[11] = signed'(in[22]) + signed'(in[23]);
        l1[12] = signed'(in[24]) + signed'(in[25]);
        l1[13] = signed'(in[26]) + signed'(in[27]);
        l1[14] = signed'(in[28]) + signed'(in[29]);
        l1[15] = signed'(in[30]) + signed'(in[31]);

        l2[0] = l1[0] + l1[1];
        l2[1] = l1[2] + l1[3];
        l2[2] = l1[4] + l1[5];
        l2[3] = l1[6] + l1[7];
        l2[4] = l1[8] + l1[9];
        l2[5] = l1[10] + l1[11];
        l2[6] = l1[12] + l1[13];
        l2[7] = l1[14] + l1[15];

        l3[0] = l2[0] + l2[1];
        l3[1] = l2[2] + l2[3];
        l3[2] = l2[4] + l2[5];
        l3[3] = l2[6] + l2[7];

        l4[0] = l3[0] + l3[1];
        l4[1] = l3[2] + l3[3];

        sum = l4[0] + l4[1];
        sum = sum + 64'(signed'(in[32]));

    end



endmodule : summer