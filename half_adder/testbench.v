// Code your testbench here
// or browse Examples
module tb;
  reg a,b;
  wire sum,carry;
  //instantiation
  // conneted by postion
  half_adder dut(a,b,sum,carry);
  initial begin
    repeat(5)begin
      $dumpfile("dump.vcd");
      $dumpvars;
      {a,b}=$random;
       #100
      $display("$time=%0t,a=%b,b=%b,output sum=%b,carry=%b",$time,a,b,sum,carry);
      end
     end
   endmodule
