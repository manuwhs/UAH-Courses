%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 4 Ejercicio 1
%Periodograma de Welch
function [Sx] = periodograma (x,N,L,S,ventana)
% Lo primero que haremos será segmentar las N muestras de x y ponerlas en
% una matriz: Segmentos
 %Todos los segmentos seran de longitud L, y contiene S muestras del
% anterior y S muestras del siguiente.
% L deberia ser la longitud de la ventana, si no esto...
% Cada segmento contiene L - S nuevas muestras de x, exepto el primero que
% tiene Lpor lo que el numero de segmentos sera:
Ns = 1 + ceil((N-L)/(L-S)); 
%Tenemos dos casos especiales, el primero donde sus primeras S muestras no
%son solapadas y el último donde si la longitud de x no es multiplo de 
%tendremos un úlyimo segmento con algunos ceros al final
%Creamos matriz de segmentos

Segmentos = zeros(Ns,L);

%Ponemos el primer segmento.
for i=1:1:L
Segmentos(1,i) = x(i);
end
%Ponemos los segmentos intermedios
if(Ns>=3)
for i=2:1:Ns-1  %Por cada segmento intermedio
    for j=1:1:L %El valor de cada segmento es
    Segmentos(i,j)=x((L-S)*(i-1) + j);
    end;
end;
end;
%El ultimo segmento empezara en la posicion siguiente a 
pos_ult = (L-S)*(Ns-1);
%El ultimo segmento tendra un numero de muestas de x:
N_ult_seg = N - pos_ult;
%Asi pues
for j=1:1:N_ult_seg 
Segmentos(Ns,j)=x(pos_ult + j);
end

%Ya tenemos los segmentos!!!
%Multiplicamos ahora la ventana por cada segmentos
%Se supone que la ventana debe ser igual o menor que L:

w = ventana.';
w = resize(w,L);
for i = 1:1:Ns
   Segmentos(1,:) = Segmentos(i,:).*w; 
end;
%Ya tenemos xi[n]*w[n]
%Calculamos ahora el modulo de su DFT al cuadrado:
for i = 1:1:Ns
   Segmentos(1,:) = abs(fft(Segmentos(i,:))).*abs(fft(Segmentos(i,:))); 
end;

%Entonces sumamos el modulo de la DFT al cuadrado de todos los segmentos:
Sx = zeros(1,L);
for i = 1:1:Ns
   Sx = Sx + Segmentos(1,:);
end;
% Ya tenemos casi todo, falta calcular el Factor de energia de la ventana:

%Calculamos ahora la ventana:

Lw = length(w);
%Energía del factor de ventana:
    U = 0;
   for i=1:1:Lw
       U = U + abs(w(i))*abs(w(i));
   end;    
  U = U/Lw;
  
% Finalmente 

Sx = Sx/(L*Ns*U);



