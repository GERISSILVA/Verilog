module circuito_2 (
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [3:0] Y
);

    wire not_sel;
    wire [3:0] and_a;
    wire [3:0] and_b;

    not inv_sel (not_sel, sel);

    and and_a0 (and_a[0], A[0], not_sel);
    and and_a1 (and_a[1], A[1], not_sel);
    and and_a2 (and_a[2], A[2], not_sel);
    and and_a3 (and_a[3], A[3], not_sel);

    and and_b0 (and_b[0], B[0], sel);
    and and_b1 (and_b[1], B[1], sel);
    and and_b2 (and_b[2], B[2], sel);
    and and_b3 (and_b[3], B[3], sel);

    or or_y0 (Y[0], and_a[0], and_b[0]);
    or or_y1 (Y[1], and_a[1], and_b[1]);
    or or_y2 (Y[2], and_a[2], and_b[2]);
    or or_y3 (Y[3], and_a[3], and_b[3]);

endmodule