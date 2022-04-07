%平面等值线图 contour(x,y,z,n) 绘制n个等值线的二维等值线图
%x为-2,2 y为-2,3
[X,Y] = meshgrid(-2:.2:2,-2:.2:3);
Z = X.*exp(-X.^2 - Y.^2);
[C,h] = contour(X,Y,Z);
clabel(C,h) %加标签
colormap cool