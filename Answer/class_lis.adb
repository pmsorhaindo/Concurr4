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
                                The_Time     : Time;
                The_Year     : Year_Number;
                The_Month    : Month_Number;
                The_Day      : Day_Number;
                The_Seconds  : Day_Duration;
                The_Minutes  : Integer;
                The_Hour     : Integer;
                Seconds      : Integer;
                begin
                        Split(Date => The_Time, Year => The_Year, Month => The_Month, Day => The_Day, Seconds => The_Seconds);
                        The_Hour := Integer(The_Seconds) / 3600;
                        The_Minutes := (Integer(The_Seconds) - (3600 * The_Hour)) / 60;
                        Seconds := Integer(The_Seconds) mod 60;

                        returnedOrder := orderList(head);
                        
                        returnedOrder.timeCookedH := The_Hour;
                        returnedOrder.timeCookedM := The_Minutes;
                        returnedOrder.timeCookedS := Integer(The_Seconds);
                        returnedOrder.cookName := cookName;
                        head := head+1;
                        ordersInList := ordersInList - 1;
                end;

                function newOrder(name:in EmployeeName) return Order is
                createdOrder : Order;
                The_Time     : Time;
                The_Year     : Year_Number;
                The_Month    : Month_Number;
                The_Day      : Day_Number;
                The_Seconds  : Day_Duration;
                The_Minutes  : Integer;
                The_Hour     : Integer;
                Seconds      : Integer;
                begin 
                        Split(Date => The_Time, Year => The_Year, Month => The_Month, Day => The_Day, Seconds => The_Seconds);
                        The_Hour := Integer(The_Seconds) / 3600;
                        The_Minutes := (Integer(The_Seconds) - (3600 * The_Hour)) / 60;
                        Seconds := Integer(The_Seconds) mod 60;

                        createdOrder := (orderID=>nextID, timePlacedH=> The_Hour, timePlacedM=> The_Minutes, timePlacedS=> Seconds,             
                                timeCookedH=> 0, timeCookedM=> 0, timeCookedS=> 0, cashierName=>name, cookName=>"null      ");

                        return createdOrder;
                end newOrder;

        end OrderList;

        
end class_lis;

