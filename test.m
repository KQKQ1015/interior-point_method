A = [339.1352 314.7024 -41.0372 -37.8712;
     314.7024 314.3521 -25.8048 -31.6588;
     -41.0372 -25.8048  23.0123   4.8959;
     -37.8712 -31.6588   4.8959   6.2389];


[P, D]  = calculateEig(A, 100);

sqrtD = zeros(size(D));
for i = 1:size(D, 1)
    sqrtD(i, i) = sqrt(D(i, i));
end
sqrtA = P * sqrtD * P .';