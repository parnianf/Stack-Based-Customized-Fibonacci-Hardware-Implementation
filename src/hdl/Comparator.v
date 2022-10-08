`timescale 1ns/1ns

module Comparator(input[63:0] in0, in1, output gt);
  assign gt = in0 > in1;
endmodule
