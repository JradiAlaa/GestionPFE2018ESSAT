<%@page import="com.essat.model.Projet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<c:if
	test="${sessionScope.role!='Enseignent'&& sessionScope.role!='dept' && sessionScope.role!='Etudiant'}">
	<c:set var="eureur" value="401" scope="session" />
	<c:redirect url="/login"></c:redirect>
</c:if>
<c:if test="${sessionScope.role==null}">
	<c:set var="eureur" value="accées refuser" scope="session" />
	<c:redirect url="/login"></c:redirect>
</c:if>
<jsp:include page="header.jsp"></jsp:include>


<!-- Page header -->
<header class="page-header"
	style="background-image: url(http://haydoninternational.com/wp/wp-content/uploads/2017/04/services-1.jpg)">
	<div class="container page-name">
		<h1 class="text-center">Notification</h1>
		<p class="lead text-center">Ecole Supérieure des Sciences
			Appliquées et de la Technologie Privée de Gabès</p>
	</div>

	<div class="container">
	<c:if
	test="${sessionScope.role!='Enseignent'&& sessionScope.role!='dept'}">   
		<div class="row">
			<table class="table table-striped table-hover table-bordered">
				<th>Etudiant</th>
				<th>Sujet</th>
				<th>Description</th>
				<th>date debut</th>
				<th>date fin</th>
				<th>Etat</th>
				<th>refuser</th>
				<c:forEach var="p" items="${list}" varStatus="status">
					<c:if test="${p.etatProjet=='1'}">
						<tr class="success">
							<td>${p.userProjet.nomUser}</td>
							<td>${p.sujetProjet}</td>
							<td>${p.descProjet}</td>
							<td>${p.dateDebProjet}</td>
							<td>${p.dateFinProjet}</td>
							<td>
								<button type="button" class="btn btn-success">
									Approuver</button>
							</td>
							<td><button type="button" class="btn btn-danger"
									disabled="disabled">Supprimer</button></td>
						</tr>
					</c:if>
					<c:if test="${p.etatProjet=='0'}">
						<tr class="info">
							<td>${p.userProjet.nomUser}</td>
							<td>${p.sujetProjet}</td>
							<td>${p.descProjet}</td>
							<td>${p.dateDebProjet}</td>
							<td>${p.dateFinProjet}</td>
							<td>
								<button type="button" class="btn  btn-info">en attente
								</button>
							</td>
							<td><button type="button" class="btn btn-danger">Supprimer</button></td>
						</tr>
					</c:if>
					<c:if test="${p.etatProjet=='2'}">
						<tr class="danger">
							<td>${p.userProjet.nomUser}</td>
							<td>${p.sujetProjet}</td>
							<td>${p.descProjet}</td>
							<td>${p.dateDebProjet}</td>
							<td>${p.dateFinProjet}</td>
							<td>
								<button type="button" class="btn btn-danger">Refuser</button>
							</td>
							<td><button type="button" class="btn btn-danger">Supprimer</button></td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
		</c:if>
			<c:if test="${sessionScope.role!='Etudiant'}">
		<div class="row">
			<table class="table table-striped table-hover table-bordered">
				<th>Enseignent</th>
				<th>Sujet</th>
				<th>Description</th>
				<th>date debut</th>
				<th>date fin</th>
				<th>Etat</th>
				<th>refuser</th>
				<c:forEach var="p" items="${list}" varStatus="status">
					<c:if test="${p.etatProjet=='1'}">
						<tr class="success">
							<td>${p.userProjet.nomUser}</td>
							<td>${p.sujetProjet}</td>
							<td>${p.descProjet}</td>
							<td>${p.dateDebProjet}</td>
							<td>${p.dateFinProjet}</td>
							<td>
								<button type="button" class="btn btn-success">
									Approuver</button>
							</td>
							<td><button type="button" class="btn btn-danger"
									disabled="disabled">Supprimer</button></td>
						</tr>
					</c:if>
					<c:if test="${p.etatProjet=='0'}">
						<tr class="info">
							<td>${p.userProjet.nomUser}</td>
							<td>${p.sujetProjet}</td>
							<td>${p.descProjet}</td>
							<td>${p.dateDebProjet}</td>
							<td>${p.dateFinProjet}</td>
							<td>
								<button type="button" class="btn  btn-info">en attente
								</button>
							</td>
							<td><button type="button" class="btn btn-danger">Supprimer</button></td>
						</tr>
					</c:if>
					<c:if test="${p.etatProjet=='2'}">
						<tr class="danger">
							<td>${p.userProjet.nomUser}</td>
							<td>${p.sujetProjet}</td>
							<td>${p.descProjet}</td>
							<td>${p.dateDebProjet}</td>
							<td>${p.dateFinProjet}</td>
							<td>
								<button type="button" class="btn btn-danger">Refuser</button>
							</td>
							<td><button type="button" class="btn btn-danger">Supprimer</button></td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
		</c:if>
	</div>
</header>
<!-- END Page header -->
<!-- Main container -->
<main> </main>
<!-- END Main container -->
<!-- Site footer -->
<jsp:include page="footer.jsp"></jsp:include>