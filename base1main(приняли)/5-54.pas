program p_54(input, output); //5.54
var i, j, n : integer;
bool : boolean;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.54');
	write('Введите границу диапозона поиска простых чисел: ');
	readln(n);
	write('Простые числа: ');
	i := 1;
	repeat
		j := 2;
		bool := true;
		repeat
			if i mod j = 0 then
				bool := false;
			j := j + 1;
		until (j >= sqrt(i)) or (bool = false);
		if bool or (i = 2) then write(i, ' ');
		i := i + 1;
	until i = n + 1;
end.