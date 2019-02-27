{$R+,B+}
program p_56(input, output); //8.56
const
	n = 10;
var 
	sym: array['a'..'z'] of integer;
	i: integer;
	c: char;
begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.56');
	writeln('Type in a string of chars: ');
	for c := 'a' to 'z' do
				sym[c] := 0;
	for i := 1 to n do begin
		read(c);
		sym[c] := sym[c] + 1;
	end;
	for c := 'a' to 'z' do
		if sym[c] = 1 then write(c,' ');
end.


