<html lang="en" dir="ltr">
<head>

    <meta charset="utf-8">
    <title>Counter-Strike</title>
    <style>
        .cs-body{
            position:absolute;
            left:250px;
            top:120px;
            width:100%;
            height:645px;
        }

        #intro1{
            left:120px;
            top:80px;
            font-family:verdana;
            font-size:20px;
            color:#142170;
            height:75px;
            width:550px;
        }

        #intro2{
            left:750px;
            top:20px;
            font-family:verdana;
            font-size:30px;
            color:#000;
            font-weight:bold;
            height:75px;
            width:500px;
        }

        #img2{
            top:130px;
            left:178px;
            width:537px;
            height:195px;
        }

        #intro3{
            left:750px;
            top:70px;
            font-family:verdana;
            font-size:18px;
            color:#000;
            height:50px;
            width:300px;
        }

        #form3{
            top:120px;
            left:750px;
            font-family:verdana;
            font-size:20px;
            color:#142170;
            width:450px;
            height:495px;
        }

        #namebox{
            width:200px;
            height:40px;
            border-radius:5px 5px 5px 5px;
            background:white;
            padding:10px;
            font-size:18px;
            margin-top:8px;
            border-width: 1px;
            border-style:solid;
            border-color: gray;
        }

        #mailbox{
            width:408px;
            height:40px;
            border-radius:5px 5px 5px 5px;
            background:white;
            padding:10px;
            font-size:18px;
            margin-top:8px;
            border-width: 1px;
            border-style:solid;
            border-color: gray;
        }

        .button2{
            width:250px;
            height:40px;
            left:1000px;
            top:725px;
            background:green;
            font-family:verdana;
            font-size:18px;
            color:white;
            border-radius:5px 5px 5px 5px;
            border-width: 1px;
            border-style:solid;
            border-color: gray;
            cursor:pointer;
            outline:none;
        }

        #intro4{
            font-family:verdana;
            font-size:12px;
            color:white;
        }

        .cs-body-footer{
            width:100%;
            position:absolute;
            left:0px;
            height:80px;
            top:850px;
        }

        #cs-body-footer-base{
            width:900px;
            top:15px;
            left:200px;
            color:blue;
            height:60px;
        }

        .container{
            position: relative;
        }

        .left{
            position: absolute;
            left: 40px;
            bottom: 50px;
        }

        .right{
            position: absolute;
            bottom: 60px;
            left: 1040px;
        }

        .right input[type="text"]{
            float: right;
            padding: 6px;
            margin-top: 8px;
            margin-right: 16px;
            border: none;
            font-size: 17px;
        }

        .navbar{
            overflow: hidden;
            background-color: #333;
            font-family: Arial,Helvetica,sans-serif;
        }

        .navbar a{
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        body{
            background-color: gray;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            padding: 0 4px;
        }

        .form {
            position: relative;
            width: 50%;
            max-width: 25%;
            left: 8%;
        }

    </style>
</head>
<body>


<!-- UGUALE AD OGNI PAGINA -->
<div class="container">
    <img src="images/background.png" style="width: 100%; height:10%"/>
    <div class="left">
        <img src="images/logo.png" alt="logo"/>
    </div>
    <div class="right">
        <!-- LOGIN -->
        <div class="row">
            <div class="form"><input type="text" placeholder="username" id="namebox" name="userlogin"></div>
            <div class="form"><input type="password" id="namebox" name="passlogin"></div>

        </div>
    </div>

    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="login-register.jsp">Login/Register</a>
        <a href="">Edit Profile</a>
        <a href="">Shopping</a>
        <a href="">News/Updates</a>
    </div>
</div>
<!-- FIN QUI-->


<div class="cs-body">
    <div id="intro1" class="cs-body">Counter-strike ti aiuta a sfogarti col p90.</div>
    <div id="intro2" class="cs-body">Crea un nuovo account</div>
    <div id="img2" class="cs-body"><img src="./images/world.png" /></div>
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
        <input type="submit" class="button2" value="Create an account" />
        <br><hr>
        <p id="intro4">Compra un'arma!</p>
            <form>
    </div>
</div>

<div class="cs-body-footer">
    <div id="cs-body-footer-base" class="cs-body-footer">Italian (IT)<br><hr>
        &copy; Giuseppe Nisivoccia , Federico Apicella &nbsp;&nbsp; Per eventuali problemi consultare questa mail : g.nisivoccia@studenti.unisa.it</div>
</div>
</body>
</html>