%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 2 Ejercicio 1
%Apartado b) 
%Hace la DFT de N puntos de x
function [X] = DFT_matricial (x,N)
x = resize(x,N);  
x = x.';
X = matriz_DFT(N) * x;
X = X.';

