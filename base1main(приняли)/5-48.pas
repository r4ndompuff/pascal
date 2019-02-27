program p_48(input, output); //5.48
var k, i, n, x, y, kmax : integer;

begin
	writeln('Lovyagin Andrey, group 112, exercise № 5.48');
	writeln('Type amount of elements: ');
	readln(n);
	writeln('Type elements:');
	kmax := 0;
	k := 0;
	for i := 1 to n do begin
		read(x);
		if x = 0 then k := k + 1
			else begin
				if (k > kmax) or (kmax = 0) then begin
						kmax := k;
				end;
			k := 0;	
			end;
		if (k > kmax) or (kmax = 0) then
				kmax := k;
	end;
	write('Amount of elements in biggest 0-combinations: ');
	if kmax = 0 then write('No 0-combinations')
		else write(kmax);
end.


