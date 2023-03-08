x = 1:1000;
y = randn(1, 1000);

figure("Name", "Título de la ventana")
plot(x, y, "red");
title("Título de la gráfica");
xlabel("Variable Independiente");
ylabel("Variable Dependiente");
grid on

figure("Name", "Histograma Valores Generados Aleatoriamente");
histogram(y, 30);
title("Histograma Valores Generados Aleatoriamente");
ylabel("Frecuencia");
grid on