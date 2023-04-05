<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 3/27/2023
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="../../childrenservlet?page=login" method="post">
    <input type="email" name="email" placeholder="email" placeholder="email">
    <input type="password" name="password" placeholder="password" placeholder="password">
    <button type="submit">Submit</button>
</form>

<a href="user?page=newUsers">Not a Member yet? Register</a>

</body>
</html>
