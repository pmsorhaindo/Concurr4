with Ada.Text_io; use Ada.Text_io;

procedure simple_cat is
        ch : Character;
begin
        while not end_of_file loop
                while not end_of_line loop
                        get(ch); put(ch);
                end loop;
                skip_line; new_line;
        end loop;
end simple_cat;
