with Ada.Text_io; use Ada.Text_io;

procedure main is
begin
        put("Smallest integer ");
        put(Integer'Image (Integer'First)); new_line;
        put ("Largest integer ");
        put(Integer'Image (Integer'Last)); new_line;
        put("Size in bits of an integer is ");
        put(Integer'Image (Integer'Size)); new_line;
end main;
