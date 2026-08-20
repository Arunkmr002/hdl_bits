module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); 
    MUXDFF ff1(.clk(KEY[0]),.E(KEY[1]),.L(KEY[2]),.R(SW[3]),.w(KEY[3]),.Q(LEDR[3]));
    MUXDFF ff2(.clk(KEY[0]),.E(KEY[1]),.L(KEY[2]),.R(SW[2]),.w(LEDR[3]),.Q(LEDR[2]));
    MUXDFF ff3(.clk(KEY[0]),.E(KEY[1]),.L(KEY[2]),.R(SW[1]),.w(LEDR[2]),.Q(LEDR[1]));
    MUXDFF ff4(.clk(KEY[0]),.E(KEY[1]),.L(KEY[2]),.R(SW[0]),.w(LEDR[1]),.Q(LEDR[0]));        
endmodule

module MUXDFF (
     input clk,
     input R,E,L,w,
    output reg Q
);
    always@(posedge clk)begin
        if(L)
            Q <= R;
        else if(E)
            Q <= w;
        else
            Q <= Q;
    end

endmodule
