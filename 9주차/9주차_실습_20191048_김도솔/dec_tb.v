`timescale 1ns / 1ps

module dec_tb;

reg aa, bb;

wire d0, d1, d2, d3;

dec u_dec (
.a (aa ),
.b (bb ),
.d0 (d0 ),
.d1 (d1 ),
.d2 (d2 ),
.d3 (d3 )
);

initial begin
aa = 1'b0;
bb = 1'b0;
end

always aa = #100 ~aa;
always bb = #50 ~bb;

initial begin
    #1000
    $finish;
end

endmodule