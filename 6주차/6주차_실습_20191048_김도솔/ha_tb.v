`timescale 1ns / 1ps

module ha_tb;

reg xx, yy;

wire s, c;

ha u_ha (
.x (xx ),
.y (yy ),
.s (s ),
.c (c )
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