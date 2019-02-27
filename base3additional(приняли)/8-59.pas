{$R+,B+}
program p_59(input, output); //8.59
var 
	x, z: char;
	max: integer;
	W: array['a'..'z'] of boolean;
	L: array['a'..'z'] of integer;
begin
	writeln('Lovyagin Andrey, Group 112, exercise № 8.59');
	read(x);
	for z := 'a' to 'z' do begin
		w[z] := false;
		L[z] := 0;
	end;
	while (x <> '.') do begin
		while (x <> '.') and (x <> ',') do begin
			w[x] := true;
			read(x);
		end;
		for z := 'a' to 'z' do
			if w[z] = true then begin
				w[z] := false;
				L[z] := L[z] + 1;
			end;
		if x <> '.' then read(x);
	end;
	max := l['a'];
	for z := 'b' to 'z' do
		if l[z] > max then max := l[z];
	for z := 'a' to 'z' do
		if l[z] = max then write(z,' ');
end.
	