function booleanMatrix = propertyOfNonSingularMatrices()
    A = [
        1, 2;
        2, 1;
    ];
    B = [
        2, 3;
        4, 5;
    ];
    D = [
        4, 5;
        5, 4;
    ];

    E = D - B' / A * B;
    F = A \ B;

    lhs = [
        A, B; 
        B', D;
    ];
    rhs = [
        inv(A) + F / E * F', -F / E;
        -E \ F', inv(E);        
    ];
    
    booleanMatrix = ...
        roundWithAnyDigits(inv(lhs), 4) == roundWithAnyDigits(rhs, 4);
end
