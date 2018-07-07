clear
%蒲丰投针建模，计算圆周率pi
l = 0.6;        %针的长度
a = 1;          %平行线的宽度
n = 10000000;    %做n次投针试验
k = 0;          %记录针与平行线相交的次数
x = unifrnd(0, a/2, 1, n);          %在[0, a/2]内服从均匀分布随机产生n个数
theta = unifrnd(0, pi/2, 1, n);     %在[0, pi/2]内服从均匀分布随机产生n个数
for i=1:n
    if x(i) < (l/2)*sin(theta(i)) 
        k = k + 1;
    end
end
Fren = k / n;           %相交的频率
Pi = (2*l)/(a*Fren)