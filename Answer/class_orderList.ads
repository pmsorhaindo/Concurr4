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

        protected ArrayList<Order> ordersList;
        protected ArrayList<Order> completedList;

	  -- Constructor with no arguments, create a new empty array list of orders.
	public OrderList(){
		ordersList = new ArrayList<Order>();
		completedList = new ArrayList<Order>();
	}
	
	  -- Add a new order to the list and print out the information. 
	  -- method will notify cooks waiting to get orders if the list
	  -- is currently empty.
	  -- @param name of the cashier
        procedure addOrder(cashierName:in String, new_order:out Order);
        procedure removeOrder(cookName: in String, order_for_cooking:out Order);

        synchronized public Order addOrder(String cashierName)
	{
		Order newOrder = new Order(cashierName);
		ordersList.add(newOrder);
		notifyAll();
		return newOrder;
	}
	 
	 
	  -- Removing an order from the list. The thread accessing this method  
	  -- is put on wait if the current list is empty. It will return information
	  -- about the order being removed.
	  -- @param name of the cook requesting order
	  -- @return formatted String containing the information of the order.
	synchronized public Order removeOrder(String cookName)
	{
		while (ordersList.isEmpty()) {
			try {
				wait();
			}
			catch(Exception e)
			{
				//TODO
			}
		}
		completedList.add(ordersList.get(0));
		ordersList.remove(0);
		completedList.get(completedList.size()-1).setCookName(cookName);
		Order orderComplete = completedList.get((completedList.size()-1));
		return orderComplete;
	}	
end Class_orderList;
