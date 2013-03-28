function [ans] = quarter_balanced(n)

n = rem(n, 4);
switch n
case 0
    ans = 1;
otherwise
    ans = 0;
end
