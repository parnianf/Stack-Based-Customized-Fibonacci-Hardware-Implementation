`timescale 1ns/1ns

module ALU(A, B, ALUControl, ALUResult);
  input [63:0] A, B;
  input [1:0] ALUControl;
  output [63:0] ALUResult;
  reg [63:0] ALUResult;
  always @(ALUControl, A, B)begin
    case(ALUControl)
        2'b00 : ALUResult = A + B;
        2'b01 : ALUResult = A - B;
        2'b10 : ALUResult = A * B;
    endcase
  end
endmodule
