{$R+,B+}
program p_54(input, output); //8.54
const
	n = 10;
var 
	a, b: array[1..n] of integer;
	bool: boolean;
	i, j, min: integer;


begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.54');
	
	writeln('Type in a 1st sequence: ');
	for i := 1 to n do
		read(a[i]);
	writeln('Type in a 2nd sequence: ');
	for i := 1 to n do
		read(b[i]);
		
	min := maxint;
	
	for i := 1 to n do begin
		bool := false;
		j := 1;
		while (bool = false) and (j <= n) do begin
			if a[i] = b[j] then bool := true;
			j := j + 1;
		end;
		if (bool = false) and (min > a[i]) then min := a[i];
	end;
	if min <> maxint then
		writeln('Minimum in 1st which we can`t find in 2nd: ', min)
			else
		writeln('There is no different number in 1st sequence from 2nd.');	
end.


