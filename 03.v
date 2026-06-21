module circuito_3 (
    input A,
    input B,
    output C,
    output D,
    output E
);

    wire not_A, not_B;

    not inv_A (not_A, A);
    not inv_B (not_B, B);

    and and_C (C, not_A, B);
    and and_E (E, A, not_B);

    nor nor_D (D, C, E);

endmodule