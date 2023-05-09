<%--
  Created by IntelliJ IDEA.
  User: Dell
  Autor: Sadhana Sapkota
  Date: 3/27/2023
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../CSS/userRegister.css">
    <title>Pragati | Create Account</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8a0a5c528.js" crossorigin="anonymous"></script>
</head>
<body>

<div class="logo"></div>

<div class="Container1">
    <h1 class="Heading">Welcome Back Sathi!</h1>

    <form action="../../childrenservlet?page=register" method="POST" class="form" id="form">
        <input type="text" name="firstname" id="firstname" placeholder="firstname">
        <br>
        <input type="text" name="lastname" id="lastname" placeholder="lastname">
        <br>
        <input type="email" name="email" id="email" placeholder="email">
        <br>
        <input type="date" name="dob" id="dob" placeholder="Insert Date">
        <br>
        <input type="password" name="password" id="password" placeholder="password">
        <br>
        <input type="password" name="confirmpassword" id="confirmpassword" placeholder="confirm password">
        <br>
        <input type="checkbox" name="terms" id="terms" style="width:36px; padding: 0px; "> <label for="terms" class="Or" style="margin:0px; padding: 0px; ">I agree to the terms and conditions.</label>
        <br>
        <button type="submit" class="mainButton">submit</button>
    </form>


    <p class="Or">Or continue with</p>

    <div class="loginIcons">
        <div class="icon" id="icon1" style="background-image: url('../ASSETS/loginPage/Frame\ 15.svg');">

        </div>
        <div class="icon" id="icon2" style="background-image: url('../ASSETS/loginPage/Frame\ 16.svg');">

        </div>
        <div class="icon" id="icon3" style="background-image: url('../ASSETS/loginPage/Frame\ 17.svg');">

        </div>
    </div>

    <p class="createAccount">Already have an account? .</p><a href="#ForgotPassword.html"><h5>Login Here</h5></a>
    <div class="spacing"></div>
</div>

</body>
</html>


