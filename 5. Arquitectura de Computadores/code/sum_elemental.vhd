entity sum_elemental is 
generic (retardo_puerta:time := 3 ns);
port (a: IN bit;
      b: IN bit;
      c: In bit; --Acarreo
      s: OUT bit;
      c2: OUT bit); --Acarreo salida
   end;
   
 architecture sum_elem_rtl of sum_elemental is
  signal Xs1,Xc1,Xc2,Xc3 : bit;
   begin
    
     Xs1 <= a xor b after retardo_puerta;
     s <= Xs1 xor c after retardo_puerta;

     Xc1 <= a and b after retardo_puerta;
     Xc2 <= a or b after retardo_puerta;
     Xc3 <= c and Xc2 after retardo_puerta;
     c2 <= Xc1 or Xc3 after retardo_puerta;
     

     end;
