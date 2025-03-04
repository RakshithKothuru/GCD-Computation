//MUX MODULE

module MUX(out,in1,in0,sel);
  input [15:0] in1,in0;
  input sel;
  output [15:0] out;
  assign out=sel?in0:in1;
endmodule
