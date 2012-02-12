with Pack_types;
use Pack_types;

package Pack_threads is
        protected type PT_buffer is
                entry put(ch:in Character; no_more:in Boolean);
                entry get(ch:in out Character; no_more:out Boolean);
        private
                elements : Queue_array;
                head : Queue_index := 0;
                tail : Queue_index := 0;
                no_in_queue : Queue_no := 0;
                fin : Boolean := FALSE;
        end PT_buffer;

        type P_PT_buffer is access PT_buffer; -- VERY IMPORTANT allows us access to the protected type PT_buffer

        task type Task_read(p_buffer : P_PT_buffer; fd_in : P_File_type) is
                entry finish;
        end Task_read;

        task type Task_write(p_buffer : P_PT_buffer; fd_out : P_File_type) is
                entry finish;
        end Task_write;
end Pack_threads;

