<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 3/28/2023
  Time: 6:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Full-Stack Application</title>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--    <%@taglib  uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>--%>

    <%--    <%@ taglib  prefix="c" uri="https://java.sun.com/jsp/jstl/core"%>--%>
    <%--    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
    <%--    <%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>--%>
    <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>

</head>
<body>

<h1>This is the list of users</h1>
<div id="wrapper">
    <div class="container">
        <div class="table">
            <table class="table">
                <tr>
                    <th>id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Dob</th>
                    <th>password</th>
                    <th>Check Box</th>
                </tr>

                <c:forEach items="${childList}" var="child">
                    <tr>
                        <td>${child.id}</td>
                        <td>${child.firstname}</td>
                        <td>${child.lastname}</td>
                        <td>${child.email}</td>
                        <td>${child.dob}</td>
                        <td>${child.password}</td>
                        <td><a href="user?page=userDetails&id=${child.id}">View Details</a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
        <a href="user?page=newUsers"><h4>Add New User</h4></a>
    </div>

</div>

</body>
</html>
