with Simple_io, class_lis;
use Simple_io, class_lis;

package Class_cook is

        name : EmployeeName;

        task type Task_cook(p_Orders : P_OrderList) is
                entry start(cName:in EmployeeName);
                entry finish;
        end Task_cook;

        --procedure getCookName(name:out String);
        --procedure cookOrder()


end Class_cook;
