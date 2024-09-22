function y = generate_plot(t, tau1, tau2, A)
    % Формула для генерации массива чисел
    y = A * (exp(-t/tau1) - exp(-t/tau2));  % Пример экспоненциальной функции
end
