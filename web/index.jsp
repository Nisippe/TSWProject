  <!-- UGUALE AD OGNI PAGINA -->
  <jsp:include page="header.jsp">
      <jsp:param name="pageTitle" value="Home"/>
  </jsp:include>
  <!-- FIN QUI-->


  <%
      if(request.getSession().getAttribute("utente")==null) {
      }else{
          
  %>
  <form action="/Logout">
      <div class="nome"><a href="index.jsp"><img src="images/Logout.png" style="max-width: 50%;max-height: 50%;"/></a></div>
  </form>
  <%
      }
  %>
  <div class="center"><img src="images/Novitatext.png" alt="Novità"/></div>

<div class="row">
  <div class="item">
      <a href=""><img src="images/Armi/Ak-47.jpg" alt="ak" class="image"></a>
      <div class="overlay">AK-47</div>
  </div>

  <div class="item">
      <a href=""><img src="images/Armi/M4A1.png" alt="m4" class="image"></a>
      <div class="overlay">M4-A1</div>
  </div>

  <div class="item">
      <a href=""><img src="images/Armi/awp.jpg" alt="awp" class="image"></a>
      <div class="overlay">AWP</div>
  </div>

  <div class="item">
      <a href=""><img src="images/Armi/p90.png" alt="p90" class="image"></a>
      <div class="overlay">P90</div>
  </div>
</div>

