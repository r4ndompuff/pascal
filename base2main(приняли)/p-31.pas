program p_31(input, output); //6.31
var x, i, uf, ch, k, j, ost, l : integer;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.31');
	write('Type Natural number: ');
	readln(x);
	write('Numbers in 3rd system of calculating from "0" to X in 3 SC (system of calculating): '); // My English is very good, I know
	{Это слегка изменённый код из 6.33 (Пункт 7), так как я начал с конца, 
	то и кодом воспользовался, который уже писал
	P.S. я понимаю, что разобраться в этом множестве переменных невозможно, 
	но если бы я сам мог разобраться,
	то я бы дал им нормальные названия... :c}	
	for i := 0 to x do begin
		j := 0;
		uf := i;
		ch := 0;
		k := 1;
		repeat
			ost := uf mod 3;
			ch := ost * k + ch;
			j := j + 1;
			k := 1;
			for l := 1 to j do
				k := k * 10;
			uf := uf div 3;
		until uf < 3;
		ch := ch + uf * k;
		write(ch, ' ');	
	end;
end.