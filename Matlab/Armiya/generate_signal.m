function y = generate_signal(t)
    % Задание параметров
    A = 1;
    tau1 = 16;
    tau2 = 5;

    % Формула сигнала
    y = A * sin((2 * pi * t) / tau1) .* exp(-t / tau2);

    % Построение графика
    figure;
    plot(t, y, 'LineWidth', 2);
    title('График сигнала f(t)');
    xlabel('t');
    ylabel('f(t)');
    grid on;
end