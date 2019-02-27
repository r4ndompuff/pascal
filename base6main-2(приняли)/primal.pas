{$R+,B+}
program p_primal(input, output); // Простое число
var
	n: integer;


function isprime(n: integer): boolean;
	function isprime2(k: integer): boolean;
	var
		bad: integer;
	begin
		isprime2 := true;
		if k * k > n then
			bad := 0 // Просто, чтобы отвести эту ветку и закончить "погружение"
		else
			if n mod k = 0 then
				isprime2 := false
			else
				isprime2 := isprime2(k + 1);
	end;
begin
	isprime := isprime2(2);
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 2 (primal number)');
	writeln('Type in a number: ');
	read(n);
	writeln('Is your number is prime? ', isprime(n));
end.
	