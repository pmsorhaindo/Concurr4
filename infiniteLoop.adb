with Ada.Text_io; use Ada.Text_io;
procedure main is
        count : Integer; -- count as an integer object
        COUNT_TO : constant Integer := 10; -- integer constant
begin
        count := 1;
        loop
                put( Integer'Image ( count ) );
                exit when count = COUNT_TO;
                count := count +1;
        end loop;
        new_line;

end main;
