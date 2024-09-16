function [s] = transformation(y,k,l,M)
    N = length(y);

    for n = 1:N
    % Формулы для преобразования
        if n-k-l>0
            d(n) = y(n)-y(n-k)-y(n-l)+y(n-k-l);
        else
            d(n)=y(n);
        end
    end
    for n = 1:N
        if n-1>0&&n>=0
            p(n) = p(n-1) + d(n);
            else
            p(n)=d(n);
        end
    end
    for n = 1:N
        if n>0
            r(n) = p(n) + M*d(n);
            else
            r(n)=p(n);
        end
    end
    for n = 1:N
        if n-1>0&&n>=0
            s(n) = s(n-1) + r(n);
            else
            s(n)=r(n);
        end
    end
