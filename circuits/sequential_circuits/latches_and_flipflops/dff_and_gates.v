module top_module (
    input clk,
    input x,
    output reg z
); 
wire w1,w2,w3,w4;
reg q0,q1,q2;
    
    assign w1 = x ^ q0;
    assign w2 = x & ~q1;
    assign w3 = x | ~q2;
   
    always@(posedge clk) begin
        q0 <= w1;
        q1 <= w2;
        q2 <= w3;
    end
    assign z = ~(q0 |q1 |q2);
endmodule
