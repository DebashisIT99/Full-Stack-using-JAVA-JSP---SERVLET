package ServeletPackage;

public class Account 
{
	private String email;
    private String fname;
    private String lname;
    private long accNo;
    private int passBalance;
    private String location;
    
    public Account(String email, String fname, String lname, long accNo, int passBalance, String location) {
        this.email = email;
        this.fname = fname;
        this.lname = lname;
        this.accNo = accNo;
        this.passBalance = passBalance;
        this.location = location;
    }

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public long getAccNo() {
		return accNo;
	}

	public void setAccNo(long accNo) {
		this.accNo = accNo;
	}

	public int getPassBalance() {
		return passBalance;
	}

	public void setPassBalance(int passBalance) {
		this.passBalance = passBalance;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
    
    
	
}
