`timescale 1ns/1ns

module Fibonacci(input clk, rst, input[4:0] N, output done, output[63:0] result);
  
  wire push, pop, top, ld1, ld2, ld3, sel_reg1, sel_reg2, sel, sel_res, ld_res, is_empty, gt1, gt2, gt3, reg1_sign, reg2_sign;
  wire [2:0] sel_stack;
  
  Datapath dp(clk, rst, push, pop, top, ld1, ld2, ld3, sel_reg1, sel_reg2, sel, sel_res, ld_res, sel_stack, {59'd0, N},
                is_empty, gt1, gt2, gt3, reg1_sign, reg2_sign, result);
  Controller cu(clk, rst, is_empty, gt1, gt2, gt3, reg1_sign, reg2_sign, push, pop, top, ld1, 
                  ld2, ld3, sel_reg1, sel_reg2, sel, sel_res, ld_res, done, sel_stack);
  
endmodule
