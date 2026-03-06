module full_adder(a, b, carry_in, sum, carry_out);

input a, b, carry_in;
output sum, carry_out;

assign sum = (a ^ b) ^ carry_in;

assign carry_out = (a & b) | ((a ^ b) & carry_in);

endmodule