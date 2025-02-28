// Code your testbench here
// or browse Examples
module tb;
  reg a,b,c;
  wire sum,carry;
  //instantiation
  // conneted by postion
  full_adder dut(a,b,c,sum,carry);
  initial begin
    repeat(5)begin
      $dumpfile("dump.vcd");
      $dumpvars;
      {a,b,c}=$random;
       #100
      $display("$time=%0t,a=%b,b=%b,c=%b,output sum=%b,carry=%b",$time,a,b,c,sum,carry);
      end
     end
   endmodule
