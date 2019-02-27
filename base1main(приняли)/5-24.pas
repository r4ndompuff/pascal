program p_24(input, output); //5.24

function F(x : real) : real;
begin
F := ((3.1415926 * x - 2.71828) * x + 2 * 2.71828 + 1) * x + sqr((3.1415926));
end;

const eps = 1E-5;
var a, b, c, x : real;
// Границы a и b в начале -2 и 0  соответственно

begin
	writeln('Ловягин Андрей, группа 112, задача № 5.24');
	a := -2;
	b := 0;
	repeat
		c := (a + b) / 2;
		if f(a) * f(c) < 0 then b := c
			else 
				a := c;
	x := (a + b) / 2;
	until b - a < eps;
	writeln('The answer is: ', x:6:4);
	end.