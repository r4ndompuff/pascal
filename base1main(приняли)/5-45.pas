program p_45(input, output); //5.45
var 
max1, max2, max3, x, n, i : integer;

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.45');
	//Самый простой алгорит, но не самый эффективный
	max1 := 0;
	max2 := 0;
	max3 := 0;
	write('Type in natural numbers with "0" at the end: ');
	read(x);
	repeat
		if x > max1 then begin 
			max3 := max2;
			max2 := max1;
			max1 := x
		end
			else if x > max2 then begin
				max3 := max2;
				max2 := x
			end
				else if x > max3 then max3 := x;
		read(x);
	until x = 0;
	writeln('3 biggest numbers: ', max1,' ', max2, ' ', max3);
end.