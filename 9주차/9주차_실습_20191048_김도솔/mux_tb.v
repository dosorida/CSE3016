`timescale 1ns / 1ps

module mux_tb;

reg aa, bb, A, B, C, D;

wire e;

mux u_mux (
.a (aa ),
.b (bb ),
.A (A ),
.B (B ),
.C (C ),
.D (D ),
.e (e )
);

initial begin
aa = 1'b0;
bb = 1'b0;
A = 1'b0;
B = 1'b0;
C = 1'b0;
D = 1'b0;
end

always aa = #320 ~aa;
always bb = #160 ~bb;
always A = #80 ~A;
always B = #40 ~B;
always C = #20 ~C;
always D = #10 ~D;

initial begin
    #1000
    $finish;
end

endmodule