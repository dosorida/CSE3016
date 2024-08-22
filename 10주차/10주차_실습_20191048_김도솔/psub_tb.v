`timescale 1ns / 1ps

module psub_tb;

reg [3:0] a, b;
reg bin;
wire [3:0] d;
wire bout;

psub u_psub(
.a(a ),
.b(b ),
.bin(bin ),
.d(d ),
.bout(bout )
);

initial begin
a = 4'D0;
b = 4'D0;
bin = 1'b0;
end

always@(a or b or bin)begin
a <= #10 a+4'D1;
b <= #20 a-4'D1;
bin <= #30 ~bin;
end

endmodule
