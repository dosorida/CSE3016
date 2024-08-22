`timescale 1ns / 1ps

module dm2_a_tb;

reg aa, bb, cc;

wire d;

dm2_a u_dm2_a (
.a (aa ),
.b (bb ),
.c (cc ),
.d (d )
);

initial begin
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
end

always aa = #100 ~aa;
always bb = #150 ~bb;
always cc = #200 ~cc;

initial begin
    #1000
    $finish;
end

endmodule