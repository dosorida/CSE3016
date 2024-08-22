`timescale 1ns / 1ps

module dec416_tb;

reg [3:0] in;

wire y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15;

dec416 dc(in[3], in[2], in[1], in[0], y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15);

initial begin
in[3] = 1'b0;
in[2] = 1'b0;
in[1] = 1'b0;
in[0] = 1'b0;
end

always in[3] = #400 ~in[3];
always in[2] = #200 ~in[2];
always in[1] = #100 ~in[1];
always in[0] = #50 ~in[0];

initial begin
    #1000
    $finish;
end

endmodule
