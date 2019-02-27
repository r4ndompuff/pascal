{$R+,B+}
program p_55(input, output); //8.55
const
	n = 10;
var 
	a: array[1..n] of integer;
	i, j, k: integer;


begin
	writeln('Lovyagin Andrey, group 112, exercise № 8.55');
	writeln('Type in a sequence: ');
	for i := 1 to n do
		read(a[i]);
	k := 0;
	for i := 1 to n - 1 do
		for j := i + 1 to n do
			if a[i] > a[j] then k := k + 1;
	writeln('Asnwer: ', k);
end.


