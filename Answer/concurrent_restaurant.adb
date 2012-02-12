with Simple_io, class_cashier, class_cook, class_orderList;
use Simple_io, class_cashier, class_cook, class_orderList;

procedure main is

thread_1: Task_cashier;
thread_2: Task_cook;

begin
        thread_1.start();
        thread_2.start();

end main;
