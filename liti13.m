%ƽ���ֵ��ͼ contour(x,y,z,n) ����n����ֵ�ߵĶ�ά��ֵ��ͼ
%xΪ-2,2 yΪ-2,3
[X,Y] = meshgrid(-2:.2:2,-2:.2:3);
Z = X.*exp(-X.^2 - Y.^2);
[C,h] = contour(X,Y,Z);
clabel(C,h) %�ӱ�ǩ
colormap cool