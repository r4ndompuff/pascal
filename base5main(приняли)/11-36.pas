{$R+,B+}
program p_36(input, output); //11.36
type
	str = packed array[1..6] of char;
	mas = array[1..3] of str;
var
	w,x: str;
	ma: mas;
	l: char;
	j, i: integer;
	
procedure readword(var w: str);
var j: integer;
begin
	i := 1;
	read(l);
	while (l <> ',') and (l <> '.') do begin
		w[i] := l;
		read(l);
		i := i + 1;
		x[1] := l;
	end;
	if i <= 6 then
		for j := i to 6 do
			w[j] := ' ';
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 11.36');
	writeln('Type in a text: ');
	j := 1;
	ma[3] := '     ';
	ma[2] := '     ';
	repeat
		readword(w);
		ma[j] := w;
			if ma[1] = ma[3] then write(ma[2],x[1]);
		if j = 3 then begin
			ma[1] := ma[2];
			ma[2] := ma[3];
		end;
		if j < 3 then j := j + 1;		
	until x[1] = '.';
end.
	