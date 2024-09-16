function [y,t] = func(t,tay1,tay2,A) %объявляю функцию с именем funс, которая принимает входные данные t,tay1,tay2,A и возвращает выходные параметры [y,t]
    y = zeros(size(t)); %инициализация массива
    y(t<0) = 0;
    y(t>=0) = A*(exp(-t(t >= 0) / tay1) - exp(-t(t >= 0) / tay2));
end