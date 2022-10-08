`timescale 1ns/1ns

module Datapath(input clk, rst, push, pop, top, ld1, ld2, ld3, sel_reg1, sel_reg2, sel, sel_res, ld_res, input[2:0] sel_stack, input[63:0] N,
                output is_empty, gt1, gt2, gt3, reg1_sign, reg2_sign, output[63:0] res);
  wire[63:0] stack_in, stack_out, reg1_out, reg2_out, reg3_out, sub1_out, sub2_out, mux1_out, mux2_out, sub3_out;
  wire[63:0] sub4_out, mux3_out, mux4_out, mult1_out, mult2_out, adder_out, mux5_out, shifter_out;
  Stack stack(clk, rst, push, pop, top, stack_in, is_empty, stack_out);
  Register reg1(clk, ld1, stack_out, reg1_out);
  Register reg2(clk, ld2, stack_out, reg2_out);
  Register reg3(clk, ld3, stack_out, reg3_out);
  ALU sub1(reg1_out, 64'd1, 2'd1, sub1_out);
  ALU sub2(reg2_out, 64'd2, 2'd1, sub2_out);
  Multiplexer2to1 mux1(reg1_out, sub1_out, sel_reg1, mux1_out);
  Multiplexer2to1 mux2(reg2_out, sub2_out, sel_reg2, mux2_out);
  Comparator cmp1(reg1_out, 64'd1, gt1);
  ALU sub3({1'b0, reg3_out[62:0]}, 64'd1, 2'd1, sub3_out);
  ALU sub4({1'b0, reg3_out[62:0]}, 64'd2, 2'd1, sub4_out);
  Multiplexer2to1 mux3({1'b0, reg2_out[62:0]}, {1'b0, reg1_out[62:0]}, sel, mux3_out);
  Multiplexer2to1 mux4({1'b0, reg1_out[62:0]}, {1'b0, reg2_out[62:0]}, sel, mux4_out);
  ALU mult1(sub3_out, mux4_out, 2'd2, mult1_out);
  ALU mult2(sub4_out, mux3_out, 2'd2, mult2_out);
  ALU adder(mult1_out, mult2_out, 2'd0, adder_out);
  Multiplexer2to1 mux5(adder_out, 64'd1, sel_res, mux5_out);
  Register reg_res(clk, ld_res, mux5_out, res);
  Multiplexer6to1 stack_mux(N, mux1_out, mux2_out, {1'b1,res[62:0]}, {1'b1, 63'd0}, {1'b1, 63'd1}, sel_stack, stack_in);
  Comparator cmp3(N , 64'd1, gt3);
  Shifter1bit sh1bit(N, shifter_out);
  Comparator cmp2(reg3_out, shifter_out, gt2);
  assign reg1_sign = reg1_out[63];
  assign reg2_sign = reg2_out[63];
endmodule















