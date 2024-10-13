close all;

% Параметры
A = 1;          % Амплитуда
tay1 = 16;      % Параметр тау1
tay2 = 5;       % Параметр тау2
t = -10:1:100;  % Время с шагом 1

% Генерация сигнала
[y, t] = func(t, tay1, tay2, A); 

% Настройки для отображения
set(0,'DefaultAxesFontSize',12,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',12,'DefaultTextFontName','Times New Roman'); 

% Построение графика y(t)
figure; 
    title ('y(t)');
    plot(t, y, 'LineWidth', 2);
    xlabel('t');
    ylabel('y(t)');
    grid on;

% Параметры трапецеидального фильтра
k = 8;  % параметр k
l = 5;  % параметр l
M = 16; % параметр M

% Применение трапецеидального фильтра
s = trapezoidalFilter(y, k, l, M);

% Построение графика s(t)
figure; 
    title ('s(t)');
    plot(t, s, 'LineWidth', 2);
    xlabel('t');
    ylabel('s(t)');
    grid on;
