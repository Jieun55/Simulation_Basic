% 2.2
% delta �� �Է� ���� 
delta=input('enter delta: ');
% ���� ���� n�� 3 
n=3;
% An, Bn
A_n=n/2*sin(2*pi/n);
B_n=n*tan(pi/n);
% ���� ���� 
error=B_n-A_n; 
% loop over set
while abs(error) > delta
    n=n+1;
    A_n=n/2*sin(2*pi/n);
    B_n=n*tan(pi/n);
    error=B_n-A_n;
end
nstar=n
(A_n+B_n)/2