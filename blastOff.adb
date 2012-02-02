with Ada.Text_io; use Ada.Text_io; -- Use Ada.Text_io

procedure main is
        count : Integer;
begin
        count := 10; -- set a variable to 10
        while count > 0 loop    -- loop while greater than 0
                if count = 3 then       -- If 3 print Ignition
                        put ("Ignition"); new_line;
                end if;
                put( Integer'Image( count ) ); -- print current count
                new_line;
                count := count-1; -- Decrement count by 1
                delay 1.0; -- Wait 1 second
        end loop;
        put("Blast off"); -- Print Blast off
end main;
