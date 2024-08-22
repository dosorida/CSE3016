`timescale 1ns / 1ps

module pc_tb;

reg aa, bb, cc, dd, pp;

wire e;

pc u_pc (
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.p (pp ),
.e (e )
);

initial begin
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
dd = 1'b0;
pp = 1'b0;
end

always aa = #160 ~aa;
always bb = #80 ~bb;
always cc = #40 ~cc;
always dd = #20 ~dd;
always pp = #10 ~pp;

initial begin
    #1000
    $finish;
end

endmodule