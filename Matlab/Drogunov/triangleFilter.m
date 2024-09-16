function [s] = triangleFilter(v,k,l,M)% варинат 2, треугольный фильтр

N = length(v); %пусть N будет длиной v
d_kl = zeros(1, N); %определение массивов
p = zeros(1, N);
r = zeros(1, N);
s = zeros(1, N);

    for n = 2:N %цикл для подсчета
        
        if n>k && n>l && n>k+l
            d_kl(n) = v(n)-v(n-k)-v(n-l)+v(n-k-l);
        else
            d_kl(n) = v(n); %берем первое значение если условия не выполняются
        end

            if n>=0
                p(n)=p(n-1)+d_kl(n);
            else
                p(n)=0; %будет нулем если условие не проходит    
            end
            
            r(n)=p(n)+M*d_kl(n);

                if n>=0
                    s(n)=s(n-1)+r(n);
                else 
                    s(n)=0;
                end
    
    end