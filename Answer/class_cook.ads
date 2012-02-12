with Simple_io;
use Simple_io;

package Class_cook is -- implements Runnable
	
        type CookName is String;

        task type Task_cook is
                entry start();
                entry finish();
        end Task_cook;

        procedure getCookName(name:out String);
        procedure cookOrder()


end Class_cook;
