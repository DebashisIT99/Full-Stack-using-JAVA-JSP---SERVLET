<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Registration Form in HTML CSS</title>
    <link rel="stylesheet" href="Signup.css" />
    <style>body{ background-image: url('bank.png');
    background-repeat: no-repeat;
    background-size: cover;}
    </style>
  </head>
  <body >
    <section class="container">
      <header>Registration Form</header>
      <form action="register" method="post" class="form">
      <div class="input-box">
          <label>User ID</label>
          <input type="text" name="user_id" placeholder="Enter user id" required />
        </div>
        <div class="input-box">
          <label>First Name</label>
          <input type="text" name="first_name" placeholder="Enter first name" required />
        </div>
        <div class="input-box">
          <label>Last Name</label>
          <input type="text" name="last_name" placeholder="Enter last name" required />
        </div>
        <div class="input-box">
          <label>Email</label>
          <input type="text" name="email" placeholder="Enter email address" required />
        </div>
        <div class="column">
          <div class="input-box">
            <label>Contact No</label>
            <input type="number" name="contact_no" placeholder="Enter Contact no" required />
          </div>
          <div class="input-box">
            <label>Alt Contact no</label>
            <input type="number" name="alt_contact_no" placeholder="Enter Alt Contact no" required />
          </div>
        </div>
        <div class="column">
          <div class="input-box">
            <label>D.O.B</label>
            <input type="date" name="dob" placeholder="Enter birth date" required />
          </div>
        </div>
        <div class="input-box address">
          <label>Residential Address</label>
          <input type="text" name="r_address" placeholder="Enter street address" required />
          <div class="column">
            <div class="select-box">
              <select name="nationality">
                <option hidden >Nationality</option>
                <option value="American">American</option>
                <option value="Japanese">Japanese</option>
                <option value="Indian">Indian</option>
                <option value="Nepali">Nepali</option>
              </select>
            </div>
          </div>
          <div class="column">
            <input type="text" name="region" placeholder="Enter your region" required />
            <input type="number" name="pcode" placeholder="Enter postal code" required />
          </div>
        </div>
        <div class="column">
          <div class="input-box">
            <label>ID-Proof no</label>
            <input type="number" name="idproof" placeholder="ID-Proof no" required />
          </div>
          <div class="input-box">
            <label>PAN no</label>
            <input type="number" name="pan_no" placeholder="Enter PAN no" required />
          </div>
        </div>
        <label class="gap">Acc Type</label>
        <div class="column">
          <div class="select-box">
            <select name="acc_type" >
              <option hidden >Account Type</option>
              <option value="Savings">Savings</option>
              <option value="Current">Current</option>
              <option value="Others">Others</option>
            </select>
          </div>
        </div>
        <div class="input-box">
          <label>Password</label>
          <input type="password" name="password" placeholder="Enter Password" required />
        </div>
        <button>Submit</button>
      </form>
    </section>
  </body>
</html>