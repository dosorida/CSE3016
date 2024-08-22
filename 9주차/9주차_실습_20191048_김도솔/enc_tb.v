`timescale 1ns / 1ps

module enc_tb;

reg aa, bb, cc, dd;

wire e0, e1;

enc u_enc (
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.e0 (e0 ),
.e1 (e1 )
);

initial begin
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
dd = 1'b0;
end

always aa = #400 ~aa;
always bb = #200 ~bb;
always cc = #100 ~cc;
always dd = #50 ~dd;

initial begin
    #1000
    $finish;
end

endmodule