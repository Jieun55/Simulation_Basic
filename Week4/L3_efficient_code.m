M=input('Enter M: ');
pbest=1;  % 현재까지 찾은 best p 초기화
qbest=1;  % 현재까지 찾은 best q 초기화
err=abs(pbest/qbest-pi); % 현재 오차
% loop over set 
tic

for q=1:ceil(M/p1)
    % pminus, pplus 구함. 그 때의 오차도 구함
    pminus=floor(pi*q);
    errminus=abs(pi-pminus/q);
    pplus=ceil(pi*q);
    errplus=abs(pi-pplus/q);
    % 두 값중에 더 파이와 가까운 값, 즉 오차가 작은 값, 찾음
    if errminus < errplus
        p0=pminus;
        e0=errminus;
    else
        p0=pplus;
        e0=errplus;
    end
    % 둘 중에 더 파이와 가까운 값으로 p, q, 오차 업데이트
    if e0<err
        pbest=p0;
        qbest=q;
        err=e0;
    end
end

toc
mypi=pbest/qbest
pbest
qbest
err