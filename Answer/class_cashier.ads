with Simple_io, class_lis;
use Simple_io, class_lis;

package Class_cashier is -- implements Runnable
	
        name : EmployeeName;

        task type Task_cashier(p_Orders:P_OrderList) is
                entry start(cName:in EmployeeName); -- Rendezvous point
                entry finish; -- Rendezvous point
        end Task_cashier;

	
end Class_cashier;
