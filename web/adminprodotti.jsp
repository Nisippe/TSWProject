<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%><%@taglib prefix="c"
                                         uri="http://java.sun.com/jsp/jstl/core"%>
<!-- UGUALE AD OGNI PAGINA -->
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>
<!-- FIN QUI-->


<section>
<table>
<thead>
<tr>
    <th>nome</th>
    <th>prezzo</th>
    <th>quantità</th>
    <th>categoria</th>
</tr>
</thead>

<tbody>
<c:forEach items="${merce}" var="m">
    <tr>
        <td>${m.nome}</td>
        <td>${m.prezzo}</td>
        <td>${m.quantita}</td>
        <td>${m.categoria}</td>
        <td>
            <form action="rimuovip" method="post">
                <input type="hidden" name="nome" value="${m.nome}">
                <input type="submit" name="rimuovi" value="Rimuovi">
            </form>
        </td>
    </tr>
</c:forEach>



