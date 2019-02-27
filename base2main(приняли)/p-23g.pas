program p_23(input, output); //6.23(г)
var x, y, z : char;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.23(g)');
	write('Type in your text and program will replace all "ph" for "f" (put Dot at the end of the text!!!!!!): ');	
	read(x);
	write('Your new text, enjoy: ');
	repeat
	read(y);
	if x = 'p' then
		if y = 'h' then begin
			read(z);
			write('f');
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
	until (x = '.') or (y = '.');
end.