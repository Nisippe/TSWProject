<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Counter-Strike</title>
  <style>
      body{
          background-color: gray;
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
          left: 1640px;
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

    * {box-sizing: border-box}


    .item {
        position: relative;
        width: 50%;
        max-width: 25%;
    }

    /* Make the image to responsive */
    .image {
        display: block;
        width: 100%;
        height: auto;
    }

    /* The overlay effect - lays on top of the container and over the image */
    .overlay {
        position: absolute;
        bottom: 0;
        background: rgb(0, 0, 0);
        background: rgba(0, 0, 0, 0.5); /* Black see-through */
        color: #f1f1f1;
        width: 100%;
        transition: .5s ease;
        opacity:0;
        color: white;
        font-size: 20px;
        padding: 20px;
        text-align: center;
    }

    /* When you mouse over the container, fade in the overlay title */
    .item:hover .overlay {
        opacity: 1;
    }

    .row {
        display: flex;
        flex-wrap: wrap;
        padding: 0 4px;
    }

    .carrello{
        position: absolute;
        bottom: 10px;
        left: 1740px;
    }

      .cart{
          width: 20%;
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
            <!--Ajax-->
            <input type="text" placeholder="Cerca.."/>
        </div>

        <div class="navbar">
            <a href="index.jsp">Home</a>
            <a href="login-register.jsp">Login/Register</a>
            <a href="">Edit Profile</a>
            <a href="">Shopping</a>
            <a href="">News/Updates</a>

        </div>

        <div class="carrello">
            <a href=""><img src="./images/cart.png" alt="carrello" class="cart"></a>
        </div>
    </div>
  <!-- FIN QUI-->
<div class="row">
  <div class="item">
      <a href=""><img src="./images/Armi/Ak-47.jpg" alt="ak" class="image"></a>
      <div class="overlay">AK-47</div>
  </div>

  <div class="item">
      <a href=""><img src="./images/Armi/M4A1.png" alt="m4" class="image"></a>
      <div class="overlay">M4-A1</div>
  </div>

  <div class="item">
      <a href=""><img src="./images/Armi/awp.jpg" alt="awp" class="image"></a>
      <div class="overlay">AWP</div>
  </div>

  <div class="item">
      <a href=""><img src="./images/Armi/p90.png" alt="p90" class="image"></a>
      <div class="overlay">P90</div>
  </div>
</div>

</body>
</html>
