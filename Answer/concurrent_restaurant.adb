with Ada.Text_io, class_cook, class_cashier, class_lis;
use Ada.Text_io, class_cook, class_cashier, class_lis;

procedure main is

begin

        declare
        list : P_OrderList := new OrderList;
        thread_1: Task_cashier(list);
        thread_2: Task_cashier(list);
        thread_3: Task_cook(list);
        thread_4: Task_cook(list);
        thread_5: Task_cashier(list);
        thread_6: Task_cashier(list);
        thread_7: Task_cook(list);
        thread_8: Task_cook(list);        
        
        begin
        thread_1.start("Ed        ");
        thread_2.start("Fred      ");
        thread_3.start("Bob       ");
        thread_4.start("Bill      ");
        thread_5.start("Li        ");
        thread_6.start("Sung      ");
        thread_7.start("Wan       ");
        thread_8.start("Chi       ");
     
        thread_1.finish;
        thread_2.finish;
        thread_3.finish;
        thread_4.finish;
        thread_5.finish;
        thread_6.finish;
        thread_7.finish;
        thread_8.finish;
        end;
end main;
