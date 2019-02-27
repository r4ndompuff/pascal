{$R+,B+}
program p_17(input, output); //12.17

procedure print;
var
	x: integer;
begin
	read(x);
	if x <> 0 then begin
		if x < 0 then begin
			write(x,' ');
			print;
		end
		else begin
			print;
			write(x,' ');
		end;
	end;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.17');
	writeln('Type in digits: ');
	print;
	writeln; // Опять же, чтобы перенести logout.
end.
	