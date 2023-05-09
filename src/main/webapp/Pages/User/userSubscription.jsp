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
<%--    <link rel="stylesheet" type="text/css" href="../CSS/userSubscription.css">--%>

    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background-color: white;
            font-family: 'Poppins', sans-serif;
        }
        /* ************************* NAV SECTION BEGINS ************************* */
        nav {
            height: 100px;
            width: 100%;
            background-color: white;
            position: fixed;
            /* box-shadow: 0px 1px 18px 0px #e6e6e6; */
            display: flex;
            flex-direction: row;
            flex-wrap: nowrap;
            justify-content: space-between;
            align-items: center;
        }
        .logo {
            height: 50px;
            width: 175px;
            margin: 25px 0px 25px 150px;
            background-image: url(../ASSETS/Website/PragatiHeaderLogo.svg);
            background-repeat: no-repeat;
        }
        .spacing{
            height: 100px;
            background-color: ffffff;
            width: 100%;
        }
        .spacing2{
            height: 10px;
            background-color: ffffff;
            width: 100%;
        }
        .Container1{
            margin: 0px auto;
            width: 1100px;
            background-image: url('../ASSETS/Subscription/SubscriptionBackgroundBlob.svg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 530px;
            border-radius: 36px;
            display: flex;
            flex-direction: column;
            text-align: center;
        }
        .HeaderText{
            color: #484F61;
            text-align: center;
            display: inline;
            margin: 36px auto;
            height: 50px;
            font-weight: 500;
            font-family: 'Poppins Medium';
            font-size: 40px;
        }
        .cardBox{
            width: 950px;
            height: 350px;
            margin: 40px auto;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: space-evenly;
        }
        .card{
            width: 250px;
            height: 315px;
            background-color: white;
            margin: 5px;
            border-radius: 27px;
            box-shadow: 1px 1px 18px #d8d8d8;
        }
        .pHeading{
            font-size: 20px;
            color: #5A70D8;
            margin: 32px 25px 5px 25px;
            font-weight: 500;
        }
        .pPrice{
            font-size: 18px;
            background-color: #5A70D8;
            color: white;
            margin: 0px 70px 20px 70px;
            padding: 5px;
            border-radius: 10px;
            font-weight: 700;
        }
        .pDesc{
            color: #636363;
            font-size: 13px;
            margin: 30px 32px 0px 32px;
        }
        .subscribeButton {
            font-size: 14px;
            background-color: white;
            padding: 12px 30px;
            width: auto;
            text-align: center;
            align-self: center;
            text-decoration: none;
            text-transform: uppercase;
            color: #636363;
            display: flex;
            border: 1px solid #636363;
            border-radius: 45px;
            margin: 30px auto;
            box-shadow: 0px 1px 9px 0px #e6e6e6;
            cursor: pointer;
        }
        .subscribeButton:hover, .subscribeButton:focus, .subscribeButton:active{
            border: 1px solid #5A70D8;
            box-shadow: 0px 1px 9px 0px #e4d8ff;
            color: #5A70D8;
        }
    </style>
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
            <form action="../../PragatiA_war_exploded/childrenservlet?page=payment" method="POST">
                <input type="hidden" value="0" name="price"  />
                <button type="submit" class="subscribeButton">SUBSCRIBE</button>
            </form>
        </div>

        <div class="card" id="card2">
            <p class="pHeading">Monthly Plan</p>
            <p class="pPrice">Rs. 25</p>
            <p class="pDesc">This plan includes the complete subscription of all features of this app for an entire month.</p>
            <form action="../../PragatiA_war_exploded/childrenservlet?page=payment" method="POST">
                <input type="hidden" value="25" name="price" />
                <input type="hidden" value="Monthly Plan" name="plan" />
                <input type="hidden" value="<%= session.getAttribute("stripeid") %>" name="customerId" />
                <input type="hidden" value="<%= session.getAttribute("uuid") %>" name="uuid" />
                <button type="submit" class="subscribeButton">SUBSCRIBE</button>
            </form>
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
