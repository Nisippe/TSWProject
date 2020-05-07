<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Counter-Strike</title>
    <link href="css/HomePage.css" rel="stylesheet" />
    <link href="css/footerPage.css" rel="stylesheet" />
</head>
<body>
<div class="container">
    <img src="images/background.png" style="width: 100%; height:10%"/>
    <div class="left">
        <img src="images/logo.png" alt="logo"/>
    </div>

    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="login-register.jsp">Login/Register</a>
        <%
            if(request.getSession().getAttribute("utente")==null) {
        %>
        <a href="login-register.jsp">Edit Profile</a>
        <%
        }else{
        %>
        <a href="EditProfile.jsp">Edit Profile</a>
        <%
            }
        %>
        <a href="Shopping.jsp">Shopping</a>
        <a href="NewsUpdates.jsp">News/Updates</a>
    </div>
    <div class="right">
        <!--Ajax-->
        <input type="text" placeholder="Cerca.."/>
    </div>

    <div class="carrello">

        <%
            if(request.getSession().getAttribute("utente")==null) {
               %>

        <a href="login-register.jsp"><img src="images/cart.png" alt="carrello" class="cart"/></a>
    <%
            }else{
    %>
        <a href="Carrello.jsp"><img src="images/cart.png" alt="carrello" class="cart"/></a>
    <%
        }
    %>
    </div>
    <%
        if(request.getSession().getAttribute("utente")==null) {
        }else{

    %>
    <form action="Logout">
        <div class="nome"><input type="submit" value="logout"></div>
    </form>
    <%
        }
    %>

    </div>
</div>