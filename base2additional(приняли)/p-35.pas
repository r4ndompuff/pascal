program p_35(input, output); //6.35
var x, znak : char;
sum, chislo, xint : integer;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.35');
	write('Type a numbers and + or - between them and "." at the end: ');
	sum := 0;
	// Получаем первое число и знак, по условию к-во чисел > 1
	read(x);
	repeat
		xint := (ord(x) - ord('0'));
		chislo := chislo * 10 + xint;
		read(x);
	until (x = '+') or (x = '-') or (x = '.');
	sum := sum + chislo;
	znak := x;
	// Считаем выражение
	repeat
		chislo := 0;
		read(x);
		repeat
			xint := (ord(x) - ord('0'));
			chislo := chislo * 10 + xint;
			read(x);
		until (x = '+') or (x = '-') or (x = '.'); //После этого x имеет или +, или -
		if znak = '+' then 
			sum := sum + chislo
			else if znak = '-' then 
				sum := sum - chislo;
		znak := x;
	until (x = '.');
	write('Sum of this sequency = ', sum);
end.