`timescale 1ns / 1ps

module seg(
    input a, b, c, d,
    output A, B, C, D, E, F, G, DP, W
    );

    assign A = (~b&~d)|(b&c)|(a&~d)|(~a&c)|(a&~b&~c)|(~a&b&d);
    assign B = (~b&~d)|(~b&~c)|(~a&c&d)|(a&~c&d)|(~a&~c&~d);
    assign C = (a&~b)|(~c&d)|(~a&b)|(~a&d)|(~b&~c);
    assign D = (b&c&~d)|(a&b&~c)|(~b&~c&~d)|(b&~c&d)|(~a&~b&c)|(~b&c&d);
    assign E = (~b&~d)|(c&~d)|(a&b)|(a&c);
    assign F = (a&~b)|(b&~d)|(a&c)|(~c&~d)|(~a&b&~c);
    assign G = (c&~d)|(a&~b)|(~b&c)|(a&d)|(~a&b&~c);
    assign DP = 1;
    assign W = A|B|C|D|E|F|G|DP;
    
endmodule