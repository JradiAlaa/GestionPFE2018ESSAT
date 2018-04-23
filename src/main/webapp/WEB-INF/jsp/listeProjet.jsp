<%@page import="com.essat.model.Projet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<c:if test="${sessionScope.role==null}">
	<c:set var="eureur" value="accées refuser" scope="session" />
	<c:redirect url="/login"></c:redirect>
</c:if>
<jsp:include page="header.jsp"></jsp:include>


<!-- Page header -->
<header class="page-header bg-img"
	style="background-image: url(img/bg-banner1.jpg);">
	<div class="container page-name">
		<h1 class="text-center">Trouvez votre Sujet</h1>
		<p class="lead text-center">Ecole Supérieure des Sciences
			Appliquées et de la Technologie Privée de Gabès</p>
	</div>

	<div class="container">
		<form method="get" action="chercherListe">

			<div class="row">
				<div class="form-group col-xs-12 col-sm-4">
					<input type="text" class="form-control" name="sujetProjet"
						placeholder="tourver par sujet ">
				</div>

				<div class="form-group col-xs-12 col-sm-4">
					<select class="form-control selectpicker" id="catProjet"
						name="catProjet">
						<option id="catProjet" value="Reseau">Réseau Telecome</option>
						<option id="catProjet" value="Civil">Génie Civil</option>
						<option id="catProjet" value="Electronique">Electronique</option>
						<option id="catProjet" value="Mecanique">Mecanique</option>
						<option id="catProjet" value="Informatique">Informatique</option>
					</select>

				</div>

				<div class="form-group col-xs-12 col-sm-4">
					<select class="form-control selectpicker" id="niveauProjet"
						name="niveauProjet">
						<!--               <option >niveau s'houeter</option> -->
						<option id="niveauProjet" value="License">License</option>
						<option id="niveauProjet" value="Master">Master</option>
						<option id="niveauProjet" value="Ingenieur">Ingenieur</option>
						<option id="niveauProjet" value="Doctorat">Doctorat</option>
					</select>
				</div>



				<div class="form-group col-xs-12 col-sm-4"></div>

			</div>

			<div class="button-group">
				<div class="action-buttons">
					<button class="btn btn-primary">Chercher</button>
				</div>
			</div>

		</form>

	</div>

</header>
<!-- END Page header -->


<!-- Main container -->

<main>
<section class="no-padding-top bg-alt">
<c:if test="${bo=='1'}">
	<div class="container">
		<div class="row">

			<div class="col-xs-12">
				<br>
				<h5>
					nous avons trouvez <strong>${cnt}</strong> reponses,  
				</h5>
			</div>

			<!-- Job item -->
                
				<c:forEach var="p" items="${list}" varStatus="status">
					<div class="col-xs-12">
						<div class="item-block">
							<header>
								<!--                   <img src="img/logo-google.jpg" alt=""> -->

								<div class="hgroup">
									<h4>${p.sujetProjet}</h4>
									<h5>
										${p.niveauProjet} <span class="label label-success">${p.catProjet}</span>
									</h5>
								</div>
								<time datetime="2016-03-10 20:00">${p.dateAjoutProjet}</time>
							</header>

							<div class="item-body">
								<p>${p.descProjet}.</p>
							</div>

							<footer>
								<ul class="details cols-3">
									<li><i class="fa fa-calendar"></i> <span>
											${p.dateDebProjet}</span></li>

									<li><i class="fa fa-calendar-check-o"></i> <span>${p.dateFinProjet} </span></li>
									 <%-- 										${p.dateFinProjet}</span></li> --%>

<!-- 																										<li><i class="fa fa-certificate"></i> <span>Master -->
											<!-- 																	or Bachelor</span></li> -->
											<li><f:form action="testDetail1" method="get">
													<input type="text" value="${p.idProjet}" name="idProjet"
														id="idProjet" hidden>
													<button class="btn btn-primary" type="submit">Detail</button>
												</f:form></li>
								</ul>

							</footer>
						</div>


					</div>
				</c:forEach>
			<!-- END Job item -->


		</div>


		<!-- Page navigation -->
<!-- 		<nav class="text-center"> -->
<!-- 			<ul class="pagination"> -->
<!-- 				<li><a href="#" aria-label="Previous"> <i -->
<!-- 						class="ti-angle-left"></i> -->
<!-- 				</a></li> -->
<!-- 				<li><a href="#">1</a></li> -->
<!-- 				<li class="active"><a href="#">2</a></li> -->
<!-- 				<li><a href="#">3</a></li> -->
<!-- 				<li><a href="#">4</a></li> -->
<!-- 				<li><a href="#" aria-label="Next"> <i -->
<!-- 						class="ti-angle-right"></i> -->
<!-- 				</a></li> -->
<!-- 			</ul> -->
<!-- 		</nav> -->
		<!-- END Page navigation -->

	</div>
	</c:if>
</section>


<!-- END Main container -->


<c:if test="${bo=='2'}">
<section class="no-padding-top bg-alt">
	<div class="container">
		<div class="row">

			<div class="col-xs-12">
				<br>
				<h5>
					nous avons trouvez <strong>${cnt}</strong> reponses,  
				</h5>
			</div>

			<!-- Job item -->
                
				<c:forEach var="p" items="${list}" varStatus="status">
					<div class="col-xs-12">
						<div class="item-block">
							<header>
								<!--                   <img src="img/logo-google.jpg" alt=""> -->

								<div class="hgroup">
									<h4>${p.sujetProjet}</h4>
									<h5>
										${p.niveauProjet} <span class="label label-success">${p.catProjet}</span>
									</h5>
								</div>
								<time datetime="2016-03-10 20:00">${p.dateAjoutProjet}</time>
							</header>

							<div class="item-body">
								<p>${p.descProjet}.</p>
							</div>

							<footer>
								<ul class="details cols-3">
									<li><i class="fa fa-calendar"></i> <span>
											${p.dateDebProjet}</span></li>

									<li><i class="fa fa-calendar-check-o"></i> <span>${p.dateFinProjet} </span></li>
									 <%-- 										${p.dateFinProjet}</span></li> --%>

<!-- 																										<li><i class="fa fa-certificate"></i> <span>Master -->
											<!-- 																	or Bachelor</span></li> -->
											<li><f:form action="testDetail1" method="get">
													<input type="text" value="${p.idProjet}" name="idProjet"
														id="idProjet" hidden>
													<button class="btn btn-primary" type="submit">Detail</button>
												</f:form></li>
								</ul>

							</footer>
						</div>


					</div>
				</c:forEach>
			<!-- END Job item -->


		</div>


		<!-- Page navigation -->
<!-- 		<nav class="text-center"> -->
<!-- 			<ul class="pagination"> -->
<!-- 				<li><a href="#" aria-label="Previous"> <i -->
<!-- 						class="ti-angle-left"></i> -->
<!-- 				</a></li> -->
<!-- 				<li><a href="#">1</a></li> -->
<!-- 				<li class="active"><a href="#">2</a></li> -->
<!-- 				<li><a href="#">3</a></li> -->
<!-- 				<li><a href="#">4</a></li> -->
<!-- 				<li><a href="#" aria-label="Next"> <i -->
<!-- 						class="ti-angle-right"></i> -->
<!-- 				</a></li> -->
<!-- 			</ul> -->
<!-- 		</nav> -->
		<!-- END Page navigation -->

	</div>
</section>
</c:if>
</main>


<!-- Site footer -->
<jsp:include page="footer.jsp"></jsp:include>