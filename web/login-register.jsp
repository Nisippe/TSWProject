<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Counter-Strike</title>
    <style>
        body{
            background-image: url("./images/grid.png");
            height:750px;

        }
        .cs-header-base{
            width:100%;
            height:90px;
            position:absolute;
            top:0;
            left:0;
            color:white;
            z-index:7;
            font-family:verdana;
            -webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, .25);
        }
        .cs-header{
            width:100%;
            height:90px;
            position:absolute;
            background:#E39B37;
            top:0;
            left:0;
            color:white;
            z-index:7;
            font-family:verdana;

        }
        #img1{
            left:320px;
            height:50px;
            width:100px;
            top:20px;
        }
        #form1{
            left:1200px;
            height:60px;
            width:180px;
            top:20px;
            font-family:verdana;
            font-size:12px;
        }
        #form2{
            left:1390px;
            height:60px;
            width:250px;
            top:20px;
            font-family:verdana;
            font-size:12px;
        }
        .submit1{
            left:1580px;
            top:34px;
            background:#5b7bc0;
            color:white;
            position:fixed;
            z-index:20;
            height:22px;
            width:50px;
            cursor:pointer;



        }
        .cs-body{
            position:absolute;
            left:250px;
            top:90px;
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
        #r-b{
            font-size:12px;
            height:15px;
            width:15px;
        }
        .button2{
            width:250px;
            height:40px;
            left:750px;
            top:625px;
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
        #intro5{
            font-family:verdana;
            font-size:14px;
            color:gray;

        }
        .cs-body-footer{
            width:100%;
            position:absolute;
            left:0px;
            height:80px;
            background: url=("./images/grid.png");
            top:850px;

        }
        #cs-body-footer-base{
            width:900px;
            top:15px;
            left:200px;
            color:blue;
            height:60px;
        }
    </style>
</head>
<body>
<div class="cs-header-base">
</div>
<div class="cs-header">
    <div id="img1" class="cs-header"><img src="./images/icon.png" /></div>
    <div id="form1" class="cs-header">Email o Telefono<br>
        <input placeholder="Email" type="mail" name="name" /><br>
        <input type="checkbox" />Rimani loggato</div>

    <div id="form2" class="cs-header">Password<br>
        <input placeholder="Password" type="password" name="password" /><br>
        Dimenticato la password?
    </div>
</div>
</div>
<input type="submit" class="submit1" value="login" />
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
        &copy; Giuseppe Nisivoccia , Federico Apicella &nbsp;&nbsp; Per eventuali problemi consultare a mammt</div>
</div>
</body>
</html>