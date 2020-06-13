<%@ page import="model.Merce" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.MerceDAO" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>

    <div>
    <!--Filtri-->
    </div>

    <%
        MerceDAO merceDAO = new MerceDAO();
           ArrayList<Merce> prodotti;
        if(request.getAttribute("filtro") == "rifle")
            prodotti = (ArrayList<Merce>) merceDAO.doRetrieveByCat("Fucile d'assalto");
        else if(request.getAttribute("filtro") == "heavy")
            prodotti = (ArrayList<Merce>) merceDAO.doRetrieveByCat("Arma Pesante");
        else if(request.getAttribute("filtro") == "mitra")
            prodotti = (ArrayList<Merce>) merceDAO.doRetrieveByCat("Mitra");
        else if(request.getAttribute("filtro") == "pistol")
            prodotti = (ArrayList<Merce>) merceDAO.doRetrieveByCat("Pistola");
        else
            prodotti = (ArrayList<Merce>) merceDAO.doRetrieveAll();

        request.setAttribute("prodotti",prodotti);
    %>

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

<jsp:include page="footer.jsp">
    <jsp:param name="pageFooter" value="Home"/>
</jsp:include>
