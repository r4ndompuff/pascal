program eeee(input, output); //5.39
var a, b, c, f : boolean;

begin
	writeln('Lovyagin Andrey, group 112, exercise № 5.39');
	writeln('-----------------------');
	writeln('  A    B    C     D');
	writeln('-----------------------');
	for a := true downto false do 
		for b := true downto false do
			for c := true downto false do begin
				f := ((a and b) or (not(b or c)));
				writeln(a:5, ' ', b:5, ' ', c:5, ' ', f:5);
				end;
	writeln('-----------------------');
end.