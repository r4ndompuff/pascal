program progra_third(input, output); //5.20(д)
var i, j : integer;
eps, x, s, t, z : real;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.20(д)');
	write('Type |x| < 1 : ');
	read(t);
	s := 0;
	x := t;
	i := 1;
	eps := 1E-5;
	z := 1;
	//Первый способ (через сумму)
	while (abs(x) > eps) do begin
		s := s + x;
		z := 1;
		x := t;
		i := i + 1;
		for j := 1 to (i * 2 - 1) do
			z := z * x;
		x := z / (i * 2 - 1);
		if (i mod 2 = 0) then x := x * (-1);
	end;
	writeln('First method of calculating arctg: ', s); 
	//Второй способ
	writeln('Second method of calculating arctg: ', arctan(t));
end.
		