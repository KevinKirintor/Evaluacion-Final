program Fibonacci;
uses crt;
var
a,b,c:Int64 ;
n,contador:integer;
bandera:boolean;
bandera1:boolean;
guardar:char;
file:text;
archivo:text;
begin
clrscr;
bandera:=true;
while bandera do
begin
contador:=3;
bandera1:=false;
clrscr;
writeln('Calculo de Serie de Fibonacci.');
writeln;
write('Ingrese numero de terminos de la serie a calcular.');
readln(n);
writeln;
while n<1 do
begin
write('Ingrese numero mayor que 0…');
readln(n);
writeln;
end;
a:=1;
b:=2;
c:=a+b;
writeln('Serie de Fibonacci con ‘,n,’ terminos:');
writeln;
if n=1 then
writeln(a);
if n=2 then
writeln(a,' ',b);
if n=3 then
writeln(a,' ',b,' ',c);
if n>3 then
while contador<n do
begin
if bandera1=false then
begin
write(a,' ',b,' ',c,' ');
bandera1:=true;
end;
a:=b;
b:=c;
c:=a+b;
write(c,' ');
contador:=contador+1;
end;
writeln;
writeln;
writeln('Desea guardar? (si/no) ');
writeln;
readln(guardar);
if guardar <> 'no' then
writeln('Fin');
begin
if guardar <> 'si' then
WriteLn('Fibonacci');
bandera:=false;
AssignFile(archivo,'Fibonacci.txt');
rewrite(archivo);
writeln;
if guardar <> 'si' then if n=1 then
writeln(a);
if guardar <> 'si' then if n=2 then
writeln(a,' ',b);
if guardar <> 'si' then if n=3 then
writeln(a,' ',b,' ',c);
if guardar <> 'si' then if n>3 then
while contador<n do
begin
if guardar <> 'si' then
begin
if bandera1=false then
begin
write(a,' ',b,' ',c,' ');
bandera1:=true;
end;
a:=b;
b:=c;
c:=a+b;
if guardar <> 'si' then writeln(c,' ');
contador:=contador+2;
close(archivo);
close(file);
end;
end;
end;
end;
end.