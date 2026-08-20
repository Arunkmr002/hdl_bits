module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output reg[4:0] q
); 
    reg d1,d2,d3,d4,d5;
    assign d1= q[0] ^ 1'b0;
    assign d2= q[4];
    assign d3 = q[3] ^ q[0];
    assign d4 = q[2];
    assign d5 = q[1];
    
    always@(posedge clk)begin
        if(reset) 
            q <= 5'h1;
         else begin
             q[4] <= d1;
             q[3] <= q[4];
             q[2] <= d3;
             q[1] <= q[2];
             q[0] <= q[1];
         end
    end
endmodule
