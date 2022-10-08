`timescale 1ns/1ns

module Multiplexer2to1(input [63:0] in0, in1, input sel, output [63:0] out);
  assign out = sel ? in1 : in0;
endmodule

module Multiplexer6to1(input [63:0] in0, in1, in2, in3, in4, in5, input [2:0] sel, output reg [63:0] out);
  always @(in0, in1, in2, in3, in4, in5, sel)begin
    case(sel)
      3'b000: out = in0;
      3'b001: out = in1;
      3'b010: out = in2;
      3'b011: out = in3;
      3'b100: out = in4;
      3'b101: out = in5;
    endcase
  end 
endmodule
