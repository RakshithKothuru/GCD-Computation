// COMPARATOR MODULE

module comp(lt,gt,eq,data1,data2);
  input [15:0] data1,data2;
  output lt,eq,gt;
  
  assign lt=data1<data2;
  assign eq=data1==data2;
  assign gt=data1>data2;
endmodule
