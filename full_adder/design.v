// Code your design here
module full_adder(a,b,c,sum,carry);
  input a,b,c;
  output reg sum,carry;
  assign sum=a^b^c;
  assign carry=a&b|c*(a^b);
endmodule
