clear;
N=200;  %200개의 점
x=linspace(-2,3,N); % 1x200 행렬 (벡터)
y=(sin(5*x).*exp(-x/2))./(1+x.*x);
plot(x,y,'-ro')