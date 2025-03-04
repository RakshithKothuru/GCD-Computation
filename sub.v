//SUBTRACTOR module

module sub(subOut,in1,in2);
  input [15:0] in1,in2;
  output [15:0] subOut;
  
  assign subOut=in1-in2;
endmodule
