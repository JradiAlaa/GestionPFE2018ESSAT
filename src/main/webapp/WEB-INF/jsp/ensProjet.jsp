<%@page import="com.essat.model.Projet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
 <c:if test="${sessionScope.role!='Enseignent'&& sessionScope.role!='dept'}">
 <c:set var="eureur" value="401" scope="session"/>
 <c:redirect  url="/login"></c:redirect>
 </c:if>
 <c:if test="${sessionScope.role==null}">
 <c:set var="eureur" value="accées refuser" scope="session"/>
 <c:redirect  url="/login"></c:redirect>
 </c:if>
<jsp:include page="header.jsp"></jsp:include>
<script> $('#myModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  var modal = $(this)
  modal.find('.modal-title').text('New message to ' + recipient)
  modal.find('.modal-body input').val(recipient)
})</script> 
    <!-- END Navigation bar -->


    <!-- Page header -->
    <header class="page-header bg-img size-lg" style="background-image: url(img/bg-banner1.jpg)">
      <div class="container no-shadow">
        <h1 class="text-center">Mes Projets</h1>
        <p class="lead text-center">Modifer , supprimer Projet .</p>
      </div>
    </header>
    <!-- END Page header -->


    <!-- Main container -->
    <main>
      <section class="no-padding-top bg-alt">
        <div class="container">
          <div class="row">

            <div class="col-xs-12 text-right">
              <br>
              <a class="btn btn-primary btn-sm" href="postuler">Ajouter Projet</a>
            </div>


            <!-- Job detail -->
      
                   
            <c:forEach var="p" items="${list}" varStatus="status">
            <div class="col-xs-12">
             
              <div class="item-block">
                <header>
                  <a href="company-detail.html"><img src="img/logo-google.jpg" alt=""></a>
                  
                  <div class="hgroup">
                    <h4 ><a href="detProjet" > ${p.sujetProjet}</a></h4>
                  <h5>
										${p.niveauProjet} <span class="label label-success" >${p.catProjet}</span>
									</h5>
                  </div>
                  <div class="header-meta">
                    <span class="clock">${p.dateAjoutProjet}</span>
                  </div>
                </header>
           	<input type="hidden" value="${p.descProjet}" name="descProjet" id="descProjet" >
                <footer>
                  <p class="status"><strong>Date debut:</strong> ${p.dateDebProjet}</p> <br>
                   <p class="status"><strong>Date debut:</strong> ${p.dateFinProjet}</p>
                  <div class="action-btn">
                   
                    <f:form action="updateProjet" method="get">
					<input type="hidden" value="${p.idProjet}" name="idProjet" id="idProjet" >
				
					<button class="btn btn-xs btn-warning" type="submit">Modifier</button>
					
					</f:form>
					</div>
<!-- 					TEST  MODAL  -->
					    <div class="action-btn">
<!--                     <button type="button" class="btn btn-xs btn-primary" data-toggle="modal" data-target="#myModal">Open t</button> -->
                      <button class="btn btn-xs btn-primary" data-toggle="modal" href="#myModal" data-whatever="dfdso">Modal</button>
					<input type="hidden" value="${p.idProjet}" name="idProjet" id="idProjet" >
				
					</div>
					 <div class="action-btn">
                    <a class="btn btn-xs btn-danger" href="delete/${p.idProjet}">Delete</a>
                  </div>
                </footer>
              </div>
              
            </div>
            
            </c:forEach>
            
            <!-- END Job detail -->


          </div>
        </div>
      </section>
      
    </main>
    <!-- END Main container -->
    
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">New message</h4>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="control-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>
    <!-- Site footer -->
   <jsp:include page="footer.jsp"></jsp:include>