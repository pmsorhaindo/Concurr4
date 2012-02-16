with Ada.Text_io, class_cook, class_cashier, class_lis;
use Ada.Text_io, class_cook, class_cashier, class_lis;

procedure main is

begin

        declare
        list : P_OrderList := new OrderList;
        thread_1: Task_cashier(list);
        thread_2: Task_cook(list);        
        begin     
        thread_1.finish;
        thread_2.finish;
        end;
end main;
