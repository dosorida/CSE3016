`timescale 1ns / 1ps

module fs_tb;

reg xx, yy, bin;

wire D, bout;

fs u_fs (
.x (xx ),
.y (yy ),
.bin (bin ),
.D (D ),
.bout (bout )
);

initial begin
xx = 1'b0;
yy = 1'b0;
bin = 1'b0;
end

always xx = #100 ~xx;
always yy = #120 ~yy;
always bin = #140 ~bin;

initial begin
    #1000
    $finish;
end

endmodule