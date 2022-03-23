%Quadratic q(x) = x^2 + bx + c

b = input('Enter b: ');
c = input('Enter c: ');
L = input('Enter L: ');
R = input('Enter R: ');

% Determine whether q increases
% across [L,R]
xc = -b/2;

if xc <= L
    fprintf('Yes\n')
else
    fprintf('No\n')
end