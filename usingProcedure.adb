with Ada.Text_io, to_upper_proc;
use Ada.Text_io;

procedure upper is
        ch: Character;
begin
        while not end_of_file loop
                while not end_of_line loop
                        get(ch);
                        to_upper_proc(ch);
                        put(ch);
                end loop;
                skip_line; new_line;
        end loop;
end upper;
