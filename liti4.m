%surf(x,y,z)画出xyz表示的曲面
x = -3:0.1:3;
y = 1:0.1:5;
[X,Y] = meshgrid(x,y);
Z = (X+Y).^2;
surf(X,Y,Z);
shading flat %平滑图像