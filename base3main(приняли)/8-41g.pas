{$R+,B+}
program p_41(input, output); //8.41(г)
const
	n = 10;
var 
	x: array[1..n] of real;
	bool: boolean;
	p, i, j, savi, M, L, R : integer;
	k: real;
	
begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.41(g)');
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
	
	// Бинарный поиск
	for j := savi to N do begin
			L := 1;
			R := j - 1;
			bool := false;
			while (bool = false) and (L <= R) do begin
				M := (L + R) div 2;
				if x[j] < x[M] then R := M - 1
					else L := M + 1;
			end;
			k := x[j];
			for i := j downto M + 1 do
				x[i] := x[i-1];
			x[M] := k;
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


