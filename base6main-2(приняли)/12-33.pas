{$R+,B+}
program p_33(input, output); //12.33
var
	n: integer;

procedure move(n: integer; A,B,C: char); // Всегда будет A -> C (ТОЛЬКО СИНТАКСИЧЕСКИ!!), поэтому путаницы нет
	procedure moveone;
	begin
		writeln('Take from ', A,' and put it on ', C)
	end;
begin
	if n = 1 then
		moveone // Сами перемещения, когда мы "погружаемся" в рекурсию
	else begin
		move(n - 1, A, C, B); // Если n - чётное, то сначала кладём на B "Шаг 1"
		moveone; // Само перемещение наибольшей плиты "Шаг 2"
		move(n - 1, B, A, C); // "Шаг 3", перетаскиваем плиты на С через А
	end;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.33');
	writeln('Type in N: ');
	read(n);
	move(n,'A','B','C'); // Вообще я бы взял left, middle, right, так было бы понятнее, но в задании надо A,B,C, ладно...
end.
	