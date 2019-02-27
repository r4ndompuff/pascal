program aksakdjakdsj(input, output); //5.42
var x, max, z, y : real;
i, n : integer;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.42');
	write('Type amount of dots (coordinates): ');
	read(n);
	max := 0;
	write('Type in coordinates x and y: ');
	for i := 1 to n do begin
		read(x, y);
		z := sqrt(x * x + y * y);
		if z > max then max := z;
	end;
	writeln('Min radius for "full" circle: ', max); //Выводит по правилам паскаля через степень Е (ибо доп. условия на вывод не было)
end.