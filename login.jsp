<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>SUB login page</title>
	<link href="login.css" rel="stylesheet">
</head>

<body>
  
    <h1 class="h1">WELCOME TO STUDENT UNION BANK</h1>
	<div class="box">
        <h2>Login</h2>
        <form action="login" method="post">
          <div class="inputBox">
            <input type="email" name="email" required onkeyup="this.setAttribute('value', this.value);" value="">
            <label>Username</label>
          </div>
          <div class="inputBox">
            <input type="password" name="password" required value="">
                  <!--  onkeyup="this.setAttribute('value', this.value);"
                	    pattern="(?=.\d)(?=.[a-z])(?=.*[A-Z]).{8,}"
                   title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">-->
            <label>Password</label>
          </div>
          <input type="submit" name="sign-in" value="Sign In">
        </form>
      </div>
</body>
</html>