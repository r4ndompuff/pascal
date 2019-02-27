{$R+,B+}
program p_38(input, output); //12.38
const n = 5;

var
	str: array[1..n] of integer;
	i: integer;

procedure generate(k: integer);
var
	j, sav: integer;

begin
	if k = 1 then begin
		for j := 1 to n do
			write(str[j], ' ');
		writeln;
	end
	else begin
		for j := k downto 1 do begin
			sav := str[j];
			str[j] := str[k];
			str[k] := sav;
			generate(k - 1); // Новая ветка у "дерева"
			sav := str[j];
			str[j] := str[k];
			str[k] := sav; 
		end;
	end;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.38');
	writeln('Type in a sequence of natural numbers: ');
	for i := 1 to n do
		read(str[i]);
	writeln('Your changed sequence: ');
	generate(n);
end.