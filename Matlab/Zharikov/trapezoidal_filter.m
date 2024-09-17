function s = trapezoidal_filter(t_start, v, k, l, M)
    % Инициализация массивов
    N = length(v);       
    d = zeros(1, N);    
    p = zeros(1, N);      
    r = zeros(1, N);     
    s = zeros(1, N);      

    % Вычисления
    for n = 1:N
        % Вычисление v_k,l(n)
         if n - k > 0
            v_k = v(n - k);
        else
            v_k = 0;
        end

        if n - l  > 0
            v_l = v(n - l);
        else
            v_l = 0;
        end

        if n - k - l > 0
            v_kl = v(n - k - l );
        else
            v_kl = 0;
        end
        
        % Вычисление d(n)
        d(n) = v(n) - v_k - v_l + v_kl;

        % Вычисление p(n)
        if n > 1
            p(n) = p(n - 1) + d(n);
        end

        % Вычисление r(n)
        r(n) = p(n) + M * d(n);

        if n > 1
            s(n) = s(n - 1) + r(n);
        else
            s(n)=r(n);
        end
    end
end
