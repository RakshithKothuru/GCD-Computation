//CONTROLLER MODULE

module controller(ldA,ldB,sel1,sel2,sel_in,done,start,gt,lt,eq,clk);
  output reg ldA,ldB,sel1,sel2,sel_in,done;
  input start,gt,lt,eq,clk;
  
  reg [2:0] ps,ns;
  parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
  
  always@(posedge clk) begin
     ps<=ns;    
  end
  
  always@(posedge clk) begin
    case(ps)
      s0:begin if(start) 
        ns=s1;
      end
      s1:ns=s2;
      s2:begin
        if(eq) ns=s5;
        else if(lt) ns=s3;
        else if(gt) ns=s4;
      end
      s3:begin
        if(eq) ns=s5;
        else if(lt) ns=s3;
        else if(gt) ns=s4;
      end
      s4:begin
        if(eq) ns=s5;
        else if(lt) ns=s3;
        else if(gt) ns=s4;
      end
      s5: ns=s5;
      default ns=s0;
    endcase
  end
  
  
  always@(*) begin
    case(ps)
      s0:begin ldA=1; ldB=0; sel_in=1; done=0; end
      s1:begin ldA=0; ldB=1; sel_in=1; done=0; end
      s2:begin
        if(eq) done=1;
        else if(lt) begin
          done=0; sel1=1; sel2=0; sel_in=0; ldA=0; ldB=1;
        end
        else if(gt) begin
          done=0; sel1=0; sel2=1; sel_in=0; ldA=1; ldB=0;
        end
      end
      s3:begin
        if(eq) done=1;
        else if(lt) begin
          done=0; sel1=1; sel2=0; sel_in=0; ldA=0; ldB=1;
        end
        else if(gt) begin
          done=0; sel1=0; sel2=1; sel_in=0; ldA=1; ldB=0;
        end
      end
      s4:begin
        if(eq) done=1;
        else if(lt) begin
          done=0; sel1=1; sel2=0; sel_in=0; ldA=0; ldB=1;
        end
        else if(gt) begin
          done=0; sel1=0; sel2=1; sel_in=0; ldA=1; ldB=0;
        end
      end
      s5:begin done=1; sel1=0; sel2=0; ldA=0; ldB=0; end 
      default begin ldA=0; ldB=0; end
    endcase
  end
                   
endmodule
