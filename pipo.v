//PIPO DFF MODULE

module pipo(data_out,data_in,load,clk); 
  input [15:0] data_in;
  input clk,load;
  output reg [15:0] data_out;
  
  always@(posedge clk) begin
    if(load) data_out<=data_in;
    else data_out <= data_out;
  end
endmodule
