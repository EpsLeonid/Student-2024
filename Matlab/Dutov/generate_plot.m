function [y] = generate_plot(t,tau1,tau2,A)

y = zeros(size(t)); %инициализируем массив

y(t < 0) =0;
y(t >= 0) = A * (exp(-t(t >= 0) / tau1) - exp(-t(t >= 0) / tau2)); %задаем функцию y
end