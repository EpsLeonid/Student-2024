function [y, t] = func(t, tay1, tay2, A)
    % Инициализация массива y
    y = zeros(size(t)); 
    
    % Для значений t >= 0
    y(t >= 0) = A * (exp(-t(t >= 0) / tay1) - exp(-t(t >= 0) / tay2));
end