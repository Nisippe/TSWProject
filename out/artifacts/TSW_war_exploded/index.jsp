<%--
  Created by IntelliJ IDEA.
  User: gnisi
  Date: 15/04/2020
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Homepage</title>
    <link rel = "stylesheet"
          type = "text/css"
          href = "./css/homepage.css" />
  </head>
  <body>

  <div class="header">
    <img class="banner" src="./images/banner.png">
    <ul>
      <li><a href="./login-register.jsp">Login/Register</a></li>
      <li><a href="">News/Update</a></li>
      <li><a href="">Shopping</a></li>
    </ul>
  </div>

  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="./images/p90.png">
        <img src="./images/p90.png" alt="P90" width="600" height="400">
      </a>
      <div class="desc">Migliore arma al mondo</div>
    </div>
  </div>



  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="./images/mag-7.jpg">
        <img src="./images/mag-7.jpg" alt="mag-7" width="600" height="400">
      </a>
      <div class="desc">Arma di MrFreak</div>
    </div>
  </div>

  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="./images/Ak-47.jpg">
        <img src="./images/Ak-47.jpg" alt="ak-47" width="600" height="400">
      </a>
      <div class="desc">Arma Leggendaria</div>
    </div>
  </div>

  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="./images/M4A1.png">
        <img src="./images/M4A1.png" alt="m4a1" width="600" height="400">
      </a>
      <div class="desc">Rivale dell'Ak</div>
    </div>
  </div>

  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="./images/galil.jpg">
        <img src="./images/galil.jpg" alt="galil" width="600" height="400">
      </a>
      <div class="desc">Più economica dell'Ak</div>
    </div>
  </div>

  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="./images/famas.jpg">
        <img src="./images/famas.jpg" alt="famas" width="600" height="400">
      </a>
      <div class="desc">Più economica dell'M4</div>
    </div>
  </div>

  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="./images/awp.jpg">
        <img src="./images/awp.jpg" alt="awp" width="600" height="400">
      </a>
      <div class="desc">Una comune armicella</div>
    </div>
  </div>


  <div class="clearfix"></div>

  <div class="container">
    <div style="text-align:center">
      <h2>Contact Us</h2>
      <p>Recensisci il sito:</p>
    </div>
    <div class="row">
      <div class="column">
        <img src="./images/map.png" height="100" width="100">
      </div>
      <div class="column">
        <form action="Recensioni">
          <label for="fname">Nome</label>
          <input type="text" id="fname" name="firstname" placeholder="Nome">
          <label for="lname">Cognome</label>
          <input type="text" id="lname" name="lastname" placeholder="Cognome">
          <label for="country">Continente</label>
          <select id="country" name="country">
            <option value="America">America</option>
            <option value="Europe">Europe</option>
            <option value="Asia">Asia</option>
          </select>
          <label for="subject">Descrizione</label>
          <textarea id="subject" name="subject" placeholder="Scrivi qualcosa" style="height:170px"></textarea>
          <input type="submit" value="invia">
        </form>
      </div>
    </div>
  </div>
  </body>
</html>
