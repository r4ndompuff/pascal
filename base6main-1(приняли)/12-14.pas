{$R+,B+}
program p_14(input, output); //12.14

function max: integer;
var
	x, m4x: integer;
begin
	read(x);
	m4x := 0;
	if x = 0 then 
		max := 0
	else begin
		m4x := max;
		if x > m4x then m4x := x;
	end;
	max := m4x;
end;


begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.14');
    writeln('Type in a natural sequency: ');
    writeln(max);
end.
	
