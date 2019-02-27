{$R+,B+}
program p_16(input, output); //12.16

procedure print;
var
	ch: char;

begin
	read(ch);

	if ch <> '.' then begin
		print;
		write(ch);
	end;
end;


begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.16');
	writeln('Type in a text: ');
	print;
	writeln; // Поставил, чтобы убрать logout в терминале на новую строку.
end.
	