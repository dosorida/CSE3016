`timescale 1ns / 1ps

module dmux_tb;

reg aa, bb, F;

wire A, B, C, D;

dmux u_dmux (
.a (aa ),
.b (bb ),
.F (F ),
.A (A ),
.B (B ),
.C (C ),
.D (D )
);

initial begin
aa = 1'b0;
bb = 1'b0;
F = 1'b0;
end

always aa = #200 ~aa;
always bb = #100 ~bb;
always F = #50 ~F;

initial begin
    #1000
    $finish;
end

endmodule