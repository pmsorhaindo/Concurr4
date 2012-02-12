with do_copy;
with Ada.Text_io, Ada.Command_line;
use Ada.Text_io, Ada.Command_line;

procedure sharedBuffer is
begin
        if argument_count = 2 then
                do_copy(argument(1), argument(2));
        else
                put("Usage: copy from to"); new_line;
        end if;
end sharedBuffer;
