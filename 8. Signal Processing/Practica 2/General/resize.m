%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 2 Ejercicio 1
%Apartado a) 
%Crea la matriz cuadrada de la DFT de orden N
function [x2] = resize (x1,N)
L = length(x1);
x2 = zeros(1,N);
if (L>N)    %Si el vector es mayor que N, lo recortamos
    for i=1:1:N
    x2(i) = x1(i);
    end
elseif (L<N)  %si es menor, le añadimos ceros
    x2 = [x1 zeros(1,N-L)];
elseif (L==N)
    x2 = x1;
end;