module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [100:0]c;
    assign c[0] = cin;
    
    genvar i;
    
    generate
        for(i=0;i<100;i=i+1)begin : bcd
            bcd_fadd dut (.a(a[4*i+3:4*i]),.b(b[4*i+3:4*i]),.cin(c[i]),.sum(sum[4*i+3:4*i]),.cout(c[i+1]));
        end
    endgenerate
    assign cout = c[100];
endmodule
