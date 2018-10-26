module adder4
(
	input [3:0]a, 
	input [3:0]b,
	output [3:0]sum, 
	output c_out
);

wire c0, c1, c2;

full_adder my0_adder1(.a (a[0]), .b (b[0]), .c_in (1'b0), .sum (sum[0]) , .c_out (c0) );
full_adder my1_adder1(.a (a[1]), .b (b[1]), .c_in (c0),  .sum (sum[1]) , .c_out (c1));
full_adder my2_adder1(.a (a[2]), .b (b[2]), .c_in (c1), .sum (sum[2]) , .c_out (c2));
full_adder my3_adder1(.a (a[3]), .b (b[3]), .c_in (c2), .sum (sum[3]) , .c_out (c_out));

endmodule