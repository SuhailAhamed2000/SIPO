// Code your testbench here
// or browse Examples
module sipotb();
  reg clk,rst;
  reg in;
  wire q;
  sipo m(clk,rst,in,q);
  initial
    begin
      $dumpfile("sipotb.vcd");
      $dumpvars(0,sipotb);
    end
  initial
    begin
      clk=1;
      forever #5 clk=~clk;
    end
  initial
    begin
      #10 rst=1;
      #10 rst=0;in=1;
       #10 in=0;
      #10 in=1;
      #10 in=0;
      #200 $finish;
    end
endmodule
      
      
