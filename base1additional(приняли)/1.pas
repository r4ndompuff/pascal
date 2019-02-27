program dop1(input, output); //N1
var P, Q, n, drob, cel : integer;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 1');
	write('Type 2 digits which will be divided and number of digits that will shown after a dot: ');
	read(P, Q, n);
	drob := 0;
	cel := P div Q;
	P := P mod Q;
	repeat
		n := n - 1; //Сделал так, чтобы не вводить лишнюю переменную
		P := P * 10;
		drob := drob * 10 + P div Q;
		P := P mod Q;
	until n = 0;
	write('Answer: ', cel, '.', drob);
end.
	