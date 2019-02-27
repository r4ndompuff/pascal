program p_41(input, output); //6.41(k)
var bool : boolean;
x, y: char;
xint, yint: integer;

begin
	writeln('Lovyagin Andrey, group 112, exercise № 6.41(k)');
	write('Type digits sequency with "." at the end: ');
	bool := true;
	read(x);
	xint := ord(x) - ord('0');
	read(y);
	if y = '.' then // Если ввели один символ
		if (xint <= 9) and (xint >= 0) then 
			write('Everything okey! Your number in 0123456789')
			else write('Please, try another sequency...') // Если ввели неправильный символ
		else begin
	repeat
		yint := ord(y) - ord('0');
		if yint <> xint + 1 then bool := false;
		xint := yint;
		read(y);
	until (y = '.') or (bool = false);
	if bool then write('Everything okey! Your number in 0123456789')
		else write('Please, try another sequency...');
	end;
    writeln;
end.
	
