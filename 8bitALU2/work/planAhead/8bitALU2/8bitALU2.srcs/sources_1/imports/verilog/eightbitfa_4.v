/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module eightbitfa_4 (
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] sum,
    input alufn,
    output reg v,
    output reg z,
    output reg n
  );
  
  
  
  wire [1-1:0] M_fa1_sum;
  wire [1-1:0] M_fa1_carryout;
  reg [1-1:0] M_fa1_a;
  reg [1-1:0] M_fa1_b;
  reg [1-1:0] M_fa1_c;
  fa_7 fa1 (
    .a(M_fa1_a),
    .b(M_fa1_b),
    .c(M_fa1_c),
    .sum(M_fa1_sum),
    .carryout(M_fa1_carryout)
  );
  
  wire [1-1:0] M_fa2_sum;
  wire [1-1:0] M_fa2_carryout;
  reg [1-1:0] M_fa2_a;
  reg [1-1:0] M_fa2_b;
  reg [1-1:0] M_fa2_c;
  fa_7 fa2 (
    .a(M_fa2_a),
    .b(M_fa2_b),
    .c(M_fa2_c),
    .sum(M_fa2_sum),
    .carryout(M_fa2_carryout)
  );
  
  wire [1-1:0] M_fa3_sum;
  wire [1-1:0] M_fa3_carryout;
  reg [1-1:0] M_fa3_a;
  reg [1-1:0] M_fa3_b;
  reg [1-1:0] M_fa3_c;
  fa_7 fa3 (
    .a(M_fa3_a),
    .b(M_fa3_b),
    .c(M_fa3_c),
    .sum(M_fa3_sum),
    .carryout(M_fa3_carryout)
  );
  
  wire [1-1:0] M_fa4_sum;
  wire [1-1:0] M_fa4_carryout;
  reg [1-1:0] M_fa4_a;
  reg [1-1:0] M_fa4_b;
  reg [1-1:0] M_fa4_c;
  fa_7 fa4 (
    .a(M_fa4_a),
    .b(M_fa4_b),
    .c(M_fa4_c),
    .sum(M_fa4_sum),
    .carryout(M_fa4_carryout)
  );
  
  wire [1-1:0] M_fa5_sum;
  wire [1-1:0] M_fa5_carryout;
  reg [1-1:0] M_fa5_a;
  reg [1-1:0] M_fa5_b;
  reg [1-1:0] M_fa5_c;
  fa_7 fa5 (
    .a(M_fa5_a),
    .b(M_fa5_b),
    .c(M_fa5_c),
    .sum(M_fa5_sum),
    .carryout(M_fa5_carryout)
  );
  
  wire [1-1:0] M_fa6_sum;
  wire [1-1:0] M_fa6_carryout;
  reg [1-1:0] M_fa6_a;
  reg [1-1:0] M_fa6_b;
  reg [1-1:0] M_fa6_c;
  fa_7 fa6 (
    .a(M_fa6_a),
    .b(M_fa6_b),
    .c(M_fa6_c),
    .sum(M_fa6_sum),
    .carryout(M_fa6_carryout)
  );
  
  wire [1-1:0] M_fa7_sum;
  wire [1-1:0] M_fa7_carryout;
  reg [1-1:0] M_fa7_a;
  reg [1-1:0] M_fa7_b;
  reg [1-1:0] M_fa7_c;
  fa_7 fa7 (
    .a(M_fa7_a),
    .b(M_fa7_b),
    .c(M_fa7_c),
    .sum(M_fa7_sum),
    .carryout(M_fa7_carryout)
  );
  
  wire [1-1:0] M_fa8_sum;
  wire [1-1:0] M_fa8_carryout;
  reg [1-1:0] M_fa8_a;
  reg [1-1:0] M_fa8_b;
  reg [1-1:0] M_fa8_c;
  fa_7 fa8 (
    .a(M_fa8_a),
    .b(M_fa8_b),
    .c(M_fa8_c),
    .sum(M_fa8_sum),
    .carryout(M_fa8_carryout)
  );
  
  reg [7:0] x;
  
  integer i;
  
  always @* begin
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      x[(i)*1+0-:1] = b[(i)*1+0-:1] ^ alufn;
    end
    M_fa1_c = alufn;
    M_fa1_a = a[0+0-:1];
    M_fa1_b = x[0+0-:1];
    M_fa2_a = a[1+0-:1];
    M_fa2_b = x[1+0-:1];
    M_fa3_a = a[2+0-:1];
    M_fa3_b = x[2+0-:1];
    M_fa4_a = a[3+0-:1];
    M_fa4_b = x[3+0-:1];
    M_fa5_a = a[4+0-:1];
    M_fa5_b = x[4+0-:1];
    M_fa6_a = a[5+0-:1];
    M_fa6_b = x[5+0-:1];
    M_fa7_a = a[6+0-:1];
    M_fa7_b = x[6+0-:1];
    M_fa8_a = a[7+0-:1];
    M_fa8_b = x[7+0-:1];
    M_fa2_c = M_fa1_carryout;
    M_fa3_c = M_fa2_carryout;
    M_fa4_c = M_fa3_carryout;
    M_fa5_c = M_fa4_carryout;
    M_fa6_c = M_fa5_carryout;
    M_fa7_c = M_fa6_carryout;
    M_fa8_c = M_fa7_carryout;
    sum[0+0-:1] = M_fa1_sum;
    sum[1+0-:1] = M_fa2_sum;
    sum[2+0-:1] = M_fa3_sum;
    sum[3+0-:1] = M_fa4_sum;
    sum[4+0-:1] = M_fa5_sum;
    sum[5+0-:1] = M_fa6_sum;
    sum[6+0-:1] = M_fa7_sum;
    sum[7+0-:1] = M_fa8_sum;
    v = ((a[7+0-:1] & x[7+0-:1] & (~M_fa8_sum)) | ((~a[7+0-:1]) & (~x[7+0-:1]) & M_fa8_sum));
    n = M_fa8_sum;
    z = ~(M_fa1_sum | M_fa2_sum | M_fa3_sum | M_fa4_sum | M_fa5_sum | M_fa6_sum | M_fa7_sum | M_fa8_sum);
  end
endmodule
