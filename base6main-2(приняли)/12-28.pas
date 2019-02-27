{$R+,B+}
program p_28(input, output); //12.28



procedure print;
var
	symb, op, trash: char;
begin
	read(symb);
	if symb = '(' then begin
		print;
		read(op);
		print;
		write(op);
		read(trash);
	end
	else
		write(symb);
end;


begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.28');
	print;
	writeln;
end.
	