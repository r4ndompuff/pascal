{$R+,B+}
program p_27(input, output); //9.27
const 
	n = 5;
var 
a: array[1..n, 1..n] of integer;
i, j: integer;
bool: boolean;


begin
	writeln('Lovyagin Andrey, group 112, exercise № 9.27');
	writeln('Fill in the matrix: ');
	for i := 1 to n do
		for j := 1 to n do
			read(a[i, j]);
	bool := true;
	i := 1;
	j := 1;
	while bool and (i + j <= 2 * n) do begin
		j := 1;
		while (j <= n) and bool do begin
			if a[i, j] <> a[j, i] then bool := false;
			j := j + 1;
		end;
		i := i + 1;
	end;
	if bool then writeln('Simmetric')
		else writeln('Not simmetric');
end.