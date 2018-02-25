%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 2 Ejercicio 2
%Convolucion circular de x1 y x2, de tantos puntos como el numero de
%muestras de la secuencia mas larga.
%Metodo de la DFT
function [sn] = cc_metodo_a (x1,x2)
% x1 y x2 se dan en vecotres fila y sn es vector
L1 = length(x1);
L2 = length(x2);
%Rellenamos con ceros is las secuencias no son iguales
if (L1>L2)
    x2 = [x2 zeros(1,L1-L2)];
elseif (L2>L1)
    x1 = [x1 zeros(1,L2-L1)];
end;
  
X1 = DFT_matricial(x1);
X2 = DFT_matricial(x2);

Sn = X1.*X2;
sn = ifft(Sn);
 
    