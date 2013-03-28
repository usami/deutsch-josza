function [Uf] = makefuncm(n, f)
%   makefuncm   Create Uf matrix with n, f. f is a boolean function that maps
%               {0,...,2^n-1} into {0, 1}.
%

X = [0 1; 1 0];

Uf = blkdiag(X^f(0), X^f(1));
for i = 2:2^n-1,
    Uf = blkdiag(Uf, X^f(i));
end
