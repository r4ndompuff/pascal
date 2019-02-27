program p_21(input, output); //6.21
var x : char;
i : integer;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.21');
	i := 0;
	write('Type in text and this program will count all "abc" with a dor on the end: ');
	repeat
	read(x);
	if x = 'a' then begin
		read(x);
		if x = 'b' then begin
			read(x);
			if x = 'c' then i := i + 1;
		end;
	end;
	until x = '.';
	writeln(i, '"abc" in your text');
end.
	