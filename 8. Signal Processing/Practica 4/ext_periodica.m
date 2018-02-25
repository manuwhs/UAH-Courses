%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 2 Ejercicio 2
%Funcion que le das una señal x y un periodo N y te devuelve el periodo de
%la extension periodica de x de periodo N
function [xp] = ext_periodica (x,N)
L = length(x);
if (N>L)               %Si la extension periodica es mayor que la longitud de N
 x = [x zeros(1,N-L)];  %Rellenamos con 0´s
end;
    

%Crearemos una matriz cuyas filas seran los valore de x que se solapan en
%el tiempo, incluida la propia x inicial:
%Para ello calculamos el numero de x's que se solapan en nuestro rango de
%0 a N-1, para ello creamos esta variable:

Ns = ceil(L /N);               %Numero de solapamientos 
                                %Ceil hace el redondeo por exeso
                                
%Creamos matriz de solapamientos
%Esta matriz contendra los solapamientos de x desde 0 a N-1
%Si el numero de solapamientos es 1, es decir, N >= L,
%Entonces esta matriz contendria las N primeras muestras de la convolucion
%lineal, que en este caso seria igual a la circular.
S = zeros(Ns,N);

%Calculamos la parte de los solamientos entre 0 y L-1
for i = 1:1:Ns            %Por cada x desplazada entre 0 y N-1 (solapamiento)
    N_m_s = L - (i-1)*N;              %Numero de muestras que dicha x desplazada (solapamiento)
                                  %Tendrá entre 0 y N-1
    if (N_m_s>N)          %El numero de muestras que cada solapamiento tiene entre
                          % 0 y N- 1 es como mucho N
         N_m_s =N;
    end;
    for j =1:1:N_m_s   %Numero de muestras que se solaparan
       S(i,j) = x((i-1)*N+j);
    end;
end;
xp = zeros(1,N);   %Resultado de la convolucion circular
for i = 1:1:Ns
    xp = xp + S(i,:);  %Suma las filas de S
end;