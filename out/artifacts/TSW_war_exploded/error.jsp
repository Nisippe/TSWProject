<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%><%@taglib prefix="c"
                                         uri="http://java.sun.com/jsp/jstl/core"%>
<!-- UGUALE AD OGNI PAGINA -->
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>
<!-- FIN QUI-->

<h1>Errore ${requestScope['javax.servlet.error.status_code']}</h1>


<jsp:include page="footer.jsp">
    <jsp:param name="pageFooter" value="Home"/>
</jsp:include>
