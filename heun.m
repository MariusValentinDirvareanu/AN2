close all; clear all; clc;
x0=input('x0=');
xf=input('xf=');
y0=input('y0=');
h=input('Pasul este=');
n=0;
y=y0;
f=@(x,y) x^2+y;
for x=x0:h:xf
    k0=h*f(x,y);
    k1=h*f(x+h/3,y+k0/3);
    k2=h*f(x+2*h/3,y+2*k1/3);
    y=y+(k0+3*k2)/4;
    disp(['x' num2str(n) '    ' num2str(x) '   k0 ' num2str(k0) '   k1 ' num2str(k1) '   k2 ' num2str(k2) '   y' num2str(n+1) '    ' num2str(y)])
    n=n+1;
end