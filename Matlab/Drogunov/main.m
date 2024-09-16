close all;
A = 1;
tay1 = 16;
tay2 = 5;
t = -10:1:100;
y = func(t,tay1,tay2,A); %возвращаем функцию с нашими значениями
set(0,'DefaultAxesFontSize',12,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',12,'DefaultTextFontName','Times New Roman'); 
figure; %рисуем
    title ('y(t)');
    plot(t, y, 'LineWidth', 2);
    xlabel('t');
    ylabel('y(t)');
    grid on;

k = 5;
l = 5;
M = 16;
s = triangleFilter(y,k,l,M); %возвращаем другую функцию с нашими значениями
set(0,'DefaultAxesFontSize',12,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',12,'DefaultTextFontName','Times New Roman'); 
figure; %рисуем
    title ('s(t)');
    plot(t, s, 'LineWidth', 2);
    xlabel('t');
    ylabel('s(t)');
    grid on;