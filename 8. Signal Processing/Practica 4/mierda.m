%Andrés Beato Ollero y Manuel Montoya Catalá 
 x1 = [1 2 3 4 4];
 X1 = fft(x1);
 x2 = 2*x1;
 X2 = fft(x2);
 w = [2 2 2 2 2];
 W = fft(w);
Z = conv(X1,W);
T = 0;
 X20 = 0;
  X10 = 0;
 for i=1:1:5
     X20 = X20 + abs(X2(i))*abs(X2(i));
 end;
  for i=1:1:5
     X10 = X10 + abs(X1(i))*abs(X1(i));
 end;
   for i=1:1:9
     T= T + abs(Z(i))*abs(Z(i));
 end;
     
  %Energía:
    U = 0;
   for i=1:1:5
       U = U + abs(w(i))*abs(w(i));
   end;    
 U = U/5;