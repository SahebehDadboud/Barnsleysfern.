%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Sahebeh Dadboud : 1569395
%Assignments2 - exe 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear all; 
close all;

n = 30000; 
x0 = 0;
y0 = 0;


[X,Y] = barnsley(x0,y0,n);

plot(X, Y, '.'); hold on
title("Barnsley's fern"); hold on


figure
[X1,Y1] = thelfern(x0,y0, n);

plot(X1, Y1, '.'); hold on
title("Thelypteridaceae fern"); hold on


figure
[X2,Y2] = leptofern(x0,y0, n);

plot(X2, Y2, '.'); hold on
title("leptosporangiate fern"); hold on


