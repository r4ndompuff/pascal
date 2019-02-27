program p_36and37(input, output); //6.36 + 6.37
var
    c: char;
    i, k: integer;
	bool: boolean;
begin
	writeln('Lovyagin Andrey, group 112, exercise № 6.36 + 6.37');
	write('Type Real number with the space at the end: ');
	bool := false;
    k := 0;
    i := 0;
    read(c);
	write('Your Real number: ');
    if c = '-' then write('-0.')
        else write('+0.');
    if (c <= '9') and (c > '0') then begin
        i := i + 1;
        write(c);
    end;

    read(c);
	if c <> '0' then begin
		while (c <> '.') and (c <> 'E') and (c <> ' ') do begin
     	 i := i + 1;
      	 write(c);
      	 read(c);
   	  	end;
	end
	else read(c);
    if c = '.' then begin
        read(c);
        repeat
           write(c);
           read(c);
        until (c = 'E') or ( c = ' ');
    end;
    if (c = 'E') or (i > 0) then begin
         write('E');
         if c = ' ' then write('+', i)
             else begin
         read(c);
		 if c = '-' then begin 
				   	bool := true;
				  end
                  else if c = '0' then if i = 0 then write('0');
         read(c);
         while c <> ' ' do begin
             k := (ord(c) - ord('0')) + k * 10;
             read(c);
         end;
		 if bool then k := k * (-1);
         i := i + k;
		 if i > 0 then
         			write('+', i)
				else if i < 0 then
					write('-', i)
				else if i = 0 then
					write(i);
         end;
   end;
end.