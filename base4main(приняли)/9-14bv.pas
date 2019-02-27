{$R+,B+}
program p_29(input, output); //9.14(b,v)
const 
	n = 10;
var 
b, v: array[1..n, 1.. n] of integer;
i, j, k, t : integer;


begin
	writeln('Lovyagin Andrey, group 112, exercise № 9.14bv');
	for i := 1 to n do begin
		k := 1;
		for j := 1 to n do begin
			t := i;
			b[i, j] := j + (t * 10 - 10);
			if j >= i then begin 
						v[i, j] := k;
						k := k + 1;
			end
			else
				v[i, j] := 0;
		end;
	end;
	
	for i := 1 to n do begin
		for j := 1 to n do
			write(b[i, j]:4);
		writeln;
	end;
	writeln;
	writeln;
	for i := 1 to n do begin
		for j := 1 to n do
			write(v[i, j]:3);
		writeln;
	end;

end.


