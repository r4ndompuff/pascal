{$R+,B+}
program p_26(input, output); //11.26
const
	n = 4;
type 
	vec = array[1..n] of real;
var 
	x, y, z: vec;
	x1, y1, z1: real;
{SOS!!! Я не могу понять, почему не работает, если сделать вектор длины n? Вроде бы всё верно,
но 1-ая процедура выдаёт ошибку на 4 вводе}
procedure typein(var x:vec);
var
	i: integer;
begin
	for i := 1 to 4 do
		read(x[i]);
end;

function min(var x:vec): real;
var
	i: integer;
	min1: real;
begin
	min1 := x[1];
	for i := 2 to n do
		if x[i] < min1 then begin
			min1 := x[i];
		end;
	min := min1;
end;

function pr(var x,y:vec): real;
var
	k: real;
	i: integer;
begin
	k := 0;
	for i := 1 to n do
		k := k + x[i] * y[i];
	pr := k;	
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 11.26');
	writeln('Type in three vectors: ');
	typein(x);
	typein(y);
	typein(z);
	x1 := min(x);
	y1 := min(y);
	z1 := min(z);
	if (x1 > y1) and (x1 > z1) then 
		writeln((pr(x, x) - pr(y, z)):1:1)
	else if y1 > z1 then 
		writeln((pr(y, y) - pr(x, z)):1:1)
	else 
		writeln((pr(z,z) - pr(x, y)):1:1);

end.
	