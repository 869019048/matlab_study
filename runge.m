%在f(0)附近以外，插值次数越高，结果偏离越大。一般把这种次数越高而插值结果越偏离原函数的现象称为龙格现象。所以在不熟悉曲线运动趋势的前提下，不要轻易使用高次插值
for i=3:2:11
x=linspace(-1,1,i);
y=1./(1+25*x.^2);
p=polyfit(x,y,i-1);
xx=-1:0.01:1;
yy=polyval(p,xx);
plot(xx,yy,'b');
hold on;
grid on;
end;
plot(x,1./(1+25*x.^2),'r');