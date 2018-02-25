
             --Creamos entidad de sumador propagador de 3 bits
            --utilizando 3 entidades sum_elemental


entity sumprop3 is 
generic (retardo_puerta:time := 3 ns);
port (a: IN bit_vector (2 downto 0);
      b: IN bit_vector (2 downto 0);
      cin: In bit; --Acarreo entrada
      s: OUT bit_vector (2 downto 0);
      cout: OUT bit); --Acarreo salida
   end;
   




 architecture sumprop3_rtl of sumprop3 is
 
  signal ci :bit_vector (2 downto 0) := "000";  --Acarreos internos
 
 begin
 ci(0) <= cin;
                
  -- Instanciamos los 3 sumadores y hacemos las conexiones entre ellos

ss0 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(0),b(0),ci(0),s(0),ci(1));  -- Conectamos el acarreo de salida
ss1 : entity work.sum_elemental generic map (5 ns) -- al acarreo de entrada del siguiente
 	port map (a(1),b(1),ci(1),s(1),ci(2));
ss2 : entity work.sum_elemental generic map (5 ns) 
 	port map (a(2),b(2),ci(2),s(2),cout);
--cout es el acarreo de salida al sumprop3


end;

