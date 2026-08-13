module top_module (
    input clk,
    input slowena,
    input reset,
    output reg[3:0] q);
    
    always@(posedge clk)begin
        if(reset)begin
            q <= 4'b0;
        end
        else begin
             if (slowena && q == 9)begin
                q <= 4'b0;
            end
            else if(slowena)
               q <= q +1;
          
            else
            q <= q;
        end
    end
endmodule
