program p_26(input, output); //6.26(в)
var x, a, b, kon : char;
i : integer;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.26(v)');
	write('Write your text (like %word%,%word%,... .): ');
	i := 0;
	repeat
		read(x);
		a := x;
		repeat
			b := x;
			read(x);
			kon := x;
		until (x = ',') or (x = '.');
		if b = a then i := i + 1;
	until kon = '.';
	writeln('The number of word that ending and starting with same letter is ', i);
end.