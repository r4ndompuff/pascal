program prog_first(input, output); //5.7(д)
var
ch, max, i : integer;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.7(д)');
	write('Please, type a natural numbers in order and at the end put "0": '); //Перевод: введите последовательность...
	read(ch);
	max := ch;
	repeat
	if ch > max then begin
		i := 1;
		max := ch;
		end
		else if ch = max then
			i := i + 1;
	read(ch);
	until ch = 0;
	writeln('Amount of biggest number is ', i);
	end.