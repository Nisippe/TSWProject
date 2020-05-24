<%@ page import="model.Utente" %>

<!-- UGUALE AD OGNI PAGINA -->
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>
<!-- FIN QUI-->

<%
    Utente u=(Utente)session.getAttribute("utente");
%>

<form action="" method="post">
    <h1>Aggiorna dati</h1>
    Nome<input type="text" name="nome" value="<%=u.nome%>" /><br>
    Cognome<input type="text" name="cognome" value="<%=u.cognome%>"/><br>
    email<input type="text" name="email" value="<%=u.email%>"/><br>
    password<input type="text" name="password" value="<%=u.passwordn%>"/><br>
    nickname<input type="text" name="nickname" value="<%=u.nickname%>"/><br>
    giorno di nascita<input type="text" value="<%=u.giorno%>"/><br>
    mese di nascita<input type="text" value="<%=u.mese%>"/><br>
    anno di nascita<input type="text" name="anno" value="<%=u.anno%>">
    <input type="submit" name="edit" value="Salva le modifiche"/>
</form>


<jsp:include page="footer.jsp">
    <jsp:param name="pageFooter" value="Home"/>
</jsp:include>