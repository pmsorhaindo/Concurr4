with Simple_io, class_lis;
use Simple_io, class_lis;

package body Class_cashier is -- implements Runnable
	
        currOrder : Order;
        onDuty : Boolean := TRUE;
       
        task body Task_cashier is
        begin

                while onDuty loop
                        p_Orders.add(name,currOrder);
                        put("Order Placed ID: " ); --& currOrder.orderID & " placed by: " & currOrder.cashierName
                end loop;

                accept finish;
        
        exception
                when Tasking_error =>
                        put("Exception in Task cahsier"); new_line;

        end Task_cashier;
	
end Class_cashier;
