function [Q, R] = QRdecomposition(A)
% QR decomposition of linearly independent square matrix
% INPUT
% A : n-th square matrix
% OUTPUT
% Q : n-th orthogonal matrix
% R : nth upper traiangleular matrix
%
% A = Q * R
%
% Algorithms
% Gram-Schmidt origogonal method was used

n = size(A, 1);
Q = zeros(n, n);
R = zeros(n, n);

% Gram-Schmidt orthonormalization
for k = 1:n
    ak = A(:, k);
    p = 0;
    for i=1:k-1
        pi = sum(ak.*Q(:, i));
        p = p - pi * Q(:, i);
        R(i, k) = pi;
    end
    uk_ = ak + p;
    uk = uk_ / sqrt(sum(uk_.^2));
    Q(:, k) = uk;
    R(k, k) = sqrt(sum(uk_.^2));
end
end

