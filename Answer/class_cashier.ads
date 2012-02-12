with Simple_io;
use Simple_io;

package Class_cashier is -- implements Runnable
	
        type Cashier is private;
	type OrderList is ; -- TODO doing arrays
	subtype CashierName is String;
	
        task type Task_cashier is
                entry start(); -- Rendezvous point
                entry finish(); -- Rendezvous point
        end Task_cashier;
	
        procedure getCashierName();
        procedure takeOrder();


	
end Class_cashier;
