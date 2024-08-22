`timescale 1ns / 1ps

module pg_tb;

reg aa, bb, cc, dd;

wire p;

pg u_pg (
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.p (p )
);

initial begin
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
dd = 1'b0;
end

always aa = #80 ~aa;
always bb = #40 ~bb;
always cc = #20 ~cc;
always dd = #10 ~dd;

initial begin
    #1000
    $finish;
end

endmodule