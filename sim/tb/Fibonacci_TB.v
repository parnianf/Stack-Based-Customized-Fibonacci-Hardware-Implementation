`timescale 1ns/1ns

module Fibonacci_TB();
  
  reg clk = 1'b0, rst = 1'b1;
  reg[4:0] N = 5'd5;
  wire done;
  wire[63:0] result;
  always #10 clk = ~clk;
  Fibonacci CUT(clk, rst, N, done, result);
  initial begin
    #11 rst = 1'b0;
    #50000 rst=1'b1; N = 5'd10;
    #101 rst=1'b0;
    #500000 $stop;
  end 
endmodule
