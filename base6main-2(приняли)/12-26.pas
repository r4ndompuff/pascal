{$R+,B+}
program p_26(input, output); //12.26

function main: integer;
var
	c, op: char;
	L, R: integer;
begin
	read(c);
	if (c <= '9') and (c >= '0') then 
		main := ord(c) - ord('0')
	else begin
		op := c;
		read(c);
		L := main;
		read(c);
		R := main;
		case op of
		'M': begin if
				L > R then 
					main := L
				else 
					main := R;
			 end;
		'm': begin if
				L < R then
					main := L
				else
					main := R;
			 end;
		end;
		read(c);
	end;
end;


begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.26');
	writeln('Type in a formula: ');
	writeln(main);
end.
	