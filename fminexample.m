clc;
clear all;
close all;

%https://www.mathworks.com/help/optim/ug/fmincon.html

fun = @(x)100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
x0 = [-1,2];
A = [1,2];
b = 1;
x = fmincon(fun,x0,A,b);