// Full Adder
module fa(a, b, cin, sum, cout);
  input a, b, cin;
  output sum;
  output cout;

  assign sum  = (a ^ b) ^ cin;
  assign cout = (a & b) | (b & cin) | (cin & a);
endmodule

// 4-bit Parallel (Ripple-Carry) Adder
module pa(a, b, cin, s, cout);
  input  [3:0] a, b;
  input        cin;
  output [3:0] s;
  output       cout;
  wire   [2:0] c;

  fa f1 (a[0], b[0], cin,  s[0], c[0]);
  fa f2 (a[1], b[1], c[0], s[1], c[1]);
  fa f3 (a[2], b[2], c[1], s[2], c[2]);
  fa f4 (a[3], b[3], c[2], s[3], cout);
endmodule
