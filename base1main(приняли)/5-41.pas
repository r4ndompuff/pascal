program p_41(input, output); //5.41
var x, i : integer;
flag : boolean;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.41');
	write('Type in a sequency: ');
	i := 0;
	read(x);
	if x > 0 then flag := true
		else flag := false;
	while (x <> 0) do begin
		read(x);
		if ((x > 0) and (flag = false)) or ((x< 0) and flag ) then begin
			flag := not(flag);
			i := i + 1;
			end;
	end;
	write('Amount of changed sign: ', i);
	end.
				
			
			