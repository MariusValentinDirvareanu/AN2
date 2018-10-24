close all; clear all; clc;
x0=input('x0=');
xf=input('xf=');
y0=input('y0=');
h=input('Pasul este=');
n=0;
yc=y0;
f=@(x,y) x*y/2;
for x=x0:h:xf
    yp=yc+h*f(x,yc);
    yc=yc+h*(f(x,yc)+f(x+h,yp))/2;
    disp(['x' num2str(n) '    ' num2str(x) '   y' num2str(n) '    ' num2str(yc)])
    n=n+1;
end