{$R+,B+}
program p_32(input, output); //9.32
var 
a: array['a'..'z', 'a'..'z'] of 0..MaxInt;
k, kmax, z, z0: char;
max: integer;


begin
	writeln('Lovyagin Andrey, group 112, exercise № 9.32');
	writeln('Type a text: ');
	for k := 'a' to 'z' do
		for z := 'a' to 'z' do
			a[k,z] := 0;
	repeat
		read(k);
		z0 := k;
		repeat
			z := k;
			read(k);
		until (k = ',') or (k = '.');
		a[z0, z] := a[z0, z] + 1;
	until k = '.';
	max := 0;
	for k := 'a' to 'z' do
		for z := 'a' to 'z' do
			if a[k, z] > max then begin
				max := a[k, z];
				kmax := k;
				z0 := z;
			end;
			
	writeln('Most popular: ', kmax, z0);
end.
	
			
			
	