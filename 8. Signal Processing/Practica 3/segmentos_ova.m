%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 3 Ejercicio 1
%Convolucion lineal de 
function [XO] = segmentos_ova (x,L)
% Todos los segmentos seran de longitud L y el numero de segmentos es
T = length(x);
Ns = ceil(T/L); 
%Si la longitud de x no es multiplo de L
%tendremos una ultima muestra con algunos ceros al final
%Creamos matriz de segmentos
XO = zeros(Ns,L);

if(Ns>=2)
for i=1:1:Ns-1  %Por cada segmento intermedio
    for j=1:1:L %El valor de cada segmento es
    XO(i,j)=x(L*(i-1)+j);
    end;
end;
end;
%El ultimo segmento empezara en la posicion de x siguiente a 
pos_ult = L*(Ns-1);
%El ultimo segmento tendra un numero de muestas de x:
N_ult_seg = T - pos_ult;
%Asi pues
for j=1:1:N_ult_seg 
 XO(Ns,j)=x(pos_ult + j);
end
    
    
    
    
    