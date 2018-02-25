%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 3 Ejercicio 1
%Implementamos algoritmo de overlap-save
function [y] = solapa_y_guarda(x,h,L)
%Primero fragmentamos x en sus segmentos de longitud L
M = length(h);
Xi = segmentos_ovs(x,L,M);
%Despues hacemos una matriz con la convolucion circular de todos los
%segmentos con la respuesta del sistema h, rellenada con 0`s
h = resize(h,L);            
%El numero de segmentos de la matriz es
Dimensiones = size(Xi);
N_segmentos = Dimensiones(1);
Yci = zeros(N_segmentos,L); %Matriz de convoluciones circulares
for i=1:1:N_segmentos      %Por cada segmentos
    Yci(i,:) = Conv_Circular(h,Xi(i,:));    
end;
%Ahora de cada convolucion circular de los segmentos cogemos las muestras a
%partir de la numero M y las concatenamos formando asi la respuesta del
%sistema a la secuencia x
y = zeros(1,N_segmentos*(L-(M-1)));
for i = 1:1:N_segmentos
    for j = 1:1:(L -(M-1))
    y((i-1)*(L-(M-1))+j)=Yci(i,j+M-1);
    end;
end;
    
    
    


    
    
    
    
    