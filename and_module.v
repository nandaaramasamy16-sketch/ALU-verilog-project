module and_module(a0,a1,a2,a3,b0,b1,b2,b3,out0,out1,out2,out3);

input a0,a1,a2,a3,b0,b1,b2,b3;
output out0,out1,out2,out3;

assign out0 = a0 & b0;
assign out1 = a1 & b1;
assign out2 = a2 & b2;
assign out3 = a3 & b3;

endmodule