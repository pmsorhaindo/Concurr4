with Simple_io;
use Simple_io;

package class_orderlist is

        type Order is record
	        orderID : Integer;
	        --timePlaced : Time; -- TODO
	        --timeCooked : Time; -- TODO
	        cashierName : String(1 .. 10);
	        cookName : String(1 .. 10);
        end record;

        LIST_SIZE : constant := 10;
        type List_index is mod LIST_SIZE;
        type Num_orders is new Integer range 0 .. LIST_SIZE;
        subtype List_range is List_index;
        type List_array is array (List_range) of Order;


        protected type OrderList is
                entry add(orders:in P_OrderList; cashierName:in String);
                entry remove(orders:in out P_OrderList; cookName:in String; returnedOrder:out Order);
        private
                orderList : List_array;
                head : List_index := 0;
                tail : List_index := 0;
                ordersInList : Num_orders := 0;
                empty : Boolean := FALSE;
        end OrderList;
        
        type P_OrderList is access OrderList;
   
        type nextOrderID is new Integer range 0 .. Integer'Last; --:= 0;
        

        procedure addOrder(cashierName:in String; new_order:out Order);
        procedure removeOrder(cookName: in String; order_for_cooking:out Order);

end class_orderlist;