with Ada.Text_io; use Ada.Text_io;

procedure main is
        type Count_range is range 1 ..10; --declare a type with a range
begin
        for count in reverse Count_range loop -- loop through the values in the range type.
                if count = 3 then
                        put("Ignition"); new_line;
                end if;
                put(Count_range'Image(count)); -- print current count.
                new_line;
                delay 1.0;
        end loop;
        put("Blast off!"); new_line;
end main;
