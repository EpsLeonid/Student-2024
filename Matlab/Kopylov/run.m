tau1 = 16; %определяем начальные данные
tau2 = 5;
a = 1;

t = -10:1:100; %определение временной шкалы
y = generate_plot(t,tau1,tau2,a); %вызов функции y

figure; %создание окна граффика
    plot(t, y, 'LineWidth', 2);
    xlabel('t (Time)');
    ylabel('y(t)');
    grid on;

 l = 6; %определяем начальные данные
 k = 13;
 m1 = 16;
 m2 = 1;

 s = cups_filter(y,l,k,m1,m2); %вызов функции cups_filter

 figure;%создание окна граффика
    plot(t, s, 'LineWidth', 2);
    xlabel('t (Time)');
    ylabel('s(t)');
    grid on;
