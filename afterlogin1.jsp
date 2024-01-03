<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>STUDENT UNION BANK</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f9ffab;
    }

    header {
      background-color: #333;
      padding: 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .animated-bank {
      color: transparent;
      font-size: 36px;
      margin: 0;
      background: linear-gradient(45deg, #93e6ff, #0000ff);
      background-clip: text;
      -webkit-background-clip: text;
      align-items: center;
      justify-content: center;
      
      
    }

    .animated-bank span {
      font-weight: bold;
            align-items: center;
      
    }

    .logout {
      color: #fff;
      text-decoration: none;
      font-size: 16px;
      background-color: #ff3366;
      padding: 8px 12px;
      border-radius: 5px;
    }

    main {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 80vh;
    }

    .animated-box {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
      padding: 40px;
      animation: fadeInUp 1s ease;
    }

    .box-link {
      text-decoration: none;
      color: #333;
      font-size: 24px;
      background-color: #f2f2f2;
      padding: 10px 20px;
      border-radius: 5px;
      margin: 10px;
      transition: background-color 0.3s ease;
    }

    .box-link:hover {
      background-color: #ff3366;
      color: #fff;
      transform: scale(1.05);
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>
  
  <% 
    String username = (String) session.getAttribute("loggedInEmail");
  %>
  <h3 style="color: blue; font-family: 'Arial', sans-serif;">Welcome : <%= username %></h3>
</head>
<body>
  <header>
    <!-- Bank name with animated gradient text -->
    <h1 class="animated-bank">STUDENT<span> UNION BANK</span></h1>
    <!-- Logout button -->
    <a class="logout" href="LogoutServlet">Logout</a>
  </header>
  <main>
    <!-- Stylish animated box -->
    <div class="animated-box">
      <!-- Transaction anchor tag -->
      <a href="#" class="box-link">Transaction</a>
      <!-- Account details anchor tag -->
      <a href="tester.jsp" class="box-link">Account Details</a>
    </div>
  </main>
</body>
</html>
