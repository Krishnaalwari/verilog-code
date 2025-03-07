// Code your testbench here
// or browse Examples
module full__subractor__tb();
  reg a,b,c;
  wire borrow,diff;
  full_subractor dut (a,b,c,borrow,diff);
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars(1,full__subractor__tb);
    repeat (5)begin
      a=1'b0; b=1'b0; c=1'b0;
      a=1'b0; b=1'b0; c=1'b1;
      a=1'b0; b=1'b1; c=1'b0;
      a=1'b0; b=1'b1; c=1'b1;
      a=1'b1; b=1'b0; c=1'b0;
      a=1'b1; b=1'b0; c=1'b1;
      a=1'b1; b=1'b1; c=1'b0;
      a=1'b1; b=1'b1; c=1'b1;
      #100
      $display("$time=%0t,a=%b,b=%b,c=%b,output borrow=%b,diff=%b",$time,a,b,c,borrow,diff);
    end
  end
endmodule
