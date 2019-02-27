program p_34(input, output); //6.34
var x, zn : char;
sum, xint : integer;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.34');
	write('Write a sequency for example like a+b-c-d+f. (!!!! Dot at the end !!!) ');
	read(x);
	sum := 0;
	xint := (ord(x) - ord('0'));
	repeat
		sum := sum + xint;
		read(zn);
		read(x);
		xint := (ord(x) - ord('0'));
		if zn = '-' then 
			xint := xint * (-1);
	until (x = '.') or (zn = '.');
	write('Summary = ', sum);
end.
	