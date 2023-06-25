public class TheFoodForest{

//Defining Class Field
	private String name;
	private String type;
	private int customerCount;
	
//Constructor for initializing TheFoodForest
	public TheFoodForest(String name, String type){
		this.name = name;
		this.type = type;
		this.customerCount = 0;
	}

//onCustomerEnter
	public void onCustomerEnter(){
		this.customerCount++;
		System.out.println("Welcome to the food forest " + name + "!");
		System.out.println("We are a " + type + " and we have " + customerCount + " customers.");
	}

//onCustomerLeave
	public void onCustomerLeave(){
		this.customerCount--;
		System.out.println("Goodbye from the food forest " + name + "!");
		System.out.println("We are a " + type + " and we have " + customerCount + " customers.");
	}

//addOrder
	public void addOrder(String order){
		System.out.println("Order is: " + order);
	}

//removeOrder
	public void removeOrder(String order){
		System.out.println("Order removed: " + order);
	}

//addFoodItem
	public void addFoodItem(String foodItem){
		System.out.println("Food item added: " + foodItem);
	}

//removeFoodItem
	public void removeFoodItem(String foodItem){
		System.out.println("Food item removed: " + foodItem);
	}

//countCustomers
	public int countCustomers(){
		return this.customerCount;
	}

//printMenu
	public void printMenu(){
		System.out.println("Welcome to the food forest " + name + "!");
		System.out.println("We are a " + type + " and we have the following items available:");
		System.out.println("Appetizers: ");
		System.out.println("Main Course: ");
		System.out.println("Desserts: ");
		System.out.println("Beverages: ");
	}

//main method
	public static void main(String args[]){
		TheFoodForest foodForest = new TheFoodForest("The Garden", "vegetarian restaurant");
		foodForest.onCustomerEnter();
		foodForest.printMenu();
		foodForest.addOrder("Green Salad");
		foodForest.addFoodItem("Vegetable Pizza");
		foodForest.removeOrder("Green Salad");
		foodForest.removeFoodItem("Vegetable Pizza");
		foodForest.onCustomerLeave();
		System.out.println("Total customers: "+ foodForest.countCustomers());
	}
}