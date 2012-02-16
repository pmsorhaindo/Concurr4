with Ada.Text_io;
use Ada.Text_io;
package Pack_types is
        type P_File_type is access Ada.Text_io.File_type;
        EOT : constant Character := Character'Val(0);
        CR : constant Character := Character'Val(15);
        QUEUE_SIZE : constant := 3;

        type Queue_no is new Integer range 0 .. QUEUE_SIZE;
        type Queue_index is mod QUEUE_SIZE;
        subtype Queue_range is Queue_index;
        type Queue_array is array (Queue_range) of Character;
end Pack_types;

