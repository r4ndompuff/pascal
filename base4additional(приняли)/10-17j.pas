{$R+,B+}
program p_17j(input, output); //10.17(ж)
const
	n = 50;
	k = 8;
var 
	mas: array[1..n] of packed array[1..k] of char;
	ch: char;
	bool: boolean;
	i, j, l, f: integer;

begin
	writeln('Lovyagin Andrey, group 112, exercise № 10.17j');
	writeln('Type in your sequency: ');
	read(ch);
	j := 1;
	while (ch <> '.') and (j <= n) do begin
		i := 1;
		while ch = ' ' do
			read(ch);
		while (ch <> ' ') and (i <= k) and (ch <> '.') do begin
			mas[j][i] := ch;
			read(ch);
			i := i + 1;
		end;
		if i <= k then
			for l := i to k do
				mas[j][i] := ' ';
		j := j + 1;
	end;
	j := j - 1;
	writeln('Answer: ');
	for i := 1 to j - 1 do begin
		l := 1;
		bool := true;
		while (mas[i][l] <> ' ') and bool and (l <= k) do begin
			f := 1;
			if l <> 1 then
				while bool and (mas[i][l] <> ' ') and (f < l) do begin
					if mas[i][l] = mas[i][f] then bool := false;
					f := f + 1;
				end;
			l := l + 1;
		end;
		if bool and (mas[i] <> mas[j]) then write(mas[i],' ');
	end;
end.