`timescale 1ns / 1ps

module bcdadd_tb;

reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire cout;

bcdadd u_bcdadd(
.a(a ),
.b(b ),
.cin(cin ),
.s(s ),
.cout(cout )
);

initial begin
a = 4'D0;
b = 4'D0;
cin = 1'b0;
end

always@(a or b or cin)begin
a <= #10 a+4'D1;
b <= #20 a-4'D1;
cin <= #30 ~cin;
end

endmodule
