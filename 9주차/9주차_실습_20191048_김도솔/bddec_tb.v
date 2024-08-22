`timescale 1ns / 1ps

module bddec_tb;

reg a0, a1, a2, a3;

wire d0, d1, d2, d3, d4, d5, d6, d7, d8, d9;

bddec u_bddec (
.a0 (a0 ),
.a1 (a1 ),
.a2 (a2 ),
.a3 (a3 ),
.d0 (d0 ),
.d1 (d1 ),
.d2 (d2 ),
.d3 (d3 ),
.d4 (d4 ),
.d5 (d5 ),
.d6 (d6 ),
.d7 (d7 ),
.d8 (d8 ),
.d9 (d9 )
);

initial begin
a0 = 1'b0;
a1 = 1'b0;
a2 = 1'b0;
a3 = 1'b0;
end

always a0 = #400 ~a0;
always a1 = #200 ~a1;
always a2 = #100 ~a2;
always a3 = #50 ~a3;

initial begin
    #1000
    $finish;
end

endmodule