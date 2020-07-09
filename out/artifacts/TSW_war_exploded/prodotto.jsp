<%@ page import="model.Merce" %>
<%@ page import="model.MerceDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>



<img src="./images/Armi/<c:out value="${prodotto.nome}"/>.jpg" alt="${prodotto.nome}" style="border: 5px solid #000000"></a>

<div class="info">
    <h2><c:out value="${prodotto.nome}"/></h2>
    <h3><c:out value="${prodotto.prezzo} $"/></h3>
</div>

<h4><c:out value="${prodotto.descrizione}"/></h4>
<form action="Carrello">
    <c:choose>
    <c:when test="${prodotto.quantita ne 0}">

        <input type="hidden" name="nome" value="${prodotto.nome}">
    <input type="submit" class="button1" value="Aggiungi al carrello">
    </c:when>
    <c:otherwise>
    NON DISPONIBILE
     </c:otherwise>
    </c:choose>
</form>

<jsp:include page="footer.jsp"></jsp:include>
