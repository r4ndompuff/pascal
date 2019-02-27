program p_1(input, output); // 1
type
	Ukazatel = ^S;
	S = record
		data: char;
		Next: Ukazatel;
	end;
var
	L: Ukazatel;
	file1, file2: text;
	ch: char;
	i: integer;

procedure create(var L: Ukazatel);
begin	
	if not(eoln(file1)) then begin
		new(L);
		read(file1, ch);
		L^.Data := ch;
		L^.Next := nil;
		Create(L^.Next);
		i := i + 1;
	end; 
end;
	

procedure move(L: Ukazatel);
begin
	while not(L^.next = nil) do begin
		write(file2, L^.data);
		L := L^.next;
	end;
	write(file2, L^.data);
	writeln(file2);
end;

procedure destroy(var L: Ukazatel);
var
	p: Ukazatel;
begin
	while not(L^.next = nil) do begin
		p := L;
		L := L^.next;
		dispose(p);
	end;
end;




begin
	writeln('Lovyagin Andrey, 112 group, task 1');
	assign(file1, 'file1.txt'); 
	assign(file2,'file2.txt');
	reset(file1); 
	rewrite(file2);
	while not(eof(file1)) do begin
		i := 0;
		create(L);
		if (i > 1) and (ch <= '9') and (ch >= '0') and ((ord(ch) - ord('0')) mod 2 = 1)  then
			move(L);
		destroy(L);
		if not(eof(file1)) then
			readln(file1);
	end;
	close(file1); close(file2);
end.



