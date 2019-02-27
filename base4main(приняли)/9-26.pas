{$R+,B+}
program p_26(input, output); //9.26
const 
	m = 3;
var 
a, b, c: array[1..m, 1..m] of real;
i, j, i1 ,j1, k, l: integer;

begin
	writeln('Lovyagin Andrey, group 112, exercise № 9.26');
	writeln('Which division of matrix you want?');
	read(k);
	writeln('Fill in the matrix: ');
	for i := 1 to m do
		for j := 1 to m do
			read(a[i, j]);
	if k = 1 then c := a 
		else begin
			b := a;		
			for l := 1 to k - 1 do begin
				for i := 1 to m do
					for j := 1 to m do begin
						j1 := 1;
						i1 := 1;
						c[i, j] := 0;
						while j1 <= m do begin
							c[i, j] := c[i, j] + (a[i, j1] * b[i1, j]);
							j1 := j1 + 1;
							i1 := i1 + 1;
						end;	
					end;
				b := c;
			end;
		end;
	writeln('Your new matrix: ');
	for i := 1 to m do begin
		for j := 1 to m do
			write(c[i, j]:1:0, ' ');
		writeln;
	end;
end.