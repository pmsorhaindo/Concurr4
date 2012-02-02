with Ada.Text_io; use Ada.Text_io;

procedure main is
        count : Integer; -- count as an integer object
        COUNT_TO : constant Integer := 10; -- integer constant
begin
        count := 1;
        while count <= COUNT_TO loop -- while loop
                put( Integer'Image( count ) );
                count := count + 1;
        end loop;
        new_line;

        for count in 1 .. COUNT_TO loop
                put( Integer'Image( count ) );
        end loop;
        new_line;
end main;

