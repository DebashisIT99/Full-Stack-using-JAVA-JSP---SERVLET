package ServeletPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Acc_database 
{
	private String url="jdbc:mysql://localhost:3306/oppo";
	private String username="root";
	private String password="Debashis99";
	private String driver="com.mysql.cj.jdbc.Driver";
	
	private static final String UsersById = "select * from accounts where email=?";
	
	public Account selectAcc(String email)
	{
		Account acc=null;
		try
		{
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement ps=con.prepareStatement(UsersById);
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				String emailId=rs.getString("email");
				String finame =rs.getString("fname");
				String laname =rs.getString("lname");
				long accno=rs.getLong("");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return acc;
	}

}
