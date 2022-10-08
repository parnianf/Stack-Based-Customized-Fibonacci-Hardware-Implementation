`timescale 1ns/1ns

module Controller(input clk, rst, is_empty, gt1, gt2, gt3, reg1_sign, reg2_sign, output reg push, pop, top, ld1, 
                  ld2, ld3, sel_reg1, sel_reg2, sel, sel_res, ld_res, done, output reg[2:0] sel_stack);
                  
 reg [4:0] ns, ps;
 parameter [4:0] q0 = 0, q1 = 1, q2 = 2, q3 = 3, q4 = 4, q5 = 5, q6 = 6, q7 = 7, q8 = 8,
                 q9 = 9, q10 = 10, q11 = 11, q12 = 12, q13 = 13, q14 = 14, q15 = 15, q16 = 16,
                 q17 = 17, q18 = 18, q19  = 19;
       
  always @(ps) begin
    {push, pop, top, ld1, ld2, ld3, sel_reg1, sel_reg2, sel, sel_res, ld_res, done, sel_stack} = 15'd0;
    sel = gt2;
    case(ps)
      q0: begin ns = gt3==1 ? q1 : q9; {sel_res, ld_res, push} = 3'b111; end
      q1: begin ns = q2; pop=1'b1; end
      q2: begin ns = is_empty ? q11: q3; ld1=1'b1; end
      q3: begin ns = q15; top = 1'b1; end
      q4: begin ns = q5; pop = 1'b1; end
      q5: begin ns = q6; pop = 1'b1; end
      q6: begin ns = q7; ld3 = 1'b1; end 
      q7: begin ns = q19; sel = gt2?1:0; end
      q8: begin ns = q17; pop = 1'b1; sel_stack = 3'd3; end
      q9: begin ns = q9; done = 1'b1; end 
      q10: begin ns = q18; pop = 1'b1; end
      q11: begin ns = q12; sel_stack = 3'd1; push = 1'b1; end
      q12: begin sel_stack = 3'd4; push = 1'b1;        
              if ({reg1_sign, gt1} == 2'b01) ns = q14;
              else if(reg2_sign == 1'b0) ns = q13;
           end
      q13: begin ns = q1; sel_stack = 3'd2; {push, sel_reg2} = 2'b11; end
      q14: begin ns = q1; sel_stack = 3'd1; {push, sel_reg1} = 2'b11; end    
      q15: begin ns = q16; ld2=1'b1; end
      q16: begin 
                if({reg1_sign, reg2_sign} == 2'b11) ns = q4;
                else if ({reg1_sign, gt1} == 2'b00) ns = q10;
                else if ({reg1_sign, gt1} == 2'b01 || reg2_sign == 1'b0) ns = q11;
           end
      q17: begin ns=q1; sel_stack = 3'd3; push = 1'b1; end
      q18: begin ns = q1; sel_stack = 3'd5; push = 1'b1; end              
      q19: begin ns = is_empty ? q9 : q8; ld_res = 1'b1; end
    endcase
  end       
                    
  always@(posedge clk, posedge rst)begin
    if(rst)
      ps <= q0;
    else
      ps <= ns;
  end
                  
                  
endmodule
