`timescale 1ns / 1ps

module conv_tb;

reg ain, bin, cin, din;

wire aout, bout, cout, dout;

conv u_conv (
.ain (ain ),
.bin (bin ),
.cin (cin ),
.din (din ),
.aout (aout ),
.bout (bout ),
.cout (cout ),
.dout (dout )
);

initial begin
ain = 1'b0;
bin = 1'b0;
cin = 1'b0;
din = 1'b0;
end

always ain = #20 ~ain;
always bin = #30 ~bin;
always cin = #50 ~cin;
always din = #70 ~din;

initial begin
    #1000
    $finish;
end

endmodule