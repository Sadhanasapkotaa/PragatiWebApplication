<%--
  Created by IntelliJ IDEA.
  User: Dell
  Autor: Sadhana Sapkota
  Date: 3/27/2023
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pragati | User Register</title>
</head>
<body>
<form action="../../childrenservlet?page=register" method="POST">
    <input type="text" name="firstname" id="firstname" placeholder="firstname">
    <br>
    <input type="text" name="lastname" id="lastname" placeholder="lastname">
    <br>
    <input type="email" name="email" id="email" placeholder="email">
    <br>
    <input type="date" name="dob" id="dob" placeholder="dob">
    <br>
    <input type="password" name="password" id="password" placeholder="password">
    <br>
    <input type="password" name="confirmpassword" id="confirmpassword" placeholder="confirm password">
    <br>
    <input type="checkbox" name="terms" id="terms"> <label for="terms">I agree to the terms and conditions.</label>
    <button type="submit">submit</button>
</form>

</body>
</html>
