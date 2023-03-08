%{
Columns:
(1) Month
(2) Day
(3) Year
(4) Hour
(5) Minute
(6) Outdoor Temperature (°F)
(7) Hourly Rain (in/hr)
(8) Solar Radiation (W/m^2)
%}
clc;
clear all;
close all;

load('weather_data.mat')

% 1) Preparar un dominio de valores (variables independientes)
mes = weather_data(:,1);
dia = weather_data(:,2);
ano = weather_data(:,3);
hora = weather_data(:,4);
minuto = weather_data(:,5);
segundos = zeros(length(mes),1);
t = datetime(ano, mes, dia, hora, minuto, segundos);

% 2) Preparar los resultados (variables dependientes) en función del dominio.
temperatura = weather_data(:,6);
solar = weather_data(:, 8);

tiempo_filtrado = [];
temperatura_filtrada = [];

for indice = 1:length(temperatura)
    if temperatura(indice) ~= 0
        tiempo_filtrado = [tiempo_filtrado, t(indice)];
        temperatura_filtrada = [temperatura_filtrada, temperatura(indice)];
    end
end

figure("Name", "Solar Radiation vs Time");

% 3) Graficar utilizando los comandos apropiados.
subplot(2, 1, 1);
area(t, solar);
colororder([0.9290 0.6940 0.1250]);

% 4) Añadir título y etiquetar ejes
title("Solar Radiation vs Time");
ylabel("Solar Radiation (W/m^2)");
grid on;
grid minor;

% 3) Graficar utilizando los comandos apropiados.
subplot(2, 1, 2);
plot(tiempo_filtrado, temperatura_filtrada, "Color", [0.8500 0.3250 0.0980]);

% 4) Añadir título y etiquetar ejes
title("Temperature vs Time");
xlabel("Time");
ylabel("Temperature (\circF)");
ylim([min(temperatura_filtrada), max(temperatura_filtrada)]);
grid on;
grid minor;