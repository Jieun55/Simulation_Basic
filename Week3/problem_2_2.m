% 2.2
% delta 값 입력 받음 
delta=input('enter delta: ');
% 가장 작은 n은 3 
n=3;
% An, Bn
A_n=n/2*sin(2*pi/n);
B_n=n*tan(pi/n);
% 최초 오차 
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