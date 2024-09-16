function [s] = cups_filter(v, l, k,m1,m2)

    N = length(v); %оперделяем длинну массива
    d_k = zeros(1, N);
    d_1 = zeros(1, N);
    p = zeros(1, N);
    q = zeros(1, N);
    s = zeros(1, N);

    p(1) = 0; %определяем начальные элементы массивов
    q(1) = 0;
    s(1) = 0;

    for n = 2:N %начинаем со второго элемента т.к. значение текущего завит от значения предыдущего
        
        if n > k
            d_k(n) = v(n) - v(n - k); %все if/else для начальных элементов массивов.
        else
            d_k(n) = v(n); 
        end
        
        if n > 1
            d_1(n) = v(n) - v(n - 1);
        else
            d_1(n) = v(n);
        end
        
         if n > l
            p(n) = p(n-1) + d_k(n) - k * d_1(n-l);
        else
            p(n) = p(n-1) + d_k(n);  
        end
      
        q(n) = q(n - 1) + m2 * p(n);
        
        s(n) = s(n - 1) + q(n) + m1 * p(n);

    end
end