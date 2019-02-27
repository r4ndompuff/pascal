program p_41v(input, output); //6.41(в)
var sym : char;
symint, sum : integer;
b3, b2, bool : boolean; //b2 - проверка делимости на 2 (прогоняются все числа, но запомнится только последнее)

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.41(v)');
	write('Type in a number with a dot at the end: ');
	read(sym);
	sum := 0;
	bool := false;
	while (sym >= '0') and (sym <= '9') do begin
		symint := (ord(sym) - ord('0'));
		if symint mod 2 = 0 then b2 := true
			else b2 := false;
		sum := sum + symint;
		read(sym);
	end;
	if sum mod 3 = 0 then b3 := true
		else b3 := false;
	if (sym = '.') then 
		if b3 and b2 then write('Number is divided by 6')
			else write('Number is not divided by 6')
		else write('Wrong number written!');
end.