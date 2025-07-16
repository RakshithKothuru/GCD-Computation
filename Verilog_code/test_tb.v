module test;
  reg [15:0] data_in;
    reg clk, start;
    wire ldA, ldB, sel1, sel2, sel_in, done, gt, eq, lt;
    wire [15:0] result;

    //reg [15:0] A,B;
    datapath DP (lt, gt, eq, sel1, sel2, sel_in, ldA, ldB, data_in, clk, result, done);
    controller CTR (ldA, ldB, sel1, sel2, sel_in, done, start,  gt,lt, eq, clk);

    initial
    begin
        clk=1'b0;
        start=1'b0;
        #3 start =1'b1;
        #400 $finish;
    end

    always #5 clk = ~clk;

    initial begin
        #22 data_in =8'd56;
        #10 data_in=8'd98;
    end

    initial begin
        $monitor ($time, " %d %d %d", DP.aOut, DP.result, done);
        $dumpfile ("gcd.vcd") ;
      $dumpvars (0);
    end
  
endmodule
