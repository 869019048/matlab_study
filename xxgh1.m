%???Թ滮
%max z = 0.4x1+0.28x2+0.32x3+0.72x4+0.64x5+0.6x6
%s.t. 0.01x1+0.01x2+0.01x3+0.03x4+0.03x5+0.03x6<=850
%   0.02x1+0.05x4<=700
%   0.02x2+0.05x5<=100
%   0.03x3+0.08x6<=900
%   xj>=0  j=1,2,3..6
c = [-0.4 -0.28 -0.32 -0.72 -0.64 -0.6];
A = [0.01 0.01 0.01 0.03 0.03 0.03;
    0.02 0 0 0.05 0 0;
    0 0.02 0 0 0.05 0;
    0 0 0.03 0 0 0.08];
b = [850; 700 ;100 ;900];
Aeq=[];
beq = [];
vlb = [0;0;0;0;0;0];
vub = [];
[x,fval] = linprog(c,A,b,Aeq,beq,vlb,vub)