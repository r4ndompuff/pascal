program p5_46(input, output); //5.46
var n, x, y, i, k : integer;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.46');
	//Неубывающая - значит, что a[i] >= a[i+1]
	write('Type in amount of integer numbers: ');
	readln(n);
	write('Type in integer numbers: ');
	read(x);
	k := 1;
	for i := 2 to n do begin
		read(y);
		if y <> x then k := k + 1;
		x := y;
	end;
	write('Amount of differen numbers: ', k);
end.
	