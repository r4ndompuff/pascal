{$R+,B+}
program p_27(input, output); //11.27
const
	n = 3;
type
	matr = array[1..n, 1..n] of real;
var 
	a, b, x: matr;
	tr1, tr2: real;

procedure typein(var a: matr);
var i,j:integer;
begin
	for i:= 1 to n do
		for j := 1 to n do
			read(a[i, j]);
end;
		
function trace(var a: matr): real;
var 
	k: real;
	i,j:integer;
begin
	k := 0;
	i := 1;
	j := 1;
	while j <= n do begin
		k := k + a[i, j];
		i := i + 1;
		j := j + 1;
	end;
	trace := k;
end;


procedure square(a: matr; var x: matr);
var 
	i, j, i1, j1: integer;
begin
	for i := 1 to n do
		for j := 1 to n do begin
			i1 := 1;
			j1 := 1;
			x[i, j] := a[i1, j] * a[i, j1];
			i1 := 2;
			j1 := 2;
			while i1 <= n do begin
					x[i, j] := x[i, j] + a[i1, j] * a[i, j1];
				j1 := j1 + 1;
				i1 := i1 + 1;		
			end;
		end;	
end;
	
procedure print(var x: matr);
var
	i,j:integer;
begin
	for i := 1 to n do begin
		for j := 1 to n do
			write(x[i, j]:1:1, ' ');
		writeln;
	end;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 11.27');
	writeln('Type in 1st matrix: ');
	typein(a);
	writeln('Type in 2nd matrix: ');
	typein(b);
	tr1 := trace(a);
	tr2 := trace(b);
	writeln('Trace 1st: ', tr1);
	writeln('Trace 2nd: ', tr2);
	if tr1 > tr2 then square(a, x)
		else square(b, x);
	print(x);
	

end.
	