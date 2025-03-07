module full_subractor(a,b,c,borrow,diff);
  input a,b,c;
  output reg diff,borrow;
  assign borrow=~a&b+c*(~a^~b);
  assign diff=a^b^c;
endmodule
