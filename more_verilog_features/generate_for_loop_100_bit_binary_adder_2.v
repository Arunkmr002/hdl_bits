module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
  
    genvar i;
    wire [100:0] c;
    assign c[0]= cin;   
generate
    for(i=0;i<100;i=i+1) begin  : add
            full_adder dut(.a(a[i]),.b(b[i]),.cin(c[i]),.sum(sum[i]),.cout(c[i+1]));
        end
endgenerate
 
    assign cout = c[100:1];
endmodule
module full_adder (
    input a,b,cin,
    output cout,sum);
    assign sum = a ^ b^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin );
endmodule
