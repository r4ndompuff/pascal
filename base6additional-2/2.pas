{$R+,B+}
program p_2(input, output); // Formula
var
	bool: boolean;
	ch: char;
	
function Form: boolean;

	function sign(ch: char): boolean;
	begin
		if (ch = '+') or (ch = '-') or (ch = '*') then 
			sign := true
		else
			sign := false;
	end;

	function num(ch: char): boolean;
	begin
		if (ord(ch) - ord('0') <= 9) and (ord(ch) - ord('0') >= 0) then
			num := true
		else
			num := false;
	end;



begin
	read(ch);
	bool := true;
	if ch = '(' then begin
		bool := form;
		read(ch);
	end;
	if ch <> '.' then begin
		repeat
			if not(num(ch)) then
				if not(sign(ch)) then
					bool := form
				else
					ch := ch
			else
			read(ch);
			if ch <> '.' then begin
				bool := sign(ch);
				read(ch);
				if not(num(ch)) then
					bool := form;
				read(ch);
				if ch <> ')' then 
					bool := false;
			end;
		until (ch = ')') or not(bool) or (ch = '.');
	end;
	Form := bool;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 2');
	writeln('Type text: ');
	bool := Form;
	if not(bool) then 
		writeln(bool)
	else begin
		if ch = '.' then 
			writeln(bool)
		else
			writeln(not(bool));
	end;
end.
