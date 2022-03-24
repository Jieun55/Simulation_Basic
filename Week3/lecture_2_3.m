delta=input('enter delta: ');
n=3;
A_n=n/2*sin(2*pi/n); % An
A_n_1=(n+1)/2*sin(2*pi/(n+1)); % An+1
B_n=n*tan(pi/n); % Bn
B_n_1=(n+1)*tan(pi/(n+1)); % Bn+1
error_1=A_n_1-A_n; % |An+1-An|
error_2=B_n_1-B_n; % |Bn+1-Bn|
% 드모르간의 법칙 논리식: 종료조건 명제의 not 
while abs(error_1) > delta && abs(error_2) > delta  
    n=n+1;
    A_n=n/2*sin(2*pi/n);
    A_n_1=(n+1)/2*sin(2*pi/(n+1));
    B_n=n*tan(pi/n);
    B_n_1=(n+1)*tan(pi/(n+1));
    error_1=A_n_1-A_n;
    error_2=B_n_1-B_n;
end
nstar=n
(A_n+B_n)/2