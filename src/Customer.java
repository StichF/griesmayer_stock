
public class Customer
{
	private int customerID;
	private String firstName;
	
	public Customer(int customerID, String firstName)
	{
		setCustomerID(customerID);
		setFirstName(firstName);
	}
	
	public void setCustomerID(int customerID)
	{
		this.customerID = customerID;
	}
	
	public void setFirstName(String firstName)
	{
		this.firstName = firstName;
	}
	
	public int getCustomerID()
	{
		return customerID;
	}
	
	public String getFirstName()
	{
		return firstName;
	}
	
	
}
