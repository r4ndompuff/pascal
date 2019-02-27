{$R+,B+}
program p_19(input, output); //10.19
const 
	n = 20;
var 
a, b: packed array[1..20] of char;
sm: packed array[1..52] of char;
i, j: integer;
bool: boolean;



begin
	sm[1] := 'a'; sm[2] := 'b'; sm[3] := 'c'; sm[4] := 'd'; sm[5] := 'e'; sm[6] := 'f'; sm[7] := 'g'; sm[8] := 'h'; sm[9] := 'i'; sm[10] := 'j'; sm[11] := 'k'; sm[12] := 'l'; sm[13] := 'm'; sm[14] := 'n'; sm[15] := 'o'; sm[16] := 'p'; sm[17] := 'r'; sm[18] := 's'; sm[19] := 't'; sm[20] := 'u'; sm[21] := 'v'; sm[22] := 'w'; sm[23] := 'x'; sm[24] := 'y'; sm[25] := 'z'; sm[26] := 'q'; 
	sm[27] := 'A'; sm[28] := 'B'; sm[29] := 'C'; sm[30] := 'D'; sm[31] := 'E'; sm[32] := 'F'; sm[33] := 'G'; sm[34] := 'H'; sm[35] := 'I'; sm[36] := 'J'; sm[37] := 'K'; sm[38] := 'L'; sm[39] := 'M'; sm[40] := 'N'; sm[41] := 'O'; sm[42] := 'P'; sm[43] := 'R'; sm[44] := 'S'; sm[45] := 'T'; sm[46] := 'U'; sm[47] := 'V'; sm[48] := 'W'; sm[49] := 'X'; sm[50] := 'Y'; sm[51] := 'Z'; sm[52] := 'Q'; 
	
	writeln('Lovyagin Andrey, group 112, exercise № 10.19');
	writeln('Type in text: ');
	for i := 1 to n do
		read(a[i]);
	for i := 1 to n do begin
		bool := false;
		for j := 1 to 52 do
			if a[i] = sm[j] then bool := true;
			if bool then b[i] := '-'
				else b[i] := ' ';
	end;
	writeln('Your new text: ');
	for i := 1 to n do
		write(a[i]);
	writeln;
	for i := 1 to n do
		write(b[i]);
end.
		
				