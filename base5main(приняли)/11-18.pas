{$R+,B+}
program p_18(input, output); //11.18
var a, b, c: integer;

function NOD1(a,b,c: integer): integer;
begin
	while (a <> b) or (b <> c) do begin
		if a <> b then
			if a > b then a := a - b
				else b := b - a;
		if b <> c then
			if b > c then b := b - c
				else c := c - b;
		if c <> a then
			if c > a then c := c - a
				else a := a - c;
		if (a = b) and (b = c) then NOD1 := a;
	end;
end;

function NOD2(a,b,c: integer): integer;
begin
	while (a <> b) and (b <> c) do begin
		if a <> b then
			if a > b then a := a mod b
				else b := b mod a;
		if (b <> c) and (b <> 0) then
			if b > c then b := b mod c
				else c := c mod b;
		if (c <> a) and (a <> 0) then
			if c > a then c := c mod a
				else a := a mod c;
		if (a = b) or (b = c) or (a = c) then
			if a = b then NOD2 := c
				else if b = c then Nod2 := a
					else NOD2 := b;
		if (a = 1) or (b = 1) or (c = 1) then begin 
			NOD2 := 1;
			b := 1;
			a := b;
			c := a;
		end;
	end;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 11.18');
	writeln('Type in a 3 numbers: ');
	read(a, b, c);
	writeln('First method: ', NOD1(a,b,c));
	writeln('Second method: ', NOD2(a,b,c));
end.
	