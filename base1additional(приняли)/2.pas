program p2_dop(input, output); //N2
var ch, timech, new, des, i, k : integer;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 2');
	write('Type positive integer: ');
	read(ch);
	new := 0;
	i := 0;
	des := 1;
	repeat
		timech := ch;   //timech - временная велечиная, с которой работаем, чтобы не портить "оригинал"
	 	timech := timech mod 10;
		if timech <> 3 then begin 
			new := timech * des + new;	
			i := i + 1;
			des := 1;
			for k := 1 to i do
				des := des * 10;
		end;
		ch := ch div 10;
	until ch = 0;
	writeln('Your number without digits = "3": ', new);
end.
	
	