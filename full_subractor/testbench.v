// Code your testbench here
// or browse Examples
module full__subractor__tb();
  reg a,b,c;
  wire borrow,diff;
  full_subractor dut (a,b,c,borrow,diff);
  initial begin
    repeat (10) begin
      $dumpfile ("dump.vcd");
      $dumpvars;
      {a,b,c}=$random;
      #100
      $display("$time=%0t,a=%b,b=%b,c=%b,output borrow=%b,diff=%b",$time,a,b,c,borrow,diff);
    end
  end
endmodule
