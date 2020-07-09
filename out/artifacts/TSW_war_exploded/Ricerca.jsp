<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>

<grid>


    <grid>

        <c:forEach items="${prodotti}" var="prodotto">

            <div class="grid-container">
                <h3>
                    <a href="Prodotto?nome=<c:out value="${prodotto.nome}"/>"><c:out value="${prodotto.nome}" /></a>
                </h3>
                <h4><c:out value="${prodotto.prezzo}" /> &euro;</h4><a href="Prodotto?nome=<c:out value="${prodotto.nome}"/>"><img src="./images/Armi/<c:out value="${prodotto.nome}"/>.jpg" alt="${prodotto.nome}" style="border: 5px solid #000000"></a>

            </div>

        </c:forEach>

    </grid>

    <c:if test="${empty prodotti}">
        <h1 style="text-align: center">NESSUN PRODOTTO TROVATO</h1>
    </c:if>

</grid>

<jsp:include page="footer.jsp"></jsp:include>
