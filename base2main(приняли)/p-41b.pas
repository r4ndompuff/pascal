program p_41b(input, output); //6.41(б)
var sym : char;
chet, dig : integer;
bool : boolean;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.41(b)');
	write('Type in number with a dot at the end: ');
	read(sym);
	bool := false;
	chet := 0;
	while (sym >= '0') and (sym <= '6') do begin
		dig := (ord(sym) - ord(0));
		chet := chet + dig;
		read(sym);
	end;
	if (sym = '.') then 
		if  chet mod 2 = 0 then write('Number is even')
			else write('Number is not even')
		else write('Wrong number!');
end.