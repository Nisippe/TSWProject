<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <!-- UGUALE AD OGNI PAGINA -->
  <jsp:include page="header.jsp">
      <jsp:param name="pageTitle" value="Home"/>
  </jsp:include>
  <!-- FIN QUI-->



<div class="row">
    <div class="item">
        <a href="Prodotto?nome=AK-47"><img src="images/Armi/AK-47.jpg" alt="ak" class="image"></a>
        <div class="overlay">AK-47</div>
    </div>

    <div class="item">
        <a href="Prodotto?nome=M4A1-S"><img src="images/Armi/M4A1-S.jpg" alt="m4" class="image"></a>
        <div class="overlay">M4-A1</div>
    </div>

    <div class="item">
        <a href="Prodotto?nome=AWP"><img src="images/Armi/AWP.jpg" alt="awp" class="image"></a>
        <div class="overlay">AWP</div>
    </div>

    <div class="item">
        <a href="Prodotto?nome=P90"><img src="images/Armi/P90.jpg" alt="p90" class="image"></a>
        <div class="overlay">P90</div>
    </div>

</div>




<%@include file="footer.jsp"%>
