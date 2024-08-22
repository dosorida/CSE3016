`timescale 1ns / 1ps

module conv(
    input ain, bin, cin, din,
    output aout, bout, cout, dout
    );

    assign aout = (~ain&bin&din)|(~ain&bin&cin)|(ain&~bin&~cin);
    assign bout = (~ain&bin&cin)|(~ain&bin&~din)|(ain&~bin&~cin);
    assign cout = (~ain&bin&~cin&din)|(~ain&~bin&cin)|(ain&~bin&~cin);
    assign dout = (~ain&din)|(~bin&~cin&din);

endmodule