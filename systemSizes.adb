with Ada.Text_io; use Ada.Text_io;

procedure main is
begin
        put("Integer info "); new_line;
        put("Smallest integer ");
        put(Integer'Image (Integer'First)); new_line;
        put ("Largest integer ");
        put(Integer'Image (Integer'Last)); new_line;
        put("Size in bits of an integer is ");
        put(Integer'Image (Integer'Size)); new_line;
        new_line;
        put("Float info"); new_line;
        put("Smallest Float ");
        put(Float'Image(Float'First)); new_line;
        put("Largest Float ");
        put(Float'Image(Float'Last)); new_line;
        put("Size in bits of a float is ");
        put(Integer'Image(Float'Size)); new_line;
        put("Float precision in digits is ");
        put(Integer'Image(Float'Digits)); new_line;
end main;
