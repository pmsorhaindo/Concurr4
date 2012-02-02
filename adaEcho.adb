with Ada.Text_io, Ada.Command_line;
use Ada.Text_io, Ada.Command_line;

procedure adaEcho is
begin
        for i in 1 .. argument_count loop
                put( argument(i) );
                if i /= argument_count then
                        put(" ");
                end if;
        end loop;
        new_line;
end adaEcho;
