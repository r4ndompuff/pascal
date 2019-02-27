program anve(input, output); //5.30(в)
var x, y, i, d, n : integer;
flag : boolean;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.30(в)');
	write('Type in amount of numbers: ');
	read(n);
	write('Write numbers: ');
	read(x);
	read(y);
	i := 2;
	flag := true;
	d := y - x;
	x := y;
	while flag and (i < n) do begin
		read(y);
		if ((y - x) = d) then begin
			i := i + 1;
			x := y;
		end
			else flag := false;
	end;
	if flag then write('Да/Yes')
		else write('Нет/No');
end.
			
		