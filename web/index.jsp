  <!-- UGUALE AD OGNI PAGINA -->
  <jsp:include page="header.jsp">
      <jsp:param name="pageTitle" value="Home"/>
  </jsp:include>
  <!-- FIN QUI-->



  <div class="center"><h1>Novita'</h1></div>

<div class="row">
  <div class="item">
      <a href=""><img src="images/Armi/AK-47.jpg" alt="ak" class="image"></a>
      <div class="overlay">AK-47</div>
  </div>

  <div class="item">
      <a href=""><img src="images/Armi/M4A1-S.jpg" alt="m4" class="image"></a>
      <div class="overlay">M4-A1</div>
  </div>

  <div class="item">
      <a href=""><img src="images/Armi/AWP.jpg" alt="awp" class="image"></a>
      <div class="overlay">AWP</div>
  </div>

  <div class="item">
      <a href=""><img src="images/Armi/P90.jpg" alt="p90" class="image"></a>
      <div class="overlay">P90</div>
  </div>
</div>

  <jsp:include page="footer.jsp">
      <jsp:param name="pageFooter" value="Home"/>
  </jsp:include>
