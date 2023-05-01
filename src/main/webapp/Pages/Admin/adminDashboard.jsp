<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 3/28/2023
  Time: 6:46 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pragati | Admin Dashboard</title>
</head>
<body>
<h1>Dashboard</h1>
<h1>Welcome <%= session.getAttribute("fullname") %></h1>
<h1>Welcome <%= session.getAttribute("myname") %></h1>
<h1>Welcome <%= session.getAttribute("stripeid") %></h1>


</body>
</html>
