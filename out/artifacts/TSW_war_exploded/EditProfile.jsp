<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Utente" %>

<!-- UGUALE AD OGNI PAGINA -->
<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>
<!-- FIN QUI-->



<form name="aggiorna" action="" method="post">
    <h1>Aggiorna dati</h1>
    Nome<input type="text" name="nome" placeholder="<c:out value="${utente.nome}"/>" oninput="validaNome()"/><br>
    Cognome<input type="text" name="cognome" placeholder="<c:out value="${utente.cognome}"/>" oninput="validaCognome()"/><br>
    email<input type="text" name="email" placeholder="<c:out value="${utente.email}"/>" oninput="validaEmail()"/><br>
    password<input type="text" name="password" placeholder="<c:out value="${utente.passwordn}"/>" oninput="validaPassword()"/><br>
    <input type="submit" id="edit" value="Salva le modifiche"/>
</form>

<form action="Logout">
    <input type="submit" class="button3" value="LOGOUT"/>
</form>

<c:if test="${utente.admind == true}">
    <a href="users">EDIT UTENTI</a><br>
    <a href="editp">EDIT MERCE</a>
</c:if>




<jsp:include page="footer.jsp">
    <jsp:param name="pageFooter" value="Home"/>
</jsp:include>

<script>
    var borderok='5px solid #080';
    var borderno='5px solid red';
    var passwordok=false;
    var nomeok=false;
    var cognomeok=false;
    var emailok=false;


    function validaPassword() {
        var inputpw = document.forms['aggiorna']['password'];
        var password = inputpw.value;
        if (password.length >= 8 && password.toUpperCase() != password
            && password.toLowerCase() != password) {
            inputpw.style.border = borderok;
            passwordok = true;

        } else {
            inputpw.style.border = borderno;
            passwordok = false;
        }
        cambiaStatoRegistrami();
    }

    function validaNome() {
        var input = document.forms['aggiorna']['nome'];
        if (input.value.trim().length > 0
            && input.value.match(/^[ a-zA-Z\u00C0-\u00ff]+$/)) {
            input.style.border = borderok;
            nomeok = true;
        } else {
            input.style.border = borderno;
            nomeok = false;
        }
        cambiaStatoRegistrami();
    }

    function validaCognome() {
        var input = document.forms['aggiorna']['cognome'];
        if (input.value.trim().length > 0
            && input.value.match(/^[ a-zA-Z\u00C0-\u00ff]+$/)) {
            input.style.border = borderok;
            cognomeok = true;
        } else {
            input.style.border = borderno;
            cognomeok = false;
        }
        cambiaStatoRegistrami();
    }

    function validaEmail() {
        var input = document.forms['aggiorna']['email'];
        if (input.value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w+)+$/)) {
            input.style.border = borderok;
            emailok = true;
        } else {
            input.style.border = borderno;
            emailok = false;
        }
        cambiaStatoRegistrami();
    }


    function cambiaStatoRegistrami() {
        if (cognomeok && passwordok && nomeok && emailok) {
            document.getElementById('edit').disabled = false;
        } else {
            document.getElementById('edit').disabled = true;
        }
    }
</script>
