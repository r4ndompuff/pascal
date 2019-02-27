{$R+,B+}
program p_14(input, output); //10.14
type
	str = packed array[1..4] of char;
var 
	a: array[1..9] of str;
	k: integer;

// Я не совсем понимаю зачем такой массив? Тут вообще можно всё решить без массивов...

begin
	writeln('Lovyagin Andrey, group 112, exercise № 10.14');
	writeln('Type a number from 1 to 39: ');
	read(k);
	writeln('Your number: ');
	a[1] := 'I'; a[2] := 'II'; a[3] := 'III'; a[4] := 'IV'; a[5] := 'V'; a[6] := 'VI'; a[7] := 'VII'; a[8] := 'VIII'; a[9] := 'IX';
	while k >= 10 do begin
		k := k - 10;
		write('X');
	end;	
	if k <> 0 then
		write(a[k]);
	writeln;
end.
	