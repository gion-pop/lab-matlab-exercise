function booleanMatrix = productWithIdentityMatrix()
    A = [
        1, 2;
        3, 4;
    ];
    I = eye(size(A));
    
    booleanMatrix = A * I == A;
end
