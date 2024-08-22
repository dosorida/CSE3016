`timescale 1ns / 1ps

module dmux(
    input a, b, F,
    output A, B, C, D
    );

    assign A = F&~a&~b;
    assign B = F&a&~b;
    assign C = F&~a&b;
    assign D = F&a&b;
    
endmodule

module dec416(
    input a0, a1, a2, a3,
    output y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15
    );
    
    wire en0, en1, en2, en3;
    dmux dm(a1, a0, 1, en0, en1, en2, en3);
    dmux dm0(a3, a2, en0, y0, y1, y2, y3);
    dmux dm1(a3, a2, en1, y4, y5, y6, y7);
    dmux dm2(a3, a2, en2, y8, y9, y10, y11);
    dmux dm3(a3, a2, en3, y12, y13, y14, y15);

endmodule