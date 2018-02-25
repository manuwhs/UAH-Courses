%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 2 Ejercicio 2
%Convolucion circular de x1 y x2, N puntos
function [sn] = ConvC_1 (x1,x2,N)
% x1 y x2 se dan en vecotres fila y sn es vector
%Para la convolucion circular de N puntos se cogen solo los
%N primeros puntos de cada secuencia
x1 = resize(x1,N);
x2 = resize(x2,N);

 
X1 = DFT_matricial(x1,N);
X2 = DFT_matricial(x2,N);

Sn = X1.*X2;
sn = ifft(Sn,N);
 
    