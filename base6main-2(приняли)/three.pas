{$R+,B+}
program p_three(input, output); //Без троек
var
	n: integer;

function three(n: integer): integer;
var
	td: integer;
begin
	td := 0;
	if (n < 10) and (n <> 3) then 
		td := n
	else begin
		td := three(n div 10);
		if n mod 10 <> 3 then td := td * 10 + n mod 10;
	end;
	three := td;
end;


begin
	writeln('Lovyagin Andrey, Group 112, exercise № 1 (without 3`s)');
    writeln('Type in a number: ');
    readln(n);
    writeln('Your new number: ', three(n));
end.
	
