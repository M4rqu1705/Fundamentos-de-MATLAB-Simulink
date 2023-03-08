clear all;
close all;
clc;

load("../Proyecto MATLAB/weather_data.mat")

tiempo = 1:5:1436;
temperatura = weather_data(1:288, 6);
radiacion_solar = weather_data(1:288, 8);

indices = temperatura ~= 0;
tiempo_temperatura = tiempo(indices);
temperatura = temperatura(indices);
temperatura = temperatura.';
temperatura = flip(temperatura);

radiacion_solar = radiacion_solar.';
radiacion_solar = flip(radiacion_solar);