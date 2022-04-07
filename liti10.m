%动画
%moviein 产生一个帧矩阵存放动画中的帧
%函数getframe对当前的图像进行快照
%movie按顺序回放各帧
 x = linspace(0,2*pi,30);
 y = sin(x);
m = moviein(15);
axis([-3 3 -3 3 -10 10]);

for i = 1:15
    y = sin(x+i);
    plot(x,y,'-s');
    m(:,i) = getframe;
end
movie(m)