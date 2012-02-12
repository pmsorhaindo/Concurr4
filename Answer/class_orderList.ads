with Simple_io;
use Simple_io;

package Class_orderList

        protected type OrderList is
        type theList is array (0 .. 9) of Order	
        type nextOrderID is Integer range 0 .. Integer'Last; --:= 0;
        type Order is record
	        orderID : Integer;
	        timePlaced : Time; -- TODO
	        timeCooked : Time; -- TODO
	        cashierName : String(1 .. MAX_CHS);
	        cookName : String(1 .. MAX_CHS);
        end record;


        procedure addOrder(cashierName:in String, new_order:out Order);
        procedure removeOrder(cookName: in String, order_for_cooking:out Order);

end Class_orderList;
