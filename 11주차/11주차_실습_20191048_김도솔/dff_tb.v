`timescale 1ns / 1ps

module dff_tb;

reg clk, d; 

wire q, _q;

dff u_dff (
.clk (clk ),
.d (d ),
.q (q ),
._q (_q )
);

initial begin
clk = 1'b0;
d = 1'b0;
end

always clk = #50 ~clk;
always d = #100 ~d;

initial begin
    #1000
    $finish;
end

endmodule