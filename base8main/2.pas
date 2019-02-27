program p_2(input, output); // 2
type
	str = packed array[1..6] of char;
	Ukazatel = ^S;
	S = record
		data: str;
		amount: integer;
		Next: Ukazatel;
	end;
	mas = array[1..6] of Ukazatel;
var
	L: Ukazatel;
	ch: char;
	i: integer;
	st: str;
	AllText: mas;


procedure Clean(var L: Ukazatel);
begin
	if l <> nil then 
    	if l^.Next <> nil then begin
			Clean(l^.Next);
			dispose(l);
			l := nil
		end
		else begin
			dispose(l);
			l := nil
		end;
end;
//--------------------------------------------------------

procedure insert(var L: ukazatel; st: string);
var
	dop: Ukazatel;
	ch1: str;
	j: integer;
begin	
	if L <> nil then begin
		Insert(L^.Next, st); // Опускаемся в самый низ
		if L^.Next^.data = L^.data then begin
			L^.Next^.amount := l^.amount + 1; // ++
			dop := L; 
			L := L^.Next;
			dispose(dop); // Убираем "лишний блок"
		end
		else
			if L^.Next^.data < L^.data then begin
				ch1 := L^.Next^.data;
				L^.Next^.data := L^.data;
				L^.data := ch1;  // Поменяли местами слова
				j := l^.next^.amount;
				l^.next^.amount := l^.amount;
				l^.amount := j; // Поменяли местами количество слов 
			end;	
	end
	else begin
		new(L); // Создаём, если слово в алфавитном порядке стоит в конце всех
		L^.Next := nil;
		L^.data := st;
		L^.amount := 1;
	end;	
end;

//-----------------------------------------------------

procedure print(L: Ukazatel);
var
	k: integer;
begin
	while l <> nil do begin
		for k := 1 to i do
			write(L^.data[k]);
		writeln(' -', l^.amount, ' times');
		l := l^.next;
	end;
end;

//----------------------------------------------------
function StringCount: integer;
var
	k: integer;
begin
	read(ch);
	k := 0;
	while (ch <> ',') and (ch <> '.') do begin
		k := k + 1;
		st[k] := ch;
		read(ch);
	end;
	StringCount := k;  // Запомнили и вывели количество букв
	if k < 6 then begin
		if k < 6 then
		while k < 6 do begin
			k := k + 1;
			st[k] := ' '; // Получили полное слово (полное = 6 "букв")
		end;
	end;
end;


begin
	writeln('Lovyagin Andrey, 112 group, task 2');
	writeln('Type in a text with a dot at the end: ');
	for i := 1 to 6 do
		AllText[i] := nil;
	repeat
		i := StringCount;
		L := AllText[i];
		insert(L, st);
		AllText[i] := L;
	until ch = '.';
	i := 1;
	while i <> 7 do begin
		L := AllText[i];
		print(L);
		Clean(L);   // Чтобы "не перескакивало" на более низкий уровень
		AllText[i] := l;
		i := i + 1;
		writeln('--------------');
	end;
	readln(ch);
	readln(ch);
end.



