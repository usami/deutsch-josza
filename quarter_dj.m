function [ans] = quarter_dj(n, f)
%   quarter_dj  Simulate the modified Deutsch-Josza algorithm for 3/4-balanced
%               function.

H = 1 / sqrt(2) * [1 1; 1 -1];

% prepare initial state
psi0 = zeros(2^(n+1), 1);
psi0(2) = 1;

% make the matrix of Uf
Uf = makefuncm(n, f);

% make the matrix of H^n
Hn = 1;
for i = 1:n,
    Hn = kron(Hn, H);
end

% simulate the algorithm
psi1 = kron(Hn, H) * psi0;
psi2 = Uf * psi1;
psi3 = kron(Hn, eye(2)) * psi2;

% get the probability of the outcome 0
p = psi3(1)^2 + psi3(2)^2;
if p >= rand(1) % simulate measurement
    ans = 'CONST';
else
    ans = 'BALANCED';
end
