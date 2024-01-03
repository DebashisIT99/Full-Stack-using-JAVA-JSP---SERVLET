<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Account Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #9acdff;
            color: #333333;
        }
        .container {
            max-width: 800px;
            margin: 30px auto;
            background-color: #ffffff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #4285f4;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #dddddd;
        }
        th {
            background-color: #f9f9f9;
            color: #555555;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .location {
            color: #ea4335;
        }
        /* Additional Styles for Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        tr {
            animation: fadeIn 0.5s ease;
        }
        /* Rainbow background for table rows */
        tr:nth-child(odd) {
            background-color: #f8e1e1;
        }
        tr:nth-child(even) {
            background-color: #e1f8fb;
        }
        .back-button {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            background-color: #4285f4;
            color: #ffffff;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #3b79d6;
        }
    </style>
</head>
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
<body>
    <div class="container">
        <h1>Account Information</h1>
        <form action="acc_info" method="post">
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Account Number</th>
                    <th>Passbook Balance</th>
                    <th>Location</th>
                </tr>
                <tr>
                    <td><%= rs.getString("firstName") %></td>
                    <td><%= rs.getString("lastName") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getLong("accountNumber") %></td>
                    <td><%= rs.getBigDecimal("passbookBalance") %></td>
                    <td class="location"><%= rs.getString("location") %></td>
                </tr>
            </table>
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
            <a class="back-button" href="afterlogin1.jsp">Back</a>
        </form>
    </div>
</body>
</html>
