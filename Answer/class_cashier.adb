with Simple_io, class_lis;
use Simple_io, class_lis;

package body Class_cashier is -- implements Runnable
	
        currOrder : Order;
        onDuty : Boolean := TRUE;
       
        task body Task_cashier is

        begin
                accept start(cName:in EmployeeName) do
                        name :=cName;
                end start;

                while onDuty loop
                        p_Orders.add(name,currOrder);
                        put("Order Placed ID: ");
                        put(Item => Integer(currOrder.orderID));
                        put(" placed by: ");
                        put(Item => String(currOrder.cashierName));
                        new_line;

                        delay 4.0;
                end loop;

                accept finish;
        
        exception
                when Tasking_error =>
                        put("Exception in Task cahsier"); new_line;

        end Task_cashier;
	
end Class_cashier;
