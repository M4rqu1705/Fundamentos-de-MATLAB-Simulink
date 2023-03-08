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
weather_data = readmatrix("ambient-weather-20230301-20230302.csv");

save("weather_data.mat", "weather_data")