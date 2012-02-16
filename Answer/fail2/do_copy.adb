with Ada.Text_io, Pack_threads, Pack_types;
use Ada.Text_io, Pack_threads, Pack_types;

procedure do_copy(from:in String; to:in String) is
        type State is (OPEN_FILE,CREATE_FILE);
        fd_in : P_File_Type := new Ada.Text_io.File_type;
        fd_out : P_File_Type := new Ada.Text_io.File_type;
        mode : State := OPEN_FILE;
begin
        open(File =>fd_in.all, Mode => IN_FILE, Name=>from);
        mode := CREATE_FILE;
        create(File => fd_out.all, Mode=>OUT_FILE, Name=>to);

        declare
                buffers : P_PT_buffer := new PT_buffer;
                reader : Task_read( buffers, fd_in );
                writer : Task_write( buffers, fd_out );
        begin
                reader.finish; close(fd_in.all);
                writer.finish; close(fd_out.all);
        end;

exception
        when Name_error =>
                case mode is
                        when OPEN_FILE =>
                                put("Problem opening file " & from); new_line;
                        when CREATE_FILE =>
                                put("Problem creating file " & to); new_line;
                end case;
        when Tasking_error =>
                put("Task error in main program"); new_line;
end do_copy;
