%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 2 Ejercicio 2
%Metodo usando la convolucion lineal
%Convolucion circular de x1 y x2, de tantos puntos como el numero de
%muestras de la secuencia mas larga.
function [sn] = cc_metodo_b (x1,x2)
% x1 y x2 se dan en vecotres fila y sn es vector
% x1 y x2 se dan en vecotres fila y sn es vector
L1 = length(x1);
L2 = length(x2);
Yl = conv(x1,x2); %Convolucion lineal de las señales
                 %Tiene longitud N = L1 + L2 - 1

N = max(L1,L2);

sn = ext_periodica(Yl,N); % Te devuelve el periodo de la extension periodica
                          % de N puntos de la funcion Yl, que es la
                          % convoluicion circular de N puntos de x1 y x2


