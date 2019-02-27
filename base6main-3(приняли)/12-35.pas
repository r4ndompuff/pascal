{$R+,B+}
program p_35(input, output); //12.35

const n = 10;

type towns = array[1..n, 1..n] of boolean;

var 
	L: towns;
	i, j: integer;
	first, last: integer;

function path(var L: towns; first, last: integer): boolean;
var 
	visited: array[1..n] of boolean;
	way: array[1..n] of 1..n;
	len, k: integer;

	function path1(var r1, r2: integer): boolean;
	var 
		r: integer;
		ok: boolean;
	begin
		if r1 = r2 then 
			path1 := true
		else begin
			ok := false;
			r := 1;
			while (r <= n) and not(ok) do begin
				if L[r1,r] and not(visited[r]) then begin
					visited[r1] := true;
					len := len + 1;
					way[len] := r;
					ok := path1(r, r2);
					if not(ok) then len := len - 1;
				end;
			r := r + 1;
			end;
			path1 := ok;
		end;
	end;

begin
	len := 1;
	way[len] := first;
	for k := 1 to n do
		visited[k] := false;
	if path1(first, last) then begin
		writeln;
		write('Path: ', way[1]);
		for k := 2 to len do
		write('>', way[k]);
	end;
	writeln;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 12.35');
	writeln('Type in roads between towns: ');
	for i := 1 to n do
		for j := 1 to n do
		L[i,j] := false;
	read(i, j);
	while (i <> 0) or (j <> 0) do begin
		L[i,j] := true;
		L[j,i] := true;
		read(i,j);
	end;

	writeln('Type in a number of first and last town: ');
	read(first,last);

	writeln(path(L, first, last));
end.