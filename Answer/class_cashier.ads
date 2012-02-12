with Simple_io;
use Simple_io;

package Class_cashier is -- implements Runnable
	
        type Cashier is private;
	type OrderList is ; -- TODO doing arrays
	subtype CashierName is String;
	
        task type Task_cashier is
                entry start(); -- Rendezvous point
                entry finish(); -- Rendezvous point
        end Task_cashier;
	
	public Cashier(String nameText, OrderList kitchenName){
		cashierName = nameText;
		kitchen = kitchenName;
	}
	
	public void run(){
		int i = 0;
		while(i < 30)
		{
			Random r = new Random();
			try {
				Thread.sleep(r.nextInt(4999));
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Order tempOrder = kitchen.addOrder(cashierName);
			System.out.println("Cashier: " + cashierName + "  " + tempOrder.getOrderID() + "  Placed at: "
			+ tempOrder.getTimePlaced());
			i=i+1;
		}
	}
	
end Class_cashier;
