module summer(
    input real s_in[32:0],
    output real s_sum);


    real l1[15:0];
    real l2[7:0];
    real l3[3:0];
    real l4[1:0];
    real almostThere;

    assign l1[0] = s_in[0]+s_in[1];
    assign l1[1] = s_in[2]+s_in[3];
    assign l1[2] = s_in[4]+s_in[5];
    assign l1[3] = s_in[6]+s_in[7];
    assign l1[4] = s_in[8]+s_in[9];
    assign l1[5] = s_in[10]+s_in[11];
    assign l1[6] = s_in[12]+s_in[13];
    assign l1[7] = s_in[14]+s_in[15];
    assign l1[8] = s_in[16]+s_in[17];
    assign l1[9] = s_in[18]+s_in[19];
    assign l1[10] = s_in[20]+s_in[21];
    assign l1[11] = s_in[22]+s_in[23];
    assign l1[12] = s_in[24]+s_in[25];
    assign l1[13] = s_in[26]+s_in[27];
    assign l1[14] = s_in[28]+s_in[29];
    assign l1[15] = s_in[30]+s_in[31];

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
    assign s_sum = almostThere+s_in[32];


endmodule: summer