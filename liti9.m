%����
%moviein ����һ��֡�����Ŷ����е�֡
%����getframe�Ե�ǰ��ͼ����п���
%movie��˳��طŸ�֡
[x,y,z] = peaks(30);
surf(x,y,z);
m = moviein(15);
axis([-3 3 -3 3 -10 10]);
for i = 1:15
    view(-37.5+24*(i-1),30)
    m(:,i) = getframe;
end
movie(m)