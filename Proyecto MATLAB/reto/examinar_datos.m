%{
Columns:
(1) Month
(2) Day
(3) Year
(4) Hour
(5) Minute
(6) P 3Phase
(7) Q 3Phase
(8) S 3Phase
(9) PF
%}

clc;
clear all;
close all;

load('consumption_data.mat')

% 1) Preparar un dominio de valores (variables independientes)
mes = consumption_data(:,1);
dia = consumption_data(:,2);
ano = consumption_data(:,3);
hora = consumption_data(:,4);
minuto = consumption_data(:,5);
segundos = zeros(length(mes),1);
t = datetime(ano, mes, dia, hora, minuto, segundos);

% 2) Preparar los resultados (variables dependientes) en función del dominio.
S = consumption_data(:, 8);
power_factor = consumption_data(:,9);

histogram2(S, power_factor, 50, 'DisplayStyle','tile','ShowEmptyBins','on');
xlabel("S (kVA)");
ylabel("pf");
zlabel("Frequency");
colorbar
