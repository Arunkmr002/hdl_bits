module top_module (
    input in1,
    input in2,
    output out);
    wire x;
    assign x=~in2;
    assign out = (in1 & x);
endmodule
