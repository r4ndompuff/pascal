{$R+,B+}
program p_41(input, output); //8.41(в)
const
	n = 10;
var 
	x: array[1..n] of real;
	bool, fool: boolean;
	i, l, savi : integer;
	k: real;
	
	// Это был ужас, я думал, я уже никогда не лягу спать
	
begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.41(v)');
	writeln('Type in a sequency: ');
	for i := 1 to n do
		read(x[i]);
	// Сама программа
	i := 1;
	savi := 1;
	repeat
	bool := false;
	if i <> n - 1 then
		if x[i] <= x[i + 1] then begin
			i := i + 1;
			savi := i;
			bool := true;
		end;
	until bool = false;
	savi := savi + 1;
	
	for l := savi to N do begin
		bool := true;
		fool := true;
		i := l;
		while bool and fool do begin
			fool := false;
			k := x[i];
			x[i] := x[i - 1];
			x[i - 1] := k;
			i := i - 1;
			if i <= 1 then bool := false
				else if x[i - 1] > x[i] then fool := true
		end;
	end;
	for i := n downto 2 do 
		if x[i] < x[i-1] then begin
			k := x[i];
			x[i] := x[i - 1];
			x[i - 1] := k;
		end;
	// Вывод
	for i := 1 to n do
		write(x[i]:1:0, ' ');
end.


