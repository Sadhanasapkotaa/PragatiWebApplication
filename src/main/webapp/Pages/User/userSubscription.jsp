<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 4/25/2023
  Time: 7:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../CSS/userSubscription.css">
    <title>Pragati | Subscription </title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>

<body>

<nav>
    <div class="logo"></div>
</nav>

<div class="spacing"></div>

<div class="Container1">
    <h1 class="HeaderText">
        Our Subscription Plans:
    </h1>

    <div class="cardBox">
        <div class="card" id="card1">
            <p class="pHeading">Starter Plan</p>
            <p class="pPrice">Rs. 0</p>
            <p class="pDesc">This plan includes all learning features but doesn’t have features like themes, avatars, etc.</p>
            <form action="../../childrenservlet?page=register" method="POST">
                <button type="submit" class="subscribeButton">SUBSCRIBE</button>
            </form>

        </div>

        <div class="card" id="card2">
            <p class="pHeading">Monthly Plan</p>
            <p class="pPrice">Rs. 25</p>
            <p class="pDesc">This plan includes the complete subscription of all features of this app for an entire month.</p>
            <button type="submit" class="subscribeButton">SUBSCRIBE</button>
        </div>

        <div class="card" id="card3">
            <p class="pHeading">Yearly Plan</p>
            <p class="pPrice">Rs. 270</p>
            <p class="pDesc">This plan includes the complete subscription of all features for an entire year for <b>FLAT 10% OFF</b></p>
            <button type="submit" class="subscribeButton">SUBSCRIBE</button>
        </div>
    </div>

</div>

<div class="spacing2"></div>

</body>

</html>
