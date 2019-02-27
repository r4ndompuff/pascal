{$R+,B+}
program p_60(input, output); //11.60
const
	m = 5;
	n = 3;
type
	matr = array[1..n, 1..m] of integer;
var 
	a,b,c:matr;
	ak,bk,ck,max:integer;
	
procedure input(var a: matr);
var
	i,j:integer;
begin
	for i := 1 to n do
		for j := 1 to m do
			read(a[i,j]); 							
end;

function stcount(var a:matr): integer;
var
	sum,k,i,j:integer;
begin
	k := 0;
	for i := 1 to n do begin
		sum := 0;
		for j := 1 to m do
			if a[i, j] = 0 then
				sum := sum + 1;
		if sum = m then k := k + 1;
	end;
	stcount := k;
end;
			
procedure output(var a: matr);
var
	i,j:integer;
begin

	for i := 1 to n do begin
		for j := 1 to m do
			write(a[i,j], ' '); 
		writeln;
	end;
	writeln;
end;



begin
	writeln('Lovyagin Andrey, Group 112, exercise № 11.60');
	writeln('Type in 1st matrix: ');
	input(a);
	writeln('Type in 2nd matrix: ');
	input(b);		
	writeln('Type in 3rd matrix: ');
	input(c);
	ak := stcount(a);
	bk := stcount(b);
	ck := stcount(c);
	if (ak > bk) and (ak > ck) then max := ak
		else if bk > ck then max := bk
			else max := ck;
	writeln('Your matrix: ');
	if max = ak then Output(a);
	if max = bk then Output(b);
	if max = ck then Output(c)
end.
	