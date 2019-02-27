{$R+,B+}
program p_29(input, output); //8.29(ж)
const 
	n = 10;
var 
	x: array[1..n] of real;
	i, j: integer;

begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.29(j)');
	writeln('Type a sequence: ');
	// Обнуляем массив
	for i := 1 to n do
		read(x[i]); 
	// Сама программа
	i := 1;
	j := 1;
	while i <> n do begin
		if x[i] <> 0 then begin
				x[j] := x[i];
				j := j + 1;
		end;
		i := i + 1;
	end;
	for i := j to n do
		x[i] := 0;
	// Выводим массив
	writeln('Your new sequence: ');
	for i := 1 to n do
		write(x[i]:1:2,' ');
end.


