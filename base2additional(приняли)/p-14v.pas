program p_14(input, output); //6.14(в)
var i, j : char;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.14(v)');
	for i := '0' to '9' do begin
		for j := '0' to '9' do
			if ord(j) + ord(i) - 2 * ord('0') >= 10 then write(ord(j) + ord(i) - 2 * ord('0') - 10)
				else write(ord(j) + ord(i) - 2 * ord('0'));
		writeln();
	end;
end.