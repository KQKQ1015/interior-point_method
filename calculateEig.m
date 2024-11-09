function eigs = calculateEig(A, maxIteration)
% QR method
for i = 1:maxIteration
    [Q, R] = QRdecomposition(A);
    A = R * Q;
    if convergenceCheck(A, 1e-6)
        break;
    end
end
% Extract eigenvalues
n = size(A, 1);
eigs = zeros(n, 1);
for j = 1:n
    eigs(j) = A(j, j);
end
end

