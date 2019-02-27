program p_23(input, output); //6.23 (в)
var x, y, z : char;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.23(v)');
	write('Type your text and we will replace all "cb" on "с": ');
	read(x);
	write('Your new text, are you happy?? : ');
	repeat
		read(y);
		if x = 'c' then
			if y = 'b' then begin
				read(z);
				write(x);
				x := z;
			end
			else begin
				write(x);
				x := y;
			end
		else begin
			write(x);
			x := y;
		end;
	until (y = '.') or (x = '.');
end.