%%
% Параметры
tau1 = 16;   % Значение tau1
tau2 = 5;    % Значение tau2
t_start = -10; % Начальное значение t
t_end = 100;   % Конечное значение t
step = 1;      % Шаг по t

% Генерация и построение графика экспоненциального импульса 
[t, y] = generate_and_plot(tau1, tau2, t_start, t_end, step);


% Параметры
k = 9;
l = 5;
M = 16;
% Генерация и построение графика симметричного трапециидального импульса
s=trapezoidal_filter(t_start, y, k, l, M);

figure;
plot(t, s, 'r-', 'LineWidth', 2);
title('График s = trapezoidal filter');
xlabel('Время t');
ylabel('s');
grid on;
legend(['k = ', num2str(k), ', l = ', num2str(l), ', M = ', num2str(M)]);