module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
     wire cin1,c1;
    assign cin1=1'b0;

    
    add16 dut1(.a(a[15:0]),.b(b[15:0]),.cin(cin1),.sum(sum[15:0]),.cout(c1));
   
    add16 dut2(.a(a[31:16]),.b(b[31:16]),.cin(c1),.sum(sum[31:16]),.cout());
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
   
    assign {cout,sum} =a+b+cin;
                                           
endmodule
