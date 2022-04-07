%函数为y，在【-6,6】中平均选取21个点做插值（分段线性插值法）
x=linspace(-6,6,100);
y=1./(x.^2+1);
x1=linspace(-6,6,21);
y1=1./(x1.^2+1);
plot(x,y,x1,y1,x1,y1,'o','LineWidth',1.5),
gtext('n=20'),
