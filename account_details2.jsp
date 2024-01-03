<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
</head>
<body>
    <h1>Account Details</h1>
    <table border="1">
        <tr>
            <th>Email</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Account Number</th>
            <th>Account Balance</th>
            <th>Location</th>
        </tr>
        <%-- Assuming you have passed the accountDetails ResultSet as 'accountDetails' request attribute --%>
        <%               String username = (String) session.getAttribute("loggedInEmail");
        String jdbcURL = "jdbc:mysql://localhost:3306/oppo";
        String dbUser = "root";
        String dbPassword = "Debashis99";
        try
        {
        	 Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
             PreparedStatement stmt;
             String sql = "SELECT * FROM accounts WHERE email = ?";
             stmt = conn.prepareStatement(sql);
             stmt.setString(1, username);
             ResultSet rs = stmt.executeQuery();
 
 %>
        <% while (rs.next()) { %>
            <tr>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("fname") %></td>
                <td><%= rs.getString("lname") %></td>
                <td><%= rs.getLong("acc_no") %></td>
                <td><%= rs.getBigDecimal("pass_balance") %></td>
                <td><%= rs.getString("location") %></td>
            </tr>
        <% 
        
        } 
    }
         catch(SQLException e)
        {
        	e.printStackTrace();
        }
        catch(Exception exe)
        {
        	exe.printStackTrace();
        }%>
    </table>
</body>
</html>
    