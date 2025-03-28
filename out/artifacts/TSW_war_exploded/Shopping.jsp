<%@ page import="model.Merce" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.MerceDAO" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>

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

<jsp:include page="footer.jsp"></jsp:include>
