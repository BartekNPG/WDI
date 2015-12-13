program sortowanie_babelkowe;

uses
crt;
const
  SIZE = 5;

var tab : array [1..SIZE] of integer;
    i, j, x, change : integer;
    c1, c2 : integer;

procedure getRandom();
begin
Randomize;
for i := 1 to SIZE do
    tab[i] := Random(15);

for i := 1 to SIZE do
    write(tab[i],' ');
writeln();

end;
procedure show(var color1, color2 : integer);
begin
for i := 1 to SIZE do
begin
     if i=color1 then TextColor(LightBlue)
     else if i=color2 then TextColor(Green)
     else  TextColor(White);
     write(tab[i],' ');
end;
     writeln();

end;
procedure standardSort();
begin
     for j:=1 to SIZE-1 do
         for i := 1 to SIZE-1 do
         if tab[i] > tab[i+1] then
         begin
            x := tab[i]; tab[i] := tab[i+1]; tab[i+1] := x;
            c1 := i; c2 := i+1;
            show(c1, c2);
        end;
end;

begin
textcolor(white);
getRandom();
writeln();

standardSort();


textcolor(white);
writeln();
for i := 1 to SIZE do
     write(tab[i],' ');



end.

