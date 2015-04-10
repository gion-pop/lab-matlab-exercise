function booleanMatrix = productWithTransposing()
    A = [
        1, 2;
        3, 4;
    ];
    B = [
        2, 3;
        4, 5;
    ];

    booleanMatrix = (A * B)' == B' * A';
end
