module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output reg out);
    
    reg [3:0]q;
    always@(posedge clk)begin
        if(!resetn)begin
            q <= 4'b0;
            out <= 1'b0;
        end
        else begin
        q[3] <= in;
        q[2] <= q[3];
        q[1] <= q[2];
        out  <= q[1];
       
        end
    end

endmodule
