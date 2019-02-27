{$R+,B+}
program p_16v(input, output); //10.16v
const 
	k = 5;
	n = 30;
var 
	a: array[1..n] of packed array[1..k] of char;
	i, j, t : integer;
	l: char;
	bool, bl: boolean;


begin
	writeln('Lovyagin Andrey, group 112, exercise № 10.16v');
	writeln('Type 30 words: ');
		writeln('Your new text: ');
	i := 1;
	bl := false;
	repeat
		j := 1;
		read(l);
		repeat
			a[i][j] := l;
			read(l);
			j := j + 1;
		until (j > k) or (l = ',') or (l = '.');
		if j < k + 1 then
			for t := j to k do
				a[i][t] := ' ';
		i := i + 1;
	until (l = '.') or (i > n);
	for j := 1 to i - 1 do begin
		bool := true;
		if j <> 1 then
			for t := j - 1 downto 1 do
				if a[j] = a[t] then bool := false;
		if bl then
			if bool then
				write(',', a[j]);	
		if bl = false then
			if bool then begin
				write(a[j]);
				bl := true;
			end;
	end;
	write('.');
end.
	