function [t, y] = generate_and_plot(t1, t2, t_start, t_end, step)
    % Проверка входных параметров
    if t1 <= 0 || t2 <= 0
        error('Параметры t1 и t2 должны быть положительными.');
    end
    
    % Проверка на корректность значений t_start и t_end
    if t_start >= t_end
        error('t_start должно быть меньше t_end.');
    end

    num_points = (t_end - t_start) / step + 1; % Количество точек
    % Генерация массива временных значений
    t = linspace(t_start, t_end, num_points); % Создаем массив t от t_start до t_end

    % Вычисление значений y по заданной формуле
    A = 1; % Амплитуда
    y = zeros(size(t)); % Инициализация массива y
    y(t >= 0) = A * (exp(-t(t >= 0) / t1) - exp(-t(t >= 0) / t2)); % Вычисление y для t >= 0
    
    % Построение графика
    figure;
    plot(t, y, 'b-', 'LineWidth', 2);
    title('График y = A * (exp(-t/t1) - exp(-t/t2))');
    xlabel('Время t');
    ylabel('y');
    grid on;
    legend(['t_1 = ', num2str(t1), ', t_2 = ', num2str(t2)]);
end