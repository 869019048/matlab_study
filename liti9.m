%动画
%moviein 产生一个帧矩阵存放动画中的帧
%函数getframe对当前的图像进行快照
%movie按顺序回放各帧
[x,y,z] = peaks(30);
surf(x,y,z);
m = moviein(15);
axis([-3 3 -3 3 -10 10]);
for i = 1:15
    view(-37.5+24*(i-1),30)
    m(:,i) = getframe;
end
movie(m)