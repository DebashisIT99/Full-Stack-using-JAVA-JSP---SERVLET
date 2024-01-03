<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
<style>
 .logout {
      color: #fff;
      text-decoration: none;
      font-size: 16px;
      background-color: #ff3366;
      padding: 8px 12px;
      border-radius: 5px;
    }
    header {
      
      padding: 20px;
      display: flex;
      justify-content: space-between;
      align-items: right;
    }
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
  }

  h1 {
  
    color: #0099cc;
     text-align: center;
  }

  table {
    border-collapse: collapse;
    width: 80%;
    margin: 20px auto;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: #ffffff;
  }

  th, td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #dddddd;
  }

  tr:hover {
    background-color: #f2f2f2;
  }

  th {
    background-color: #0099cc;
    color: white;
  }
</style>
</head>
<body>
<h1 >Account Details</h1>
<header><a class="logout" href="LogoutServlet">Logout</a></header>
<table>
  <tr>
    <th>Email</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Account Number</th>
    <th>Account Balance</th>
    <th>Location</th>
  </tr>
  <%-- Assuming you have passed the accountDetails ResultSet as 'accountDetails' request attribute --%>
  <%
    String username = (String) session.getAttribute("loggedInEmail");
    String jdbcURL = "jdbc:mysql://localhost:3306/oppo";
    String dbUser = "root";
    String dbPassword = "Debashis99";
    try {
      Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
      PreparedStatement stmt;
      String sql = "SELECT * FROM accounts WHERE email = ?";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, username);
      ResultSet rs = stmt.executeQuery();
      while (rs.next()) {
  %>
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
    } catch (SQLException e) {
      e.printStackTrace();
    } catch (Exception exe) {
      exe.printStackTrace();
    }
  %>
</table>

<!-- Add some animations -->
<script>
  // Animation for table rows on hover
  const tableRows = document.querySelectorAll('table tr');
  tableRows.forEach(row => {
    row.addEventListener('mouseover', () => {
      row.style.backgroundColor = '#f2f2f2';
    });
    row.addEventListener('mouseout', () => {
      row.style.backgroundColor = 'white';
    });
  });

  // Simple fade-in animation for the table
  document.addEventListener('DOMContentLoaded', () => {
    const table = document.querySelector('table');
    table.style.opacity = 0;
    let opacity = 0;
    const fadeIn = () => {
      if (opacity < 1) {
        opacity += 0.01;
        table.style.opacity = opacity;
        requestAnimationFrame(fadeIn);
      }
    };
    fadeIn();
  });
</script>
</body>
</html>
