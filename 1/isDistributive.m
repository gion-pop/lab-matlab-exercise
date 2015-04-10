function booleanMatrix = isDistributive()
    A = [
        1, 2;
        3, 4;
    ];
    B = [
        2, 3;
        4, 5;
    ];
    C = [
        3, 4;
        5, 6;
    ];

    booleanMatrix = A * (B + C) == A * B + A * C;
end
