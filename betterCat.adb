with Ada.Text_io, Ada.Command_line;
use Ada.Text_io, Ada.Command_line;
procedure cat is
        fd : Ada.Text_io.File_type; -- File descriptor
        ch : Character; -- Current character
begin
        if argument_count >= 1 then
                for i in 1 .. argument_count loop -- Repeat for each file
                        begin
                                open( File=>fd, Mode=>IN_FILE, Name=>argument(i) ); -- Open file
                                while not end_of_file(fd) loop -- For each Line
                                        while not end_of_line(fd) loop-- For each character
                                                get(fd,ch); put(ch); -- Read/ Write character
                                        end loop;
                                        skip_line(fd); new_line; -- Next line / new line
                                end loop;
                                close(fd); -- Close file
                        exception
                                when Name_error =>
                                        put("cat: " & argument(i) & " no such file" );
                                        new_line;
                                when Status_error =>
                                        put("cat: " & argument(i) & " all ready open" );
                                        new_line;
                        end;
                end loop;
        else
                put("Usage: cat file1 ... "); new_line;
        end if;
end cat;

