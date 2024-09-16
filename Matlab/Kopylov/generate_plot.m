function [y] = generate_plot(t,tau1,tau2,a)

y = zeros(size(t)); %оперделяем длинну массива

y(t < 0) =0;
y(t >= 0) = a * (exp(-t(t >= 0) / tau1) - exp(-t(t >= 0) / tau2)); %задаем функцию y
end