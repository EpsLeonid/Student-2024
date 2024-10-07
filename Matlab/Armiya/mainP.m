
t = -10:1:100; 

%  Генерация сигнала
y = generate_signal(t);

%  Применение трапецеидального фильтра
s = trapezoidal_filter(y);