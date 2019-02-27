{$R+,B+}
program p_53(input, output); //8.53
const
	n = 10;
var 
	x, y: array[1..n] of integer;
	maxi, maxj, rast, rastmax, i, j: integer;
begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.53');
	writeln('Type a coordinates x, y: ');
	// Заполнение массива
	for i := 1 to n do
		read(x[i], y[i]);
		
	rastmax := -maxint;
	for  i := 1 to n-1 do
		for j := i + 1 to n do begin
			rast := sqr(x[i] - x[j]) + sqr(y[i] - y[j]);
			if rast > rastmax then begin
				rastmax := rast;
				maxi := i;
				maxj := j;
			end;
		end;
	writeln('Answer: i(1)= ', maxi, ', i(2)= ', maxj);
	
end.


