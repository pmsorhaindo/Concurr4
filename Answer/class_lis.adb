with Simple_io;
use Simple_io;

package body class_lis is

        
        protected body OrderList is
               entry add(cashierName:in EmployeeName; returnedOrder:out Order) -- NEEDS WORK
                        when ordersInList < LIST_SIZE is
                begin
                        nextID := nextID +1;
                        orderList(tail) := newOrder(cashierName);
                        returnedOrder := orderList(tail);                        
                        tail := tail+1;
                        ordersInList := ordersInList +1;                        
                end;

                entry remove(cookName:in EmployeeName; returnedOrder:out Order)
                        when ordersInList > 0 is --or else fin is
                begin
                        returnedOrder := orderList(head);
                        returnedOrder.cookName := cookName;
                        head := head+1;
                        ordersInList := ordersInList - 1;
                end;

                function newOrder(name:in EmployeeName) return Order is
                createdOrder : Order;        
                begin
                        createdOrder := (orderID=>nextID,cashierName=>name, cookName=>"null      ");
                        return createdOrder;
                end newOrder;

        end OrderList;

        
end class_lis;

