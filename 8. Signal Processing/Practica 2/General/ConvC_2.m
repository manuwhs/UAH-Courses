%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 2 Ejercicio 2
%Metodo usando la convolucion lineal
%Convolucion circular de x1 y x2, de tantos puntos como el numero de
%muestras de la secuencia mas larga.
function [sn] = ConvC_2 (x1,x2,N)
x1 = resize(x1,N);
x2 = resize(x2,N);

% x1 y x2 se dan en vecotres fila y sn es vector
Yl = conv(x1,x2); %Convolucion lineal de las señales
                 %Tiene longitud N = L1 + L2 - 1
sn = ext_periodica(Yl,N); % SUPERFUNCION que calcula la extension periodica de N puntos
                          % de una señal dada