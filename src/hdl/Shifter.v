`timescale 1ns/1ns

module Shifter1bit(input[63:0] in, output[63:0] out);
  assign out = {1'b0, in[63:1]};
endmodule
