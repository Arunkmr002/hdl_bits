module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    wire w1;
    assign w1 = L ? r_in : q_in;
    always@(posedge clk)begin
     Q <= w1;
    end
endmodule
        
module mux_dff(
     input clk,
     input  L0,L1,L2,
     input r_in0,r_in1,r_in2,
     input q_in0,q_in1,q_in2,
    output Q0,Q1,Q2);
    wire w2;
    assign w2 = Q2 ^ Q2;
    
    top_module dut0(.clk(clk),.L0(L0),.r_in0(r_in0),.q_in0(q_in0),.Q0(Q0));
    top_module dut1(.clk(clk),.L1(L1),.r_in1(r_in1),.q_in1(q_in1),.Q1(Q1));
    top_module dut2(.clk(clk),.L2(L2),.r_in2(r_in2),.q_in2(w2),.Q2(Q2));
endmodule
