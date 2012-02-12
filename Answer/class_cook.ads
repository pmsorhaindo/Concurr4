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

	private String cookName; // Cook name used to identify individual cooks.
	private OrderList kitchen; // The kitchen the cook works in

	Cook(String textCookName, OrderList kitchenObject){
		cookName = textCookName;
		kitchen=kitchenObject;
	}
	
	public void run(){
		while (true){
		this.cookOrder();
		}
	}

	public String getCookName() {
		return cookName;
	}

	public void setCookName(String cookNameText) {
		cookName = cookNameText;
	}

	public void cookOrder(){
		Order toCook = kitchen.removeOrder(this.cookName);
		Random r = new Random();
		try{
			Thread.sleep(r.nextInt(6999)); // random int used for its value as milliseconds between 0 and 6999.
		}
		catch (Exception e){
		}
		toCook.setCookedTime();
		System.out.println("Cook: " + toCook.getCookName() + " finished cooking Order " + toCook.getOrderID() 
			+  " at: " + toCook.getTimeCooked() + ". It was placed at: " + toCook.getTimePlaced()
			+ " by " + toCook.getCashierName());
	}
	

end Class_cook;
