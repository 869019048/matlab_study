%meshz(x,y,z)在网格周围画一个curtain图

[X,Y] = meshgrid(-3:.125:3);
Z = peaks(X,Y);%二元高斯分布的概率密度函数
%z =  3*(1-x).^2.*exp(-(x.^2) - (y+1).^2) ... 
%   - 10*(x/5 - x.^3 - y.^5).*exp(-x.^2-y.^2) ... 
%   - 1/3*exp(-(x+1).^2 - y.^2) 
meshz(X,Y,Z);

zoom on %为当前图形打开缩放模式
