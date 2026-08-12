module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    
    wire w1;
    assign w1 = ((j&(~Q)) | (~k & Q));
    always@(posedge clk)begin
        Q <= w1;
    end
endmodule
