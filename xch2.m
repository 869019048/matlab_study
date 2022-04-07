%要求所求曲线/面通过所给所有数据点，就是插值问题
hours=1:12;
temps=[5 8 9 15 25 29 31 30 22 25 27 24];
h=1:0.1:12;
t=interp1(hours,temps,h,'spline');%插值函数，nearest最近邻插值。linear线性插值。spline三次样条插值。cubic立方插值。缺省时 分段线性插值
%(直接输出数据将是很多的)
plot(hours,temps,'+',h,t,hours,temps,'r:')     %作图
xlabel('Hour'),ylabel('Degrees Celsius')