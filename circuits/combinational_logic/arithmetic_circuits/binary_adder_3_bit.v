module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    fadd dut [2:0] (.a(a[2:0]),.b(b[2:0]),.cin({cout[1:0],cin}),.sum(sum[2:0]),.cout(cout));
    assign cout = cout[2:0];
endmodule
module fadd( 
    input a, b, cin,
    output cout, sum );
    assign sum = a ^ b ^ cin;
    assign cout = ((a & b) | (b & cin) |(a & cin));
endmodule
