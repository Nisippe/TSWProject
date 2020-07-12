<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%><%@taglib prefix="c"
                                         uri="http://java.sun.com/jsp/jstl/core"%>
<!-- UGUALE AD OGNI PAGINA -->
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>
<!-- FIN QUI-->

<h1>Carrello</h1>
<c:forEach items="${carrello.prodotti}" var="pq">
    <h1><c:out value="${pq.merce.nome}"/></h1>
    <a href="Prodotto?nome=${pq.merce.nome}"><img src="./images/Armi/${pq.merce.nome}.jpg"></a>
    <h3><a href="Prodotto?nome=${pq.merce.nome}">${pq.merce.nome}</a></h3>
    <h5>Quantità: ${pq.quantita} , PREZZO TOTALE: ${pq.prezzoTotEuro} $</h5>
    <form action="Carrello" method="post">
        <input type="hidden" name="setNum" value="${pq.merce.nome}">
        <input type="submit" value="Rimuovi">
    </form>
</c:forEach>
<c:if test="${empty carrello.prodotti}">
    Nessun Prodotto nel Carrello
</c:if>
<c:if test="${not empty carrello.prodotti}">
    <h2>TOTALE: ${carrello.prezzoTotEuro} $</h2>
    <form action="todo">
        <input type="submit" value="Completa Acquisto">
    </form>
</c:if>




<jsp:include page="footer.jsp">
    <jsp:param name="pageFooter" value="Home"/>
</jsp:include>