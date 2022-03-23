% minimum of , x^2+bx+c on the interval [L, R]
% 입력 데이터를 받고 화면에 출력
b=input('Enter b:');
c=input('Enter c:');
L=input('Enter L:');
R=input('Enter R (l<r):');
fprintf('Quadratic: x^2+bx+c, b=%f, c=%f\n', b, c);
fprintf('Interval: [L, R], L=%f, R=%f \n\n', L, R)

% critical point
xc = -b/2

% if L>R이면 L과 R을 swap
if L> R
    temp =L;
    L = R;
    R = temp;
end

% Case 1: 왼쪽 끝점에서 최소값 갖음
if xc<L
    % 수식에 x=L 대입하여 f(L) 계산
    min = L^2 + b*L + c;
    % fprintf 함수 이용 x값과 최소값 출력
    fprintf('Minimizing x = %5.2f\n', L)
    fprintf('Minimun f value : %5.2f\n', min)

% Case 2: critical point에서 최소값 갖음
elseif L<=xc && xc <= R
    % 수식에 x=xc 대입하여 f(xc) 계산
    % fxc = c-(b/2)^2; 도 가능
    min = xc^2 + b*xc + c;
    % fprintf 함수 이용 x값과 최소값 출력
    fprintf('Minimizing x = %5.2f\n', xc)
    fprintf('Minimun f value : %5.2f\n', min)

% Case 3: 오른쪽 끝점에서 최소값 갖음
else
    % 수식에x=R 대입하여 f(R) 계산
    min = R^2 + b*R + c;
    % fprintf 함수 이용 x값과 최소값 출력
    fprintf('Minimizing x = %5.2f\n', R)
    fprintf('Minimun f value : %5.2f\n', min)
end
