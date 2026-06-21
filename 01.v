module circuito_1 (
    input C,
    input B,
    input A,
    output Z
);

    wire not_A, not_B, not_C;
    wire out_and_sup, out_or_cen, out_and_inf;

    not inv_A (not_A, A);
    not inv_B (not_B, B);
    not inv_C (not_C, C);

    and and_sup (out_and_sup, not_A, B);
    or or_cen (out_or_cen, A, not_C);
    and and_inf (out_and_inf, not_B, C);

    or or_saida (Z, out_and_sup, out_or_cen, out_and_inf);

endmodule