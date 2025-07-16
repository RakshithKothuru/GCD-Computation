// DATAPATH MODULE

// DATAPATH MODULE

module datapath(lt,gt,eq,sel1,sel2,sel_in,ldA,ldB,data_in,clk,result,done);
  input sel1,sel2,sel_in,ldA,ldB,clk,done;
  output lt,gt,eq;
  input [15:0] data_in;
  wire [15:0] aOut,bOut,x,y,subOut,bus;
  output reg [15:0] result;
  
  pipo A(.data_out(aOut),.data_in(bus),.load(ldA),.clk(clk));
  pipo B(.data_out(bOut),.data_in(bus),.load(ldB),.clk(clk));
  
  comp u1(.lt(lt),.gt(gt),.eq(eq),.data1(aOut),.data2(bOut));
  
  MUX Aone(.out(x),.in1(aOut),.in0(bOut),.sel(sel1));
  MUX Btwo(.out(y),.in1(aOut),.in0(bOut),.sel(sel2));
  
  MUX load(.out(bus),.in1(subOut),.in0(data_in),.sel(sel_in));
  
  sub u2(.subOut(subOut),.in1(x),.in2(y));

  always@(*) begin
       if(done)
       result=aOut;
       end
  
endmodule
