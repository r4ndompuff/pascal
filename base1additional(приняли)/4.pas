program p_4(input, output); //N4
var a, b, n : integer;
bool : boolean;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 4');
	write('Type a natural number: ');
	read(n);
	a := 0;
	bool := false;
	repeat
	b := 0;
	a := a + 1;
		repeat
		b := b + 1;
		if n = a * a + b * b then 
			bool := true
		until (b = n - 1) or bool;	
	until (a = n - 1) or bool;
	if bool then begin
		if a < b then begin
			a := a + b;
			b := b - a;
			a := a + b;
			b := abs(b); //Делаем так, чтобы a и b удовлетворяли условию, то есть a > b без ввода новой переменной
		end;
		writeln('Your number can be rewritten by a sum of squares of this natural numbers: ', a,' ', b)
	end
		else writeln('It cant be imagine by a sum of squares of natural numbers.');
end.
