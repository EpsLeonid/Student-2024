function s = trapezoidal_filter(v)
    % Параметры фильтра
    k = 8;
    l = 5;
    M = 16;

    % Инициализация массивов
    N = length(v); % Длина массива
    dk = zeros(1, N);
    p = zeros(1, N);
    r = zeros(1, N);
    s = zeros(1, N);

    % Вычисление dk,l(n)
    for n = max(k+l+1, 1):N
        dk(n) = v(n) - v(n-k) - v(n-l) + v(n-k-l);
    end

    % Вычисление p(n), r(n) и s(n)
    for n = 2:N
        p(n) = p(n-1) + dk(n);
        r(n) = p(n) + M * dk(n);
        s(n) = s(n-1) + r(n);
    end

    % Построение графиков
    figure;
    subplot(3, 1, 1);
    plot(dk, 'LineWidth', 2);
    title('dk,l(n)');
    grid on;

    subplot(3, 1, 2);
    plot(p, 'LineWidth', 2);
    title('p(n)');
    grid on;

    subplot(3, 1, 3);
    plot(s, 'LineWidth', 2);
    title('s(n)');
    grid on;
end