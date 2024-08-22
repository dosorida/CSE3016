`timescale 1ns / 1ps

module hs_tb;

reg xx, yy;

wire D, b;

hs u_hs (
.x (xx ),
.y (yy ),
.D (D ),
.b (b )
);

initial begin
xx = 1'b0;
yy = 1'b0;
end

always xx = #100 ~xx;
always yy = #150 ~yy;

initial begin
    #1000
    $finish;
end

endmodule