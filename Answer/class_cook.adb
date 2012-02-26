with Simple_io, class_lis;
use Simple_io, class_lis;

package body Class_cook is
	
        currOrder : Order;
        onDuty : Boolean := TRUE;


        task body Task_cook is
        begin
                accept start(cName:in EmployeeName) do
                        name := cName;
                end start;
                
                while onDuty loop
                        p_Orders.remove(name,currOrder);
                        put("Order Cooked ID: ");
                        put(Item => Integer(currOrder.orderID));
                        put(" placed by: ");
                        put(Item => String(currOrder.cashierName));
                        put(" and Cooked by: ");
                        put(Item => String(currOrder.cookName));
                        new_line;
                        delay 7.0;
                end loop;

                accept finish;
        
        exception
                when Tasking_error =>
                        put("Exception in Task cahsier"); new_line;

        end Task_cook;

end Class_cook;
