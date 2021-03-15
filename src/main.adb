with Ada.Text_IO;use Ada.Text_IO;
with dpila;
procedure Main is

   package dpilac is new dpila(Character);
   use dpilac;

   p: pila;
   s: String(1..20);
   l:Natural;
   parentesis_error : exception;

begin
   pvacia(p);
   Get_Line(s,l);

   for i in 1..l loop

      if s(i)='(' then
         empila(p,s(i));
      end if;
      if  s(i)=')' then
         desempila(p);
      end if;


   end loop;

   if estavacia(p) then
      Put_Line("Esta tot be");
   else
      Put_Line("Falta tancar");
   end if;



   exception
      when mal_uso => Put_Line("Falta abrir");

end Main;
