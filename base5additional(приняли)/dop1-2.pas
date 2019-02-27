{$R+,B+}
program p_dopAB(input, output); //Дополнительная а и б
const
	na = 500;
	nb = 100;
type
	mas = array[1..200] of integer;
var 
taskA, taskB: mas;
i: integer;
bool: boolean;

function a(n: integer): mas;
var
	i, j, l: integer;
	a1: mas;
begin
	j := 200;
	for i := 1 to 200 do
		a1[i] := 0;
	a1[j] := 1;
	for i := 1 to 500 do begin
		for l := j to 200 do begin
			a1[l] := a1[l] * 2;
			if a1[l] >= 10 then begin
				a1[l-1] := a1[l-1] + a1[l] div 10;
				a1[l] := a1[l] mod 10;
				if l = j then j := j - 1;
			end;
		end;
	end;
	a := a1;
end;

function b(n: integer): mas;
var
	tb, sum: mas;
	j,i,l,min: integer;

begin
	j := 200;
	for i := 1 to 200 do begin
		tb[i] := 0;
		sum[i] := 0;
	end;
	tb[j] := 1;
	sum[j] := 1;
	min := j;
	for i := 2 to 100 do begin
		//Factorial
			for l := 200 downto min do 
				tb[l] := tb[l] * i;
			j := 200;
			repeat
				if tb[j] >= 10 then begin
					tb[j-1] := tb[j-1] + tb[j] div 10;
					tb[j] := tb[j] mod 10;
				end;
				j := j - 1;
			until (tb[j] < 10) and (j <= min);
			if j < min then min := j;
		//Sum
		for l := 200 downto min do begin
			sum[l] := sum[l] + tb[l];
			if sum[l] >= 10 then begin
				sum[l-1] := sum[l-1] + sum[l] div 10;
				sum[l] := sum[l] mod 10;
			end;
		end;
	end;
	b := sum;
end;


begin
	writeln('Lovyagin Andrey, Group 112, exercise additional A and B');
	taskA := a(na);
	taskB := b(nb);

	writeln('Task A: ');
	bool := false;
	// Такой большой цикл, чтобы лишние нули в начале не выводил
	for i := 1 to 200 do begin 
		while (taskA[i] <> 0) and (bool = false) do 
			if taskA[i + 1] <> 0 then bool := true;
		if bool then
			write(taskA[i]);
	end;

	writeln;
	
	writeln('Task B: ');
	bool := false;
	for i := 1 to 200 do begin 
		while (taskB[i] <> 0) and (bool = false) do 
			if taskB[i + 1] <> 0 then bool := true;
		if bool then
			write(taskB[i]);
	end;
	writeln;
end.
	