module add_sub(
    input M,a0,a1,a2,a3,b0,b1,b2,b3,
    output carry,s0,s1,s2,s3
);
wire t0,t1,t2,t3;
wire c1,c2,c3;

assign t0= M^b0;
assign t1= M^b1;
assign t2= M^b2;
assign t3= M^b3;

assign {c1, s0} = a0 + t0 + M;
assign {c2, s1} = a1 + t1 + c1;
assign {c3, s2} = a2 + t2 + c2;
assign {carry, s3} = a3 + t3 + c3;

endmodule
