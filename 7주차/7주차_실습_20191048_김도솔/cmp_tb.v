`timescale 1ns / 1ps

module cmp_tb;

reg a1, a2, b1, b2;

wire f1, f2, f3;

cmp u_cmp (
.a1 (a1 ),
.a2 (a2 ),
.b1 (b1 ),
.b2 (b2 ),
.f1 (f1 ),
.f2 (f2 ),
.f3 (f3 )
);

initial begin
a1 = 1'b0;
a2 = 1'b0;
b1 = 1'b0;
b2 = 1'b0;
end

always a1 = #80 ~a1;
always a2 = #40 ~a2;
always b1 = #20 ~b1;
always b2 = #10 ~b2;

initial begin
    #1000
    $finish;
end

endmodule