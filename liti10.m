%����
%moviein ����һ��֡�����Ŷ����е�֡
%����getframe�Ե�ǰ��ͼ����п���
%movie��˳��طŸ�֡
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