program p_32(input, output); //6.32
var x,y : char;
a, b, z, max : integer;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.32');
	a := 0;
	b := 0;
	writeln('Type numbers in 7 SC (system of calculating) after last one type ".": ');
	read(x);
	max := 0;
	repeat
	z := ord(x) - ord('0');
	a := a * 7 + z;
	read(x);
	until (x = ' ') or (x = '.');
	if x <> '.' then
	repeat
		read(y);
		repeat
			z := ord(y) - ord('0');
			b := b * 7 + z;
			read(y);
		until (y = ' ') or (y = '.');
		if b > max then max := b
			else if a > max then
				max := a;
		a := 0;
		b := 0;
	until y = '.'
	else
		max := a;
writeln('Max number in 10 SC is ', max);
End.