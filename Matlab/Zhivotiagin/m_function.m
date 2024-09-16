function [t,y] = m_function(A,tau1,tau2,t1,t2,step)

    % Вычисление шага по t
    number_p = ( t2-t1 ) / step+1;
    % Генерация массива чисел t 
    t = linspace(t1,t2,number_p);
    
    % Вычисление значений функции y для t меньше 0 и t больше 0
    y(t<0) = 0;
    y(t >= 0) = A*(exp(-t(t >= 0)/tau1)-exp(-t(t >= 0)/tau2));
  %  y(t >= 0) =1000*exp(-t(t >= 0)/tau1);
    % Построение графика
    figure
    plot(t, y);
    
    % Настройки графика
    title('График функции y'); % Название графика
    xlabel('t');               % Подпись оси х
    ylabel('y');               % Подпись оси у
    grid on;                   % Сетка
end