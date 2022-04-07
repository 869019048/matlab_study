%画一个球体曲面
figure(1)
sphere;
sp = findobj(1,'Type','surface');

%定义菜单选项，即回调函数
cb1 = ['set(sp,''LineStyle'',''none'')'];
cb2 = ['set(sp,''LineStyle'',''--'')'];
cb3 = ['set(sp,''LineStyle'','':'')'];
cb4 = ['set(sp,''LineStyle'',''-'')'];

%定义快捷菜单
cmenu = uicontextmenu;
set(sp,'UIContextMenu',cmenu)
menp = uimenu(cmenu,'Label','Linetypes');
item1 = uimenu(menp,'Label','none','Callback',cb1);
item2 = uimenu(menp,'Label','dashed','Callback',cb2);
item3 = uimenu(menp,'Label','dotted','Callback',cb3);
item4 = uimenu(menp,'Label','solid','Callback',cb4);