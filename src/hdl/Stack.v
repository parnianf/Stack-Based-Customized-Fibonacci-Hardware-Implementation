`timescale 1ns/1ns
module Stack(input clk, rst,  push, pop, top, input [63:0] d_in, output is_empty, output reg [63:0] d_out); 
    reg [8:0] ptr;
    reg [63:0] stack [0:512];
    
    always @(posedge clk, posedge rst) begin
        if (rst)
            ptr <= 8'd0;
        else if (push)begin
          stack[ptr] <= d_in;
            ptr <= ptr + 1;
        end
        else if (pop)begin
          d_out <= stack[ptr - 1];
            ptr <= ptr - 1;
        end
        else if(top)
          d_out <= stack[ptr - 1];
    end
    assign is_empty = ptr == 8'd0 ? 1'b1 : 1'b0;
endmodule