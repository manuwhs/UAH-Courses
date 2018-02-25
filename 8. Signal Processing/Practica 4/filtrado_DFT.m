%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 3 Ejercicio 1
%Convolucion lineal de 
function [yn] = filtrado_DFT (xn,hn)
%Rellenamos con ceros las señales
L = length(xn);
M = length(hn);
xn = resize(xn,L+M-1);
hn = resize(hn,L+M-1);

Xn = fft (xn);
Hn = fft(hn);

Yn = Xn.*Hn;
yn = ifft(Yn);
 
    