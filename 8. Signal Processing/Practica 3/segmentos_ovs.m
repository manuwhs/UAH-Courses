%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 3 Ejercicio 1
%Convolucion lineal de 
function [XO] = segmentos_ovs (x,L,M)
% Todos los segmentos seran de longitud L, y contiene M-1 muestras del
% anterior y M-1 muestras del siguiente.
% Cada segmento L - M + 1 nuevas muestras de nx por lo que el numero de
% segmentos sera:
T = length(x);
Ns = ceil(T/(L-M+1)); 
%Tenemos dos casos especiales, el primero donde sus M-1 primeras muestras
%son 0 y el ultimo donde, si la longitud de x no es multiplo de (L-M+1)
%tendremos una ultima muestra con algunos ceros al final
%Creamos matriz de segmentos
XO = zeros(Ns,L);
%Ponemos el primer segmento, siendo los M-1 primeros terminos ya 0
for i=M:1:L
XO(1,i) = x(i-(M-1));
end
%Ponemos los segmentos intermedios
if(Ns>=3)
for i=2:1:Ns-1  %Por cada segmento intermedio
    for j=1:1:L %El valor de cada segmento es
    XO(i,j)=x((L-(M-1))*(i-1)-(M-1)+j);
    end;
end;
end;
%El ultimo segmento empezara en la posicion siguiente a 
pos_ult = (L-(M-1))*(Ns-1)-(M-1);
%El ultimo segmento tendra un numero de muestas de x:
N_ult_seg = T - ((L-(M-1))*(Ns-1)-(M-1));
%Asi pues
for j=1:1:N_ult_seg 
 XO(Ns,j)=x(pos_ult + j);
end
    
    
    
    
    