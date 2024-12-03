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
Q = single(zeros(n, n));
R = single(zeros(n, n));

% Gram-Schmidt orthonormalization
for k = 1:n
    ak = A(:, k);
    p = single(zeros(n, 1));
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

