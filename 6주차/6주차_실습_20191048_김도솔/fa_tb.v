`timescale 1ns / 1ps

module fa_tb;

reg xx, yy, cin;

wire s, cout;

fa u_fa (
.x (xx ),
.y (yy ),
.cin (cin ),
.s (s ),
.cout (cout )
);

initial begin
xx = 1'b0;
yy = 1'b0;
cin = 1'b0;
end

always xx = #100 ~xx;
always yy = #120 ~yy;
always cin = #140 ~cin;

initial begin
    #1000
    $finish;
end

endmodule