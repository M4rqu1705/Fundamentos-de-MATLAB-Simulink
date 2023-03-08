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
consumption_data = readmatrix("consumo_farmacia.csv");

save("consumption_data.mat", "consumption_data");