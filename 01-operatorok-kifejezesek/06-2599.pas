{
Feladat

Irjon programot, amely a billentyuzetrol beker egy szamot a (egyjegyu), 
es kiirja a kovetkezo kifejezes erteket: a^16.
Alkalmazza a leheto legkevesebb szorzast.
Bemeneti adatok

A program a billentyuzetrol olvassa be az a szamot.
Kimeneti adatok

A program kiirja a kiszamitott erteket.
Korlatozasok es megjegyzesek

    0 ≤ a ≤ 9

Pelda:

Bemenet

2

Kimenet

65536

}
var a: UInt64;

begin
  readln(a);
  a := a * a;      { a^2 }
  a := a * a;      { a^4 }
  a := a * a;      { a^8 }
  writeln(a * a);
end.
