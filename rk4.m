close all; clear all; clc;
x0=input('x0=');
xf=input('xf=');
y0=input('y0=');
h=input('Pasul este=');
n=0;
y=y0;
f=@(x,y) 1-x+4*y;
for x=x0:h:xf
    k0=h*f(x,y);
    k1=h*f(x+h/2,y+k0/2);
    k2=h*f(x+h/2,y+k1/2);
    k3=h*f(x+h,y+k2);
    y=y+(k0+2*k1+2*k2+k3)/6;
    disp(['x' num2str(n) '    ' num2str(x) '   k0 ' num2str(k0) '   k1 ' num2str(k1) '   k2 ' num2str(k2)  '   k3 ' num2str(k3) '   y' num2str(n) '    ' num2str(y)])
    n=n+1;
end