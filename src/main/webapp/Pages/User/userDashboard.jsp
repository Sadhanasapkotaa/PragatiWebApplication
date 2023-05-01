<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 3/28/2023
  Time: 5:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Dashboard</h1>
<h1>Welcome <%= session.getAttribute("firstname") %>
    <h1>Welcome <%= session.getAttribute("myname") %></h1>
    <h1>Welcome <%= session.getAttribute("stripeid") %></h1>

<%--    <a href="/PragatiA_war_exploded/Pages/User/userList.jsp">userlist</a>--%>
    <form action="../../PragatiA_war_exploded/childrenservlet?page=childrenList" method="post">
        <button type="submit">get user list</button>
    </form>

</body>
</html>
