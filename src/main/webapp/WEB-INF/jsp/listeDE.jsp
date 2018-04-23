<%@page import="com.essat.model.Demande"%>

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


<!-- Page header -->
<header class="page-header bg-img"
	style="background-image: url(img/bg-banner1.jpg);">
	<div class="container page-name">
		<h1 class="text-center">Liste de demende de projet</h1>
		<p class="lead text-center">Ecole Supérieure des Sciences
			Appliquées et de la Technologie Privée de Gabès</p>
	</div>

	<div class="container">

		<div class="row">

			<table class="table table-striped table-hover table-bordered" >
			    <th>n</th>
				<th>Enseignent</th>
				<th>Sujet</th>
				<th>Description</th>
				<th>date debut</th>
				<th>date fin</th>
				<th>Etat</th>
				<th>refuser</th>
   <c:forEach var="d" items="${list12}" varStatus="status">
   
				<tr> <td>1</td>
				    <td>${d.deProjet.sujetProjet}</td>
					<td>${d.deProjet.sujetProjet}</td>
					<td>${d.deProjet.descProjet}</td>
					
					<td>	${d.deProjet.dateDebProjet}</td>
					<td>	${d.deProjet.dateFinProjet}</td>
					<td>
				                        	<f:form action="appr" method="post">
												<input type="hidden" value="${d.idDemande}" name="idProjet"
													id="idProjet" >
												<button class="btn btn-success" type="submit">Approuver</button>
											</f:form> </td>
					
<!-- 					     <button type="button" class="btn btn-success">Approuver</button></td> -->
						<td><button type="button" class="btn btn-danger">Refuser</button></td>
				</tr>
</c:forEach> 

			</table>






		</div>




	</div>

</header>
<!-- END Page header -->


<!-- Main container -->
<main> </main>
<!-- END Main container -->


<!-- Site footer -->
<jsp:include page="footer.jsp"></jsp:include>