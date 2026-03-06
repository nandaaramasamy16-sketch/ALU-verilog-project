`include "add_sub_module.v"
`include "enable.v"
`include "decoder.v"
`include "comparator.v"
`include "and_module.v"

module main_module(
    input s1, s0,
    input a0, a1, a2, a3,
    input b0, b1, b2, b3,

    output s0_as, s1_as, s2_as, s3_as, carry_as,
    output a_gt_b, a_eq_b, a_lt_b,
    output ab_0, ab_1, ab_2, ab_3
);

wire d0, d1, d2, d3;

decoder dec1(s1, s0, d0, d1, d2, d3);


wire a0_as, a1_as, a2_as, a3_as;
wire b0_as, b1_as, b2_as, b3_as;

enable_module en_addsub(
    d1,
    a0, a1, a2, a3,
    b0, b1, b2, b3,
    a0_as, a1_as, a2_as, a3_as,
    b0_as, b1_as, b2_as, b3_as
);

add_sub addsub1(
    d1,
    a0_as, a1_as, a2_as, a3_as,
    b0_as, b1_as, b2_as, b3_as,
    cout, s0_as, s1_as, s2_as, s3_as
);


wire a0_c, a1_c, a2_c, a3_c;
wire b0_c, b1_c, b2_c, b3_c;

enable_module en_comp(
    d2,
    a0, a1, a2, a3,
    b0, b1, b2, b3,
    a0_c, a1_c, a2_c, a3_c,
    b0_c, b1_c, b2_c, b3_c
);

comparator comp1(
    a0_c, a1_c, a2_c, a3_c,
    b0_c, b1_c, b2_c, b3_c,
    a_gt_b, a_eq_b, a_lt_b
);


wire a0_and, a1_and, a2_and, a3_and;
wire b0_and, b1_and, b2_and, b3_and;

enable_module en_and(
    d3,
    a0, a1, a2, a3,
    b0, b1, b2, b3,
    a0_and, a1_and, a2_and, a3_and,
    b0_and, b1_and, b2_and, b3_and
);

and_module and1(
    a0_and, a1_and, a2_and, a3_and,
    b0_and, b1_and, b2_and, b3_and,
    ab_0, ab_1, ab_2, ab_3
);

endmodule