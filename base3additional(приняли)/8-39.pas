{$R+,B+}
program p_39(input, output); //8.39
const
	n = 10;
	n1 = 11;
var 
	x: array[1..n] of 1..n1;
	k, i, j, M, L, R: integer;
	bool: boolean;
begin
	writeln('Lovyagin Andrey, Group 112, exercise № 8.39');
	writeln('Type in a integer from 1 to ',n1,': ');
	read(k);
	writeln('Your vector: ');
	j := 1;
	for i := 1 to n do begin
		if i <> k then begin
				x[i] := j;
				j := j + 1;
		end
			else begin
				x[i] := j + 1;
				j := j + 2;
			end;
		writeln(x[i]);
	end;

	L := 1;
	R := n1 + 1;
	bool := true;
	while bool and (R - L <> 0) do begin
		M := L + (R - L) div 2;
		if m = n1 then 
			bool := false
		else if m = 1 then 
			bool := false
		else if (m <> x[m - 1]) and (m <> x[m]) then 
			bool := false
		else if m = x[m - 1] then 
			r := m
		else if m = x[m] then 
			l := m;
	end;
	if R - L = 0 then m := r;
	writeln('Your integer: ', M);
end.