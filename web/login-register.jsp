<html>
<head>

    <meta charset="utf-8">
    <title>Counter-Strike</title>
    <link href="css/LoginPage.css" rel="stylesheet" />
    <link href="css/footerPage.css" rel="stylesheet" />
</head>
<body>
<%
    if(request.getSession().getAttribute("utente")==null) {
%>
<!-- UGUALE AD OGNI PAGINA -->
<div class="container">
    <img src="images/background.png" style="width: 100%; height:10%"/>
    <div class="left">
        <img src="images/logo.png" alt="logo"/>
    </div>
    <div class="right">
        <!-- LOGIN -->
        <form action="Register">
            <div class="row">
                <div class="form"><input type="text" placeholder="username" id="namebox" name="userlogin"/></div>
                <div class="form"><input type="password" id="namebox" name="passlogin"/></div>
                <div class="form1"><input type="submit" class="button2" value="Login"/> </div>
            </div>
        </form>
    </div>

    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="login-register.jsp">Login/Register</a>
        <a href="EditProfile.jsp">Edit Profile</a>
        <a href="Shopping.jsp">Shopping</a>
        <a href="NewsUpdates.jsp">News/Updates</a>
    </div>
</div>
<!-- FIN QUI-->


<div class="cs-body">
    <div id="intro1" class="cs-body">Counter-strike ti aiuta a sfogarti col p90.</div>
    <div id="intro2" class="cs-body">Crea un nuovo account</div>
    <div id="img2" class="cs-body"><img src="images/world.png" /></div>
    <div id="intro3" class="cs-body">veloce e semplice</div>
    <div id="form3" class="cs-body">
        <form action="Register">
        <input placeholder="Nickname" type="text" id="mailbox" name="nick" /> <br>
        <input placeholder="Nome" type="text" id="namebox" name="nome" />
        <input placeholder="Cognome" type="text" id="namebox" name="cognome"  /> <br>
        <input placeholder="Email" type="text" id="mailbox" name="mail" /><br>
        <input placeholder="Password" type="password" id="namebox" name="password" />
        <input placeholder="Conferma Password" type="password" id="namebox" name="cpassword" /><br>
        <p id="intro4">Data di nascita</p>
        <input type="date" id="mailbox" name="date" /><br><br>
        <p id="intro4">By clicking Create an account, you agree to our Terms and that
            you have read our Data Policy, including our Cookie Use.</p>
        <input type="submit" class="button2"  name="register" value="Create an account" />
        <br><hr>
        <p id="intro4">Compra un'arma!</p>
            </form>
    </div>
</div>

<%
    }else{
%>
        <h1>SEI GIA LOGGATO!</h1>
<a href="index.jsp"> torna indietro </a>
<%}%>
