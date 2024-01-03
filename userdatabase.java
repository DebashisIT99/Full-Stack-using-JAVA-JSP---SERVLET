package ServeletPackage;
import java.sql.*; 

import user.user_details;
public class userdatabase 
{
		public boolean insert(user_details user) throws ClassNotFoundException
		{
			String str=user.getEmail();
			

			
			try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oppo","root","Debashis99");
			PreparedStatement ps;
			String sql = "INSERT INTO rb VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			ps = con.prepareStatement(sql);

			ps.setString(1, user.getUser_id());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getAcc_type());
			ps.setString(4, user.getFirst_name());
			ps.setString(5, user.getLast_name());
			ps.setString(6, user.getContact_no());
			ps.setString(7, user.getAlt_contact_no());
			ps.setString(8, user.getEmail());
			ps.setString(9, user.getDob());
			ps.setString(10, user.getIdproof());
			ps.setString(11, user.getPan_no());
			ps.setString(12, user.getR_address());
			ps.setString(13, user.getNationality());
			ps.setString(14, user.getPcode());
			ps.setString(15, user.getRegion());

	        int rowsAffected = ps.executeUpdate();
	        ps.close();
	        con.close();
	        
	        if (rowsAffected > 0) {
	            // The insert operation was successful, call insert2() method
	            filterinsert();
	            return true;
	        } else {
	            // The insert operation failed
	            return false;
	        }
			} 
			
			catch (SQLException e) {
				

				e.printStackTrace();
				System.out.println(e.getMessage());
			}
			return false;
		}
		public void filterinsert() throws ClassNotFoundException
		{
			try {
				 Class.forName("com.mysql.cj.jdbc.Driver");
			        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oppo", "root", "Debashis99");
			        String sql = "INSERT INTO accounts (email, fname, lname, pass_balance, location) "
			                + "SELECT email, first_name, last_name, 2000.00, region "
			                + "FROM rb";
			        PreparedStatement ps = con.prepareStatement(sql);
			        ps.executeUpdate();
			        ps.close();
			        con.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
				System.out.println("In insert2 method "+e.getMessage());
			}
}
}

