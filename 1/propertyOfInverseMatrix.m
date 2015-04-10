function [product, booleanMatrix] = propertyOfInverseMatrix()
    A = [
        1, 2;
        3, 4;
    ];

    product = round(A / A);
    booleanMatrix = roundWithAnyDigits(product, 4) == roundWithAnyDigits(A \ A, 4);
end
