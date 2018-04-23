<%@page import="com.essat.model.Projet"%>
<%@page import="com.essat.model.Demande"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<c:if
	test="${sessionScope.role!='Enseignent'&& sessionScope.role!='dept'&& sessionScope.role!='Etudiant'}">
	<c:set var="eureur" value="401" scope="session" />
	<c:redirect url="/login"></c:redirect>
</c:if>
<c:if test="${sessionScope.role==null}">
	<c:set var="eureur" value="accées refuser" scope="session" />
	<c:redirect url="/login"></c:redirect>
</c:if>
<jsp:include page="header.jsp"></jsp:include>
<!-- END Navigation bar -->


<!-- Page header -->
<header class="page-header bg-img size-lg"
	style="background-image: url(img/bg-banner2.jpg)">
	<div class="container">
		<div class="header-detail">
			<img class="logo" src="img/logo-google.jpg" alt="">
			<div class="hgroup">
				<h4>${list.sujetProjet}</h4>
									<h5>
										${list.niveauProjet} <span class="label label-success">${list.catProjet}</span>
									</h5>
								</div>
								<time>${list.dateAjoutProjet}</time>
			</div>
			<hr>
			<p class="lead">${list.descProjet}</p>

			


			<div class="button-group">
			     <div>
				  
					<h6> Date debut : ${list.dateDebProjet} , Date fin : ${list.dateFinProjet} </h6> 
					
				
					</div>
					
						<div class="action-buttons">
					<f:form action="postulerEtudiant" method="post" modelAttribute="Demande">
				        	<input type="hidden" value="0" name="etat" id="etat" path="etat">
						<input type="hidden" value="${list.idProjet}" name="deProjet" path="deProjet" id="deProjet">
						
						<button class="btn btn-primary" type="submit">postuler</button>
					</f:form>

					<!--               <a class="btn btn-success" href="demendeProjet">Demande</a> -->
				</div>
				<div class="action-buttons">
					<a class="btn btn-danger" href="listeProjet"> Retour</a>
					</div>
			</div>

		</div>
	</div>
</header>
<!-- END Page header -->


<!-- Main container -->
<main> <!-- Company detail --> <!-- END Company detail --> <!-- Open positions -->

<!-- END Open positions --> </main>
<!-- END Main container -->


<!-- Site footer -->
<jsp:include page="footer.jsp"></jsp:include>