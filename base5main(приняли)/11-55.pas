{$R+,B+}
program p_55(input, output); //11.55
var 
	n,i:integer;
	prst:integer;
	k:boolean;
	
function primal(a:integer): boolean;
var 
	j: integer;
	k: boolean;
begin
	k := true;
	j := 2;
	while (j * j <= a) and k do begin
		if a mod j = 0 then k := false;
		j := j + 1;
	end;
	primal := k;
end;

begin
	writeln('Lovyagin Andrey, Group 112, exercise № 11.55');
	writeln('Type n: ');
	read(n);
	writeln('Primary integers by groups: ');
	k := false;
	prst := 1;
	i := 3;
	while i <= n do begin
		if primal(i) then begin
			if i - prst = 2 then begin
				writeln(prst, ' ', i);
				i := i + 1;
				k := true;
			end;
			if k then begin
				prst := i - 1;
				k := false;
				end
					else
						prst := i;
		end;
		i := i + 1;
	end;
			
			{if prost(i - 2) then
				if prost(i + 2) then write(i - 2,' ',i)
					else
						writeln(i - 2,' ', i,' ');
		i := i + 1;}
end.
	