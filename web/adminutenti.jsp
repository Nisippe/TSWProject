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
            <th>nickname</th>
            <th>nome</th>
            <th>cognome</th>
            <th>email</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${utenti}" var="utente">
            <tr>
                <td>${utente.nickname}</td>
                <td>${utente.nome}</td>
                <td>${utente.cognome}</td>
                <td>${utente.email}</td>
                <td>
                    <form action="remove" method="post">
                        <input type="hidden" name="nickname" value="${utente.nickname}">
                        <input type="submit" name="rimuovi" value="Rimuovi">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</section>



<jsp:include page="footer.jsp">
    <jsp:param name="pageFooter" value="Home"/>
</jsp:include>
