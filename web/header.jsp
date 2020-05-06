<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Counter-Strike</title>
    <link href="css/HomePage.css" rel="stylesheet" />
</head>
<body>
<div class="container">
    <img src="images/background.png" style="width: 100%; height:10%"/>
    <div class="left">
        <img src="images/logo.png" alt="logo"/>
    </div>

    <div class="navbar">
        <a href="./index.jsp">Home</a>
        <a href="./login-register.jsp">Login/Register</a>
        <a href="">Edit Profile</a>
        <a href="./Shopping.jsp">Shopping</a>
        <a href="">News/Updates</a>
    </div>
    <div class="right">
        <!--Ajax-->
        <input type="text" placeholder="Cerca.."/>
    </div>

    <div class="carrello">
        <a href=""><img src="images/cart.png" alt="carrello" class="cart"/></a>
    </div>
</div>