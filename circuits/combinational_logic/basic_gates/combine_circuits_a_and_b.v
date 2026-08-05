module top_module (input x, input y, output z);
wire a,b,c,d,e,f;
  
   assign a = ((x ^ y) & x );
   assign b = ~( x ^ y);
   assign c = ((x ^ y) & x );
   assign d = ~( x ^ y);
   assign e = a | b;
   assign f = c & d;
   assign z = e ^ f;
    
endmodule
