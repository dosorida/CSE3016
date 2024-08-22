`timescale 1ns / 1ps

module cmp_tb;

reg aa, bb;

wire c, d, e, f;

cmp u_cmp (
.a (aa ),
.b (bb ),
.c (c ),
.d (d ),
.e (e ),
.f (f )
);

initial begin
aa = 1'b0;
bb = 1'b0;
end

always aa = #100 ~aa;
always bb = #150 ~bb;

initial begin
    #1000
    $finish;
end

endmodule