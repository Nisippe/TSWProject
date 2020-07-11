<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- UGUALE AD OGNI PAGINA -->
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>
<!-- FIN QUI-->

<form action="addp">

Nome<input type="text" name="nome" placeholder="Nome"/><br>
Prezzo<input type="number" name="prezzo" placeholder="Prezzo"><br>
Quantità<input type="number" name="quantita" placeholder="Quantità"><br>
Descrizione<input type="text" name="descrizione" placeholder="Descrizione"><br>
Categoria<input type="text" name="categoria" placeholder="Categoria"><br>
Tipo di merce<input type="text" name="tipomerce" placeholder="Tipo di merce"><br>
Tipo di munizioni<input type="text" name="tipomunizioni" placeholder="Tipo di munizioni"><br>

    <input type="submit" value="Aggiungi prodotto">
</form>