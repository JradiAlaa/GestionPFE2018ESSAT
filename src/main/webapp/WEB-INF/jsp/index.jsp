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


<!-- Site header -->
<header class="site-header size-lg text-center"
	style="background-image: url(https://overnightphotoediting.com/wp-content/uploads/2018/04/bg2.jpg)">
	<div class="container">
		<div class="col-xs-12">
			<br> <br>
			<h2>
				Nous offrons
				<mark>${nbr}</mark>
				PFE
			</h2>
			<h5 class="font-alt">trouver votre sujet avec un simple click !!</h5>
			<br> <br> <br>
			<form class="header-job-search" method="get" action="chercher">
				<div class="input-keyword">
					<input type="text" class="form-control" placeholder="nom sujet"
						name="sujetProjet">
				</div>

				<div class="input-keyword">
					<input type="text" class="form-control" placeholder="domaine"
						name="niveauProjet">
				</div>

				<div class="btn-search">
					<button class="btn btn-primary" type="submit">chercher</button>
					<a href="job-list.html">Avancée</a>
				</div>
			</form>
		</div>

	</div>
</header>
<!-- END Site header -->


<!-- Main container -->
<main> <!-- Recent jobs --> <c:if test="${bo=='1'}">
	<section>
		<div class="container">
			<header class="section-header">
				<span>dernier</span>
				<h2>Projet Ajouter</h2>
			</header>

			<div class="row item-blocks-connected">

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

			<br> <br>
			<p class="text-center">
				<a class="btn btn-info" href="listeProjet">Afficher tous </a>
			</p>
		</div>
	</section>
</c:if> <c:if test="${bo=='2'}">
	<section>
		<div class="container">
			<header class="section-header">
				<span>Latest</span>
				<h2>Recent jobs</h2>
			</header>

			<div class="row item-blocks-connected">

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

			<br> <br>
			<p class="text-center">
			<a class="btn btn-info" href="listeProjet">Afficher tous </a>
			</p>
		</div>
	</section>
</c:if> <!-- END Recent jobs --> <!-- Facts --> <jsp:include page="footer.jsp"></jsp:include>