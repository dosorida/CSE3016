`timescale 1ns / 1ps

module seq_mealy(
input clk, rst, in,
output reg out
);

reg[3:0] seq;
reg[3:0] x = 4'b1101;

initial out = 1'b0;

always @(posedge clk) begin
    if(rst) begin
        seq[3] <= 1'b0;
        seq[2] <= 1'b0;
        seq[1] <= 1'b0;
        seq[0] <= 1'b0;
        out <= 1'b0;
    end
    else begin
        seq[3] = seq[2];
        seq[2] = seq[1];
        seq[1] = seq[0];
        seq[0] = in;
        if(seq == x) out = 1'b1;
        else out = 1'b0;
    end 
end

endmodule
