n=10;
for k=1:8 
    A_n = (n/2)*sin(2*pi/n);
    B_n = n*tan(pi/n);
    rho_n = (A_n+B_n)/2;
    n=10*n;
end 