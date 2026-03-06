module comparator(a0,a1,a2,a3,b0,b1,b2,b3,a_gt_b,a_eq_b,a_lt_b);

input a0,a1,a2,a3,b0,b1,b2,b3;
output a_gt_b,a_eq_b,a_lt_b;

// equality
assign a_eq_b = (a0 ~^ b0) & (a1 ~^ b1) & (a2 ~^ b2) & (a3 ~^ b3);

// greater than
assign a_gt_b = (a3 & ~b3) |
                ((a3 ~^ b3) & (a2 & ~b2)) |
                ((a3 ~^ b3) & (a2 ~^ b2) & (a1 & ~b1)) |
                ((a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) & (a0 & ~b0));

// less than
assign a_lt_b = (b3 & ~a3) |
                ((a3 ~^ b3) & (b2 & ~a2)) |
                ((a3 ~^ b3) & (a2 ~^ b2) & (b1 & ~a1)) |
                ((a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) & (b0 & ~a0));

endmodule