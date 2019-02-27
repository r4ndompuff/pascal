program proga_second(input, output); //5.12
var x : real;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.12');
	x := 0;
	writeln('x  	sinx  	cosx');
	writeln('-------------------------');
	while x <= 1 do begin
		write(x:6:4, '  ');
		write(sin(x):6:4, '  ');
		writeln(cos(x):6:4, '  ');
		x := x + 0.1;
		end;
end.
		
	