%Andrés Beato Ollero y Manuel Montoya Catalá 
% Practica 1 Ejercicio 1
%Apartado a) 
%Siendo una funcion C(z), los polos y ceros que completan el sistema
%segun los datos del enunciado son:
% C2 = 1/C1* = 
% P2 = 1/P1* = 

%Apartado b)
%Siendo la transformada Z inverda de C(z) una secuencia real, sabemos que
%H(z) tambien tiene coeficientes reales por lo que tenemos que añadir los
%polos y ceros conjugados correspondientes
% C3 = C1* =
% C4 = C2* = 
% P3 = P1* =
% P4 = P2* =

%Apartado c)
% Representacion de C(z) en el plano Z
C1 = 0.5 + 0.5i;
C2 = (1/conj(C1));
C3 = conj(C1);
C4 = conj(C2);

P1 = -0.5 + -0.5i;
P2 = (1/conj(P1));
P3 = conj(P1);
P4 = conj(P2);

Zs = [ C1 C2 C3 C4];
Zs = Zs';
Ps = [ P1 P2 P3 P4];
Ps = Ps';

figure(1);    %Crea ventana para graficar diagrama
zplane(Zs,Ps);  %Grafica diagrama

%Para que sean causales y estables todos los polos deben estar dentro de
%radio unidad y para que sea real la respuesta al impulso, cada cero y polo
%que no esten en el eje real debe tener su conjugado.
%Los posibles sistemas H(z) son:
%Sistema 1:

Z1s = [C1 ;C3];
P1s = [P1; P3];
[num1, den1]= zp2tf(Z1s,P1s,1);  %Nos da la funcion de transferencia
                                %a partir de polos y ceros
                                
[H1,w] = freqz(num1,den1,1024);

figure(2);
plot(w,abs(H1));              % Grafica el modulo
xlabel('Pulsacion omega (0 - pi) [rad]');
ylabel('Modulo');
title('Sistema 1');
figure(3);
plot(w,angle(H1));              % Grafica la fase
xlabel('Pulsacion omega (0 - pi) [rad]');
ylabel('Fase [rad]');
title('sistema 1');
figure(4);
Gp1 = grpdelay(num1,den1,1024);
plot(w,Gp1);
xlabel('Pulsacion omega (0 - pi) [rad]');
ylabel('Retardo de grupo');
title('sistema 1');

%Sistema 2:

Z2s = [C2; C4];
P2s = [P1 ;P3];
[num2, den2]= zp2tf(Z2s,P2s,1);  %Nos da la funcion de transferencia
                                %a partir de polos y ceros
                                
[H2,w] = freqz(num2,den2,1024);

figure(5);
plot(w,abs(H2));              % Grafica el modulo
xlabel('Pulsacion omega (0 - pi) [rad]');
ylabel('Modulo');
title('Sistema 1');
figure(6);
plot(w,angle(H2));              % Grafica la fase
xlabel('Pulsacion omega (0 - pi) [rad]');
ylabel('Fase [rad]');
title('sistema 1');
figure(7);
Gp2 = grpdelay(num2,den2,1024);
plot(w,Gp2);
xlabel('Pulsacion omega (0 - pi) [rad]');
ylabel('Retardo de grupo');
title('sistema 1');












