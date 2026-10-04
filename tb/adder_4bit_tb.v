// Testbench: directed stimulus for the 4-bit parallel adder
module patest;
  reg  [3:0] a, b;
  reg        cin = 0;
  wire       cout;
  wire [3:0] s;

  pa p1 (a, b, cin, s, cout);

  initial begin
    a = 4'd5; b = 4'd4;
    #10 a = 4'd1; b = 4'd2;
    #10 a = 4'd9; b = 4'd3;
    #10 a = 4'd9; b = 4'd7;
    #10;
  end
endmodule
