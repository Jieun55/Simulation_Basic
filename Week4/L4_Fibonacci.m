tol=10^(-15);
n=2;
f_old=1;
f_cur=1;
f_new=f_old+f_cur;
r_cur=f_cur/f_old;
r_new=f_new/f_cur;

while(abs(r_new-r_cur)>tol)
    n=n+1;
    f_old=f_cur;
    f_cur=f_new;
    f_new=f_old+f_cur;
    r_cur=f_cur/f_old;
    r_new=f_new/f_cur;
    fprintf('%d %d %25.19f \n',n, f_cur, r_new)
end