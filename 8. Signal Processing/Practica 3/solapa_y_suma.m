%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 3 Ejercicio 1
%Implementamos algoritmo de overlap-add usando la convolucion circular para
%hallar la lineal, para ello, primero segmentamos la secuencia x en
%segmentos de longitud L y hacemos la convolucion cirular de L+M-1 puntos
%para calcular la convolucion lineal a partir de la circular
%Creamos una matriz con las convoluciones lineales y por ultimo las vamos
%sumando en las posiciones adecuadas
function [y] = solapa_y_suma (x,h,L)
%Primero fragmentamos x en sus segmentos de longitud L y los ponemos en la
%matriz X
M = length(h);
Xi = segmentos_ova(x,L);
%Despues hacemos una matriz con la convolucion circular de L + M -1 puntos
%de cada segmento con la respuesta al impulso, obteniendo asi, la
%convolucion lineal de los segmentos y h

%Para ello usaremos la funcion creada para el ejercicio 1, filtrado_DFT que
%calcula la convolucion lineal a traves de la circular, usando el dominio
%de la DFT
%
%El numero de segmentos de la matriz es
Dimensiones = size(Xi);
N_segmentos = Dimensiones(1);
Nmax = L*N_segmentos+(M-1);
y = zeros(1,Nmax);  %Respuesta final
%Tiene la longitud maxima posible, cuando el numero de muestras de x no es
%multiplo de L
Yci = zeros(N_segmentos,L+M-1); %Matriz de convoluciones lineales (circulares)
for i=1:1:N_segmentos      %Por cada segmentos
    Yci(i,:) = filtrado_DFT(Xi(i,:),h);
end;
%Ya tenemos la matriz de convoluciones lineales, ahora creamos una matriz
%con las convoluciones desplazadas
Yd = zeros(N_segmentos,Nmax);
for i=1:1:N_segmentos
        Yd_aux =  [zeros(1,(i-1)*L) Yci(i,:)];
        Yd(i,:) = [Yd_aux zeros(1,Nmax-length(Yd_aux))];
end;
%Ahora sumamos
for i=1:1:N_segmentos
    y = y + Yd(i,:);
end;






    