with Ada.Text_io; use Ada.Text_io;

procedure main is
        count : Integer;
begin
        count := 1;
        for count in 1 .. 10 loop
                case count is
                        when 3 => put("Count is 3"); new_line;
                        when 4 => put("Count is 4"); new_line;
                        when others => put("Count is not 3 or 4"); new_line;
                end case;
        end loop;
end main;
