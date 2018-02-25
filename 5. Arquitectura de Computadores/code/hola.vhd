use std.textio.all;

  -- Esto es un comentario

entity hola_mundo is 
end;

architecture comportamiento of hola_mundo is

begin

process
	variable lin : line;
begin
write (lin, string'("Hola Mundo"));
writeline(output, lin);
wait;
end process;

end;