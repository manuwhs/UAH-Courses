%Andr�s Beato Ollero y Manuel Montoya Catal� 
% Practica 2 Ejercicio 1
%Apartado b) 
function [X] = DFT_matricial (x)
x = x.';
X = matriz_DFT(x) * x;
X = X.';

