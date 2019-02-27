{$R+,B+}
program p_27(input, output); //12.27

Function F: boolean;
var
	i: integer;
	c: char;
	bool: boolean;
begin
	read(c);
	case c of
		'n': begin
				for i := 1 to 3 do
					read(c);
				F := not(F);
				read(c);
			 end;
		't': begin
				for i := 1 to 3 do
					read(c);
				F := true;
			 end;
		'f': begin
				for i := 1 to 4 do
					read(c);
				F := false;
			 end;
		'a': begin
				for i := 1 to 3 do
					read(c);
				bool := F;
				read(c);
				while c <> ')' do begin
					bool := bool and F;
					read(c);
				end;
				F := bool;
			 end;
		'o': begin
				for i := 1 to 2 do
					read(c);
				bool := F;
				read(c);
				while c <> ')' do begin
					bool := bool or F;
					read(c);
				end;
				F := bool;
			 end;
	end;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.27');
	writeln(F);
end.
	