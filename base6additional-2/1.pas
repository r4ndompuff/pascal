{$R+,B+}
program p_1(input, output); // Factorial
var
	n: integer;
	
function F(n: integer): integer;
var
	s: integer;

	function fact(s: integer; k: integer): integer;
	begin
		fact := -1;
		if s mod k = 0 then
			if s div k >= 1 then
				if s div k = 1 then
					fact := k
				else if s div k > 1 then
					fact := fact(s div k, k + 1)
	end;

begin
	s := n;
	F := fact(s, 1);
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 1');
	writeln('Type n: ');
	read(n);
	writeln('Factorial: ', F(n));
end.
