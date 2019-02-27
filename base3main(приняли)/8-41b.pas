{$R+,B+}
program p_41(input, output); //8.41
const
	n = 10;
var 
	x: array[1..n] of real;
	k, i, t: integer;
	bool: boolean;
	l: real;
	

begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.41b');
	writeln('Type a sequence: ');
	for i := 1 to n do
		read(x[i]);
	// Сама программа
	bool := false;
	t := n;
	while bool = false do begin
		bool := true;
		for i := 1 to t - 1 do
			if x[i] > x[i + 1] then begin
				l := x[i + 1];
				x[i + 1] := x[i];
				x[i] := l;
				k := 1;
			end;
		if k = 1 then 
			bool := false;
		k := 0;
		t := t - 1;
	end;
	// Вывод
	writeln('Your new sequency: ');
	for i := 1 to n do
		write(x[i]:1:2, ' ');		
end.