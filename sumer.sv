module summer(
    input wire [32:0] [31:0] in,
    output reg [63:0] sum);


    wire [15:0] [63:0] l1;
    wire [7:0] [63:0] l2;
    wire [3:0] [63:0] l3;
    wire [1:0] [63:0] l4;
    wire [63:0] almostThere;

    assign l1[0] = signed'(in[0])+signed'(in[1]);
    assign l1[1] = signed'(in[2])+signed'(in[3]);
    assign l1[2] = signed'(in[4])+signed'(in[5]);
    assign l1[3] = signed '(in[6])+signed '(in[7]);
    assign l1[4] = signed'(in[8])+signed'(in[9]);
    assign l1[5] = signed'(in[10])+signed'(in[11]);
    assign l1[6] = signed'(in[12])+signed'(in[13]);
    assign l1[7] = signed'(in[14])+signed'(in[15]);
    assign l1[8] = signed'(in[16])+signed'(in[17]);
    assign l1[9] = signed'(in[18])+signed'(in[19]);
    assign l1[10] = signed'(in[20])+signed'(in[21]);
    assign l1[11] = signed'(in[22])+signed'(in[23]);
    assign l1[12] = signed'(in[24])+signed'(in[25]);
    assign l1[13] = signed'(in[26])+signed'(in[27]);
    assign l1[14] = signed'(in[28])+signed'(in[29]);
    assign l1[15] = signed'(in[30])+signed'(in[31]);

    assign l2[0] = l1[0]+l1[1];
    assign l2[1] = l1[2]+l1[3];
    assign l2[2] = l1[4]+l1[5];
    assign l2[3] = l1[6]+l1[7];
    assign l2[4] = l1[8]+l1[9];
    assign l2[5] = l1[10]+l1[11];
    assign l2[6] = l1[12]+l1[13];
    assign l2[7] = l1[14]+l1[15];

    assign l3[0] = l2[0]+l2[1];
    assign l3[1] = l2[2]+l2[3];
    assign l3[2] = l2[4]+l2[5];
    assign l3[3] = l2[6]+l2[7];

    assign l4[0] = l3[0]+l3[1];
    assign l4[1] = l3[2]+l3[3];

    assign almostThere = l4[0]+l4[1];
    assign sum = almostThere+64'(signed'(in[32]));


endmodule: summer