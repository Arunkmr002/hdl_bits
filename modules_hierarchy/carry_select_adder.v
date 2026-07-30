module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin,c1,x,y;
    wire [15:0]sum_low,sum_high0,sum_high1;
    add16 dut1 (.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum_low),.cout(c1));
    add16 dut2 (.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(sum_high0),.cout());
    add16 dut3 (.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(sum_high1),.cout());
    
    assign sum = {c1 ? sum_high1 : sum_high0,sum_low};
             
endmodule
