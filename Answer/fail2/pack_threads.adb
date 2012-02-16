with Ada.Text_io; use Ada.Text_io;
package body Pack_threads is
        task body Task_read is
                ch : Character;
        begin
                while not end_of_file(fd_in.all) loop
                        while not end_of_line(fd_in.all) loop
                                get(fd_in.all, ch);
                                p_buffer.put(ch, FALSE);
                        end loop;
                        skip_line(fd_in.all);
                        p_buffer.put(CR,FALSE);
                end loop;
                p_buffer.put(EOT,TRUE);

                accept finish;
        exception
                when Tasking_error =>
                        put("Exception in Task read"); new_line;
        end Task_read;

        task body Task_write is
                last : Boolean := FALSE;
                ch : Character;
        begin
                loop
                        p_buffer.get(ch,last);
                        exit when last;
                        if ch = CR then
                                new_line(fd_out.all);
                        else
                                put(fd_out.all, ch);
                        end if;
                end loop;

                accept finish;

        exception
                when Tasking_error =>
                        put("Exception in Task write"); new_line;
        end Task_write;

        protected body PT_buffer is
                entry put(ch:in Character; no_more:in Boolean)
                        when no_in_queue < QUEUE_SIZE is
                begin
                        if no_more then
                                fin := TRUE;
                        else
                                elements(tail) := ch;
                                tail := tail+1;
                                no_in_queue := no_in_queue +1;
                        end if;
                end;

                entry get(ch:in out Character; no_more:out Boolean)
                        when no_in_queue > 0 or else fin is
                begin
                        if no_in_queue > 0 then 
                                ch := elements(head);
                                head := head+1;
                                no_in_queue:=no_in_queue - 1;
                                no_more:= FALSE;
                        else
                                no_more := TRUE;
                        end if;
                end;
        end PT_buffer;

end Pack_threads;
