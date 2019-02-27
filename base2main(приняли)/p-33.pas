program p_33(input, output); //6.33
var z, a, timed, ch, fives, i : integer;
x : char;

{Пока писал, почувствовал себя тестером, по тысячу раз пытаясь понять, где ошибка 
и делая мониторинг промежуточных результатов, но всё работает, уф :c}
begin
	writeln('Lovyagin Andrey, Group 112, exercise № 6.33');
	writeln('Type positive number in 8 SCm put SPACE at the end and be the most positive in the space :) : ');
	// Блок перевода в 10-ую СС из 8-ой СС
	read(x);
	z := 0;
	writeln('Your number in 5 SC: ');	
	repeat
		a := ord(x) - ord('0');
		z := z * 8 + a;
		read(x);
	until x = ' ';
	// Блок перевода в 5-ую СС из 10-ой СС
	timed := z;
	fives := 1;
		repeat
			fives := fives * 5;
			timed := timed div 5;
		until timed = 0;
		fives := fives div 5;
		repeat
			ch := z div fives;
			write(ch); 
			z := z mod fives; 
			fives := fives div 5;
		until fives = 0;
end.