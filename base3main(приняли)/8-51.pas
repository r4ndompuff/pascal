{$R+,B+}
program p_51(input, output); //8.51
const
	n = 10;
var 
	max, min, sum, i: integer;
	a: array[1..n] of integer;
	

begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.51');
	writeln('Type in a sequence: ');
		read(a[1], a[2]);
		min := 1;
		max := 2;
	for i := 3 to n do begin
		read(a[i]);
		if (a[i] >= a[max]) or (a[i] <= a[min]) then begin
			if a[i] >= max then
				max := i;
			if a[i] < min then begin
					min := i;
			end;
		end;	
	end;
	sum := 0;
	writeln(max,min);
	if min < max then
			for i := min to max do
				sum := sum + a[i]
		else
			for i := max to min do
				sum := sum + a[i];
	if max <> min then
			writeln('Answer: ', sum)
		else
			writeln('No answer');
end.



