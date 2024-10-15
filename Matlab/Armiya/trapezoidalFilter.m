function [s] = trapezoidalFilter(v, k, l, M)

N = length(v);      % длина сигнала
d_kl = zeros(1, N); % инициализация массивов
p = zeros(1, N);
r = zeros(1, N);
s = zeros(1, N);

% Расчет для каждого элемента
for n = 2:N
    if n > k && n > l && n > k + l
        d_kl(n) = v(n) - v(n - k) - v(n - l) + v(n - k - l);
    else
        d_kl(n) = v(n);
    end

    % p(n)
    if n > 0
        p(n) = p(n - 1) + d_kl(n);
    else
        p(n) = 0;
    end

    % r(n)
    r(n) = p(n) + M * d_kl(n);

    % s(n)
    if n > 0
        s(n) = s(n - 1) + r(n);
    else
        s(n) = 0;
    end
end
end
