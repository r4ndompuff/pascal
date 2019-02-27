{$R+,B+}
program p_15(input, output); //12.15

function digits: integer;
var
	ch: char;
	i: integer;
begin
	read(ch);
	i := 0;
	if ch <> '.' then begin
		i := digits;
		if (ch <= '9') and (ch >= '0') then
			i := i + 1;
	end;
	digits := i;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.15');
	writeln('Type in a text: ');
	writeln(digits);
end.
	