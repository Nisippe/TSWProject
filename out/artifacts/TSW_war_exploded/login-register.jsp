<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta charset="utf-8">
    <title>Counter-Strike</title>
    <link href="css/LoginPage.css" rel="stylesheet" />
    <link href="css/footerPage.css" rel="stylesheet" />
</head>
<body>
<c:choose>
<c:when test="${utente == null}">
<!-- UGUALE AD OGNI PAGINA -->
<div class="container">
    <img src="images/background.png" style="width: 100%; height:10%"/>
    <div class="left">
        <a href="WEB-INF/JSP/index.jsp"><img src="images/logo.png" alt="logo"/></a>
    </div>
    <div class="right">
        <!-- LOGIN -->
        <form action="login">
            <div class="row">
                <div class="form"><input type="text" placeholder="username" class="namebox" name="userlogin"/></div>
                <div class="form"><input type="password" class="namebox" name="passlogin"/></div>
                <div class="form1"><input type="submit" class="button2" value="Login"/> </div>
            </div>
        </form>
    </div>

    <div class="navbar">
        <c:forEach items="${categorie}" var="categoria">
            <a href="Shopping.jsp?categoria=${categoria}"> <c:out value="${categoria}"/>  </a>
        </c:forEach>
    </div>
</div>
<!-- FIN QUI-->


<div class="cs-body">
    <div id="intro1" class="cs-body">Counter-strike ti aiuta a sfogarti col p90.</div>
    <div id="intro2" class="cs-body">Crea un nuovo account</div>
    <div id="img2" class="cs-body"><img src="images/world.png" /></div>
    <div id="intro3" class="cs-body">veloce e semplice</div>
    <div id="form3" class="cs-body">
        <form name='registrazione' action="Register" method="post">
            <label>Nickname (almeno 6 caratteri)<br>Password (almeno 8 caratteri, deve contenere: una lettera maiuscola, una minuscola, un numero)</label>
        <input placeholder="Nickname" type="text" class="mailbox" name="nick"  oninput="validaUsername()"/> <br>
        <input placeholder="Nome" type="text" class="namebox" name="nome" oninput="validaNome()" />
        <input placeholder="Cognome" type="text" class="namebox" name="cognome"  oninput="validaCognome()"/> <br>
        <input placeholder="Email" type="text" class="mailbox" name="mail" oninput="validaEmail()"/><br>
        <input placeholder="Password" type="password" class="namebox" name="password" oninput="validaPassword()"/>
        <input placeholder="Conferma Password" type="password" class="namebox" name="cpassword" oninput="validaPassword()"/><br>
        <p id="intro4">Data di nascita</p>
        <input type="date" class="mailbox" name="date" max="2002-06-13" oninput="validaData()" /><br><br>
        <p id="intro4">By clicking Create an account, you agree to our Terms and that
            you have read our Data Policy, including our Cookie Use.</p>
        <input type="submit" class="button2"  id="registrami" value="Create an account" disabled/><span id="registramimessaggio"></span>
        <br><hr>
        <p id="intro4">Compra un'arma!</p>
            </form>



    </div>
</div>
</c:when>
<c:otherwise>
        <h1>SEI GIA LOGGATO!</h1>
<a href="WEB-INF/JSP/index.jsp"> torna indietro </a>
</c:otherwise>
</c:choose>

<script>
    var borderok='5px solid #080';
    var borderno='5px solid red';
    var nicknameok=false;
    var passwordok=false;
    var nomeok=false;
    var cognomeok=false;
    var emailok=false;
    var dataok=false;

    function validaUsername() {
        var input = document.forms['registrazione']['nick'];
        if(input.value.length >= 6){
            var xmlHttpReq =new XMLHttpRequest();
            xmlHttpReq.onreadystatechange=function () {
                if(this.readyState==4 && this.status==200 && this.responseText=='<ok/>'){
                    nicknameok=true;
                    input.style.border=borderok;
                }else{
                    input.style.border=borderno;
                    nicknameok=false;
                }
                cambiaStatoRegistrami();
            }
            xmlHttpReq.open("GET","VerificaUsername?nick=" + encodeURIComponent(input.value),true);
            xmlHttpReq.send();
        }else{
            input.style.border=borderno;
            nicknameok=false;
            cambiaStatoRegistrami();
        }
    }

    function validaPassword() {
        var inputpw = document.forms['registrazione']['password'];
        var inputpwconf = document.forms['registrazione']['cpassword'];
        var password = inputpw.value;
        if (password.length >= 8 && password.toUpperCase() != password
            && password.toLowerCase() != password) {
            inputpw.style.border = borderok;

            if (password == inputpwconf.value) {
                inputpwconf.style.border = borderok;
                passwordok = true;
            } else {
                inputpwconf.style.border = borderno;
                passwordok = false;
            }
        } else {
            inputpw.style.border = borderno;
            inputpwconf.style.border = borderno;
            passwordok = false;
        }
        cambiaStatoRegistrami();
    }

    function validaNome() {
        var input = document.forms['registrazione']['nome'];
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
        var input = document.forms['registrazione']['cognome'];
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
        var input = document.forms['registrazione']['mail'];
        if (input.value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w+)+$/)) {
            input.style.border = borderok;
            emailok = true;
        } else {
            input.style.border = borderno;
            emailok = false;
        }
        cambiaStatoRegistrami();
    }

    function validaData(){
        var input = document.forms['registrazione']['date'];
        if(input != "")
        {
            input.style.border=borderok;
            dataok=true;
        }else{
            input.style.border=borderno;
            dataok=false;
        }
        cambiaStatoRegistrami();
    }

    function cambiaStatoRegistrami() {
        if (nicknameok && cognomeok && passwordok && nomeok && emailok && dataok) {
            document.getElementById('registrami').disabled = false;
            document.getElementById('registramimessaggio').innerHTML = '';
        } else {
            document.getElementById('registrami').disabled = true;
            document.getElementById('registramimessaggio').innerHTML = 'Verifica che tutti i campi siano in verde.';
        }
    }
</script>

