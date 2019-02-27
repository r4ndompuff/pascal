program p3_dop(input, output); //N3
var ch, chtime, new, renew, x, y, l : integer;
bool, bad, ls : boolean;


begin
	writeln('Lovyagin Andrey, Group 112, exercise № 3');
	write('Type a number: ');
	read(ch);
	new := 0;
	bool := false;
	bad := false;
	ls := false;
	//"Отобразим" число, чтобы было легче работать с ним: abc -> cba, если ab0 -> 10ba
	repeat
		chtime := ch mod 10;
		if (chtime = 0) and (bad = false) then begin
			new := 1;
			ls := true;
			end;
		new := new * 10 + chtime;
		ch := ch div 10;
		bad := true;
	until ch = 0;
	//Первый шаг
	x := new mod 10;
	new := new div 10;
	//Сама "начинка" программы
	repeat 
		y := new mod 10;
		if (x = 0) and (y = 0) then begin 
			x := y;
			renew := renew * 10;
		end
			else
				if y > x then begin
					renew := renew * 10 + y;
					bool := true;
					x := y;
				end
					else if bool = false then begin
						renew := 10 * renew + x;
						x := y;
					end
						else begin
							renew := 10 * renew + y;
							x := y;
						end;
		if ls then
			l := new;
		new := new div 10;		
		until new = 0;
	if ls then
		writeln('Biggest number without one digit from your number: ', (renew - l) div 10)
		else
			writeln('Biggest number without one digit from your number: ', renew); 
end.