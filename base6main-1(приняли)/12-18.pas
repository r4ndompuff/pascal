{$R+,B+}
program p_18(input, output); //12.18
var
	a,b: integer;


function nod1(a,b: integer): integer;
var
	x: integer;
begin
	if a <> b then 
		if a > b then 
			x := nod1(a-b,b)
		else 
			x := nod1(a,b-a)
	else
		x := a;
	nod1 := x;
end;



function nod2(a,b: integer): integer;
var
	x: integer;
begin
	if (a <> 0) and (b <> 0) then begin
		if a > b then 
			x := nod2(a mod b, b)
		else
			x := nod2(a, b mod a);
	end
	else begin
		if a = 0 then 
			x := b
		else
			x := a;
	end;
	nod2 := x;
end;



begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.18');
	writeln('Type in 2 numbers: ');
	read(a, b);
	writeln('First NOD (-): ', nod1(a,b));
	writeln('Second NOD (div): ', nod2(a,b));
end.
	