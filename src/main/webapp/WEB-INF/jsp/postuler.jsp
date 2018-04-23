<%@page import="com.essat.model.Projet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>

<c:if
	test="${sessionScope.role!='Enseignent'&& sessionScope.role!='dept'}">
	<c:set var="eureur" value="401" scope="session" />
	<c:redirect url="/login"></c:redirect>
</c:if>
<c:if test="${sessionScope.role==null}">
	<c:set var="eureur" value="accées refuser" scope="session" />
	<c:redirect url="/login"></c:redirect>
</c:if>
<jsp:include page="header.jsp"></jsp:include>


<!-- Page header -->
 <header class="page-header"  style="background-image: url(http://www.dep-informatique-84.fr/userfiles/5493/DEP_Informatique_fond6.jpg)">
	<div class="container page-name">
		<h1 class="text-center">Ajouter un PFE</h1>
		<p class="lead text-center">Ajouter un noveau sujet de PFE est le
			diffuser en ligne</p>
	</div>

	<div class="container">
		<f:form action="addProjet" method="post" modelAttribute="Projet">
			<div class="row">
				<div class="form-group col-xs-12 col-sm-6">
				  	<h6>Titre de projet : </h6>
					<input type="hidden" path="userProjet" id="userProjet"
						name="userProjet" value="${sessionScope.id}"> 
						<input type="text" class="form-control input-lg"
						placeholder="nom du Sujet" path="sujetProjet" name="sujetProjet"
						id="sujetProjet">
				</div>

		

				<div class="form-group col-xs-12">
					<textarea class="form-control" rows="6" placeholder="description"
						path="descProjet" name="descProjet" id="descProjet"></textarea>
				</div>
						<div class="form-group col-xs-12 col-sm-6">
				  	<h6>Niveau : </h6>
				  		<input type="hidden"> 
					<select class="form-control selectpicker" id="niveauProjet"
						name="niveauProjet">
						<!--               <option >niveau s'houeter</option> -->
						<option id="niveauProjet" value="License">License</option>
						<option id="niveauProjet" value="Master">Master</option>
						<option id="niveauProjet" value="Ingenieur">Ingenieur</option>
						<option id="niveauProjet" value="Doctorat">Doctorat</option>
					</select>
					<!--             <a class="help-block" href="company-add.html">Add new company</a> -->
				</div>

				<div class="form-group col-xs-12 col-sm-6">

					<h6>Specialté :</h6>

					<select class="form-control selectpicker" id="catProjet"
						name="catProjet">
						<option id="catProjet" value="Reseau">Réseau Telecome</option>
						<option id="catProjet" value="Civil">Génie Civil</option>
						<option id="catProjet" value="Electronique">Electronique</option>
						<option id="catProjet" value="Mecanique">Mecanique</option>
						<option id="catProjet" value="Informatique">Informatique</option>
					</select>


				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<h6>Date début de PFE</h6>
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
						<input type="date" class="form-control"  min="2018-04-21"
							path="dateDebProjet" name="dateDebProjet" id="dateDebProjet">
					</div>
				</div>
				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<h6>Date fin de PFE</h6>
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
						<input type="date" min="2018-04-21" class="form-control"
							 path="dateFinProjet"
							name="dateFinProjet" id="dateFinProjet">
					</div>
				</div>

			</div>

			<div class="button-group">
				<div class="action-buttons">
					<div class="upload-button">
						<!--               <button class="btn btn-block btn-primary">Choose a cover image</button> -->
						<input id="etatProjet" name="etatProjet" type="hidden" value="0">
						<%--                 <c:set var = "now" value = "<% = new java.util.Date()%>" /> --%>
						<jsp:useBean id="now" class="java.util.Date" />
						<fmt:formatDate type="both" dateStyle="short" timeStyle="short"
							value="${now}" var="now1" />
						<input type="hidden" id="dateAjoutProjet" name="dateAjoutProjet"
							value="${now1}" />

						<p class="text-center">
							<button class="btn btn-success btn-xl btn-round" type="submit">postuler</button>
						</p>
						<!--               <input id="cover_img_file" type="file"> -->
					</div>
				</div>
			</div>
		</f:form>
	</div>
</header>
<!-- END Page header -->


<!-- Main container -->

<!-- Site footer -->
<jsp:include page="footer.jsp"></jsp:include>