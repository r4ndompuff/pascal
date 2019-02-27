{$R+,B+}
program p_57(input, output); //8.57
const
	n = 10;
var
	a: array[1..n] of char;
	i, j: integer;
	bool: boolean;
	

begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.57');
	writeln('Type in a string of chars: ');
	read(a[1]);
	writeln('Your new string of chars: ');
	write(a[1]);
	bool := true;
	for i := 2 to n do begin
		bool := true;
		read(a[i]);
		j := i - 1;
		while (j <> 1) and bool do begin
			j := j - 1;
			if a[i] = a[j] then bool := false;
		end;
		if bool then write(a[i]);
	end;
	writeln;
end.

