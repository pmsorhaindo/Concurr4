with Simple_io;
use Simple_io;

package class_lis is

        type nextOrderID is new Integer range 0 .. Integer'Last;
        type EmployeeName is new String(1 .. 10);
        type Order is record
	        orderID : nextOrderID;
	        --timePlaced : Time; -- TODO
	        --timeCooked : Time; -- TODO
	        cashierName : EmployeeName;
	        cookName : EmployeeName;
        end record;

        LIST_SIZE : constant := 10;
        type List_index is mod LIST_SIZE;
        type Num_orders is new Integer range 0 .. LIST_SIZE;
        subtype List_range is List_index;
        type List_array is array (List_range) of Order;

        
        protected type OrderList is
                entry add(cashierName:in EmployeeName; returnedOrder:out Order);
                entry remove(cookName:in EmployeeName; returnedOrder:out Order);
                function newOrder(name:in EmployeeName) return Order;

        private
                nextID : nextOrderID := 0;
                orderList : List_array;
                head : List_index := 0;
                tail : List_index := 0;
                ordersInList : Num_orders := 0;
                empty : Boolean := FALSE;
        end OrderList;
   

        type P_OrderList is access OrderList;       

        --procedure addOrder(cashierName:in String; new_order:out Order);
        --procedure removeOrder(cookName: in String; order_for_cooking:out Order);
        
end class_lis;
