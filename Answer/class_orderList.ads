with Simple_io;
use Simple_io;

package Class_orderList {
	
        private static int nextOrderID = 0;
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
