%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 2 Ejercicio 1
%Apartado a) 
function [WN] = matriz_DFT (x)
N = length(x);
%Creamos la matriz de cuadrada de dimension N
WN = zeros(N,N);
for k=1:1:N 
    for n=1:1:N
        WN(k,n) = exp((-1j*2*pi/N)*(k-1)*(n-1));
    end;
end;
