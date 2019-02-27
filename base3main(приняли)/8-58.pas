{$R+,B+}
program p_58(input, output); //8.58
const
	n = 10;
var 
	a: array[1..n] of char;
	bool: boolean;
	k, j, i: integer;
	
begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.58');
		writeln('Type in a string of chars: ');
		read(a[1]);
		bool := true;
		k := 1;
		for i := 2 to n do begin
			bool := true;
			read(a[i]);
			j := i - 1;
			while (j <> 0) and bool do begin
				if a[i] = a[j] then bool := false;
				j := j - 1;
			end;
			if bool then k := k + 1;;
		end;
		writeln;
	writeln('Amount of different symbols before dot: ', k);
end.


