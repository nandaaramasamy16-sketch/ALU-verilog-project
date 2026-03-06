module decoder(a1, a0, d0, d1, d2, d3);

input a1, a0;
output d0, d1, d2, d3;

assign d0 = (~a1) & (~a0);
assign d1 = (~a1) & (a0);
assign d2 = (a1) & (~a0);
assign d3 = (a1) & (a0);

endmodule
