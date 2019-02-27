program p_50(input, output); //5.50
var x, sum1, sum2, p : real;

begin
	writeln('Lovyagin Andrey, group 112, exercise № 5.50');
	sum1 := 0;
	sum2 := 0;
	write('Type in real numbers and negtive number at the end of the sequency: ');
	read(x);
	repeat
		sum1 := sum1 + x;
		sum2 := sum2 + sum1;;
		read(x);
	until x <= 0;
	write('Answer: ', sum2:1:3); //Такой вывод, чтобы видно было результат без Е (отсебятина)
end.
	
		
	