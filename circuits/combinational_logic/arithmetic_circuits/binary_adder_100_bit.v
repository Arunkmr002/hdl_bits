module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [99:0] c;
    
    assign {cout,sum} = a + b + cin;
  
endmodule
