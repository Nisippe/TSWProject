<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Counter-Strike</title>
    <link href="css/HomePage.css" rel="stylesheet" />
    <meta charset="UTF-8">
</head>
<body>

<div class="topmenu">
    <div class="right">
        <c:choose>
       <c:when test="${utente == null}">
           <p> <a href="login-register.jsp">Login</a> | <a href="login-register.jsp">Register</a></p>
       </c:when>
       <c:otherwise>
            <a href="EditProfile.jsp"><c:out value="${utente.nickname}" /></a>
        </c:otherwise>
    </c:choose>
    </div>



<div class="container">
    <img src="images/background.png" style="width: 100%; height:10%"/>
    <div class="left">
        <a href="index.jsp"><img src="images/logo.png" class="logo" alt="logo"/></a>
    </div>


    <div class="navbar">
       <c:forEach items="${categorie}" var="categoria">
           <a href="category?categoria=${categoria}"> <c:out value="${categoria}"/>  </a>
       </c:forEach>
    </div>



    <form action="ricerca">

        <div id="search_wrapper">
            <input type="text" id="search_field" name="search" placeholder="Cerca..." />
            <div id="search_button"><input type="submit" value="go"></div>
        </div>

    </form>

    <div class="carrello">
        <c:choose>
        <c:when test="${utente == null}">
        <a href="login-register.jsp"><img src="images/cart.png" alt="carrello" class="cart"/></a>
        </c:when>
        <c:otherwise>
        <a href="Carrello"><img src="images/cart.png" alt="carrello" class="cart"/></a>
        </c:otherwise>
        </c:choose>
       </div>
</div>