`timescale 1ns / 1ps

module rsff1_tb;

reg clk, r, s;

wire q, _q;

rsff1 u_rsff1 (
.clk (clk ),
.r (r ),
.s (s ),
.q (q ),
._q (_q )
);

initial begin
clk = 1'b0;
r = 1'b0;
s = 1'b0;
end

always clk = #50 ~clk;
always r = #200 ~r;
always s = #100 ~s;

initial begin
    #1000
    $finish;
end

endmodule