close all; clear all; clc;
x0=input('x0=');
xf=input('xf=');
y0=input('y0=');
h=input('Pasul este=');
n=0;
y=y0;
f=@(x,y) y-2*x/y;
for x=x0:h:xf
    k0=h*f(x,y);
    k1=h*f(x+h,y+k0);
    y=y+(k0+k1)/2;
    disp(['x' num2str(n) '    ' num2str(x) '   k0 ' num2str(k0) '   k1 ' num2str(k1) '   y' num2str(n) '    ' num2str(y)])
    n=n+1;
end



