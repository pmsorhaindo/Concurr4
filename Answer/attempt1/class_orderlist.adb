with Simple_io;
use Simple_io;

package body class_orderlist is

        
        protected body OrderList is
               entry add(orders:in P_OrderList; cashierName:in String) -- NEEDS WORK
                        when ordersInList < LIST_SIZE is
                begin
                        orders(tail) := orderAdded;
                        tail := tail+1;
                        ordersInList := ordersInList +1;
                end;

                entry remove(orders:in out P_OrderList; cookName:in String; returnedOrder:out Order)
                        when no_in_queue > 0 is --or else fin is
                begin
                        if ordersInList > 0 then 
                                orders := elements(head);
                                head := head+1;
                                ordersInList := ordersInList - 1;
                                no_more := FALSE;
                        else
                                no_more := TRUE; -- to HERE
                        end if;
                end; 
        end OrderList;

        procedure addOrder(cashierName:in String; new_order:out Order) is
        begin

                put("Test");
                --listStuff

        end addOrder;

        procedure removeOrder(cookName: in String; order_for_cooking:out Order) is
        begin

                put("Test");
                --order_for_cooking := 

        end removeOrder;

        --function newOrder(this:in) return Order is
        --begin
        --        put("Test");
        --end newOrder;

end class_orderlist;

