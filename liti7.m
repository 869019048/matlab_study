%区间【0 2pi】新建两个窗口分别画出 sin cos
x = linspace(0,2*pi,100);
y = sin(x);
z = cos(x);
plot(x, y);
title('sin');
pause
figure(2);    
plot(x,z);
title('cos(x)'); 