tau1 = 16; %начальные данные
tau2 = 5;
A = 1;

t = -10:1:100; %определение временной шкалы
y = generate_plot(t,tau1,tau2,A); %вызов функции y

figure; %создание графика
    plot(t, y, 'LineWidth', 1);
    xlabel('t');
    ylabel('y(t)');
    grid on;

 l = 5; %начальные данные
 k = 11;
 m1 = 16;
 m2 = 1;

 s = cusp_filter(y,l,k,m1,m2); %вызов функции s (фильтр)

 figure;%создание графика
    plot(t, s, 'LineWidth', 1);
    xlabel('t');
    ylabel('s(t)');
    grid on;
