% Основной скрипт MATLAB

% Параметры
tau1 = 16;
tau2 = 5;
A = 1;  % Амплитуда
t = -10:1:100;  % Диапазон t с шагом 1

% Генерация массива значений
y = generate_plot(t, tau1, tau2, A);

% Построение графика
figure;
plot(t, y);
xlabel('Time (t)');
ylabel('Amplitude');
title('График функции');
grid on;
