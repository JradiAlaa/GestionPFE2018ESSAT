<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="fr">
<head>
<!-- <meta charset="utf-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Post a job position or create your online resume by TheJobs!">
<meta name="keywords" content="">

<title>PFE en ligne</title>

<!-- Styles -->
<link href="css/app.min.css" rel="stylesheet">
<link href="vendors/summernote/summernote.css" rel="stylesheet">
<link href="css/thejobs.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="icon" href="img/favicon.ico">

</head>

<body class="nav-on-header smart-nav">

	<!-- Navigation bar -->
	<nav class="navbar">
		<div class="container">

			<!-- Logo -->
			<div class="pull-left">
				<a class="navbar-toggle" href="#" data-toggle="offcanvas"><i
					class="ti-menu"></i></a>

				<div class="logo-wrapper">
					<a class="logo" href="index"><img
						src="http://www.essat-gabes.com/novafile/2016/01/logoessatgabes.png"
						alt="logo"></a> <a class="logo-alt" href="index"><img
						src="http://www.essat-gabes.com/novafile/2016/01/logoessatgabes.png"
						alt="logo-alt"></a>
				</div>

			</div>
			<!-- END Logo -->

			<!-- User account -->
			<div class="pull-right">

				<div class="dropdown user-account">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown"> <img
						src="img/logo-envato.png" alt=""> <c:out
							value="${sessionScope.nameUser }  ${sessionScope.preomUser}" />


						<ul class="dropdown-menu dropdown-menu-right">
							<li><a href="login">Login</a></li>
							<li><a href="registerUser">Register</a></li>
							<!--               <li><a href="user-forget-pass.html">Forget pass</a></li> -->
							<li><a href="logout">Logout</a></li>
						</ul>

					</a>

				</div>

			</div>
			<!-- END User account -->
			<c:if test="${sessionScope.role=='dept'}">
				<!-- Navigation menu Departement -->
				<ul class="nav-menu">
					<li><a href="index">Acceuil</a></li>
				
					
					<li><a href="postuler">Deposer projet</a></li>
					<li><a href="#">PFE</a>
						<ul>
							<li><a href="listeProjet">tous les projet</a></li>
							<li><a href="ensProjet">Mes projet</a></li>
						</ul></li>
					<li><a href="#">Demende</a>
						<ul>
							<li><a href="demendeProjet">Mes demandes</a></li>
							<li><a href="validerProjet">valider projet</a></li>
						</ul></li>
					<li><a href="#">Profil</a>
						<ul>
							<li><a href="profil">Gerer Profil</a></li>
  
						</ul></li>
							<li><a href="notif"><i class="fa fa-bell-o"></i></a></li>
				</ul>
				<!-- END Navigation menu -->
			</c:if>
			<c:if test="${sessionScope.role=='Etudiant'}">
				<!-- Navigation menu Etudiant -->
			
				<ul class="nav-menu">
					<li><a href="index">Acceuil</a></li>
					<li><a href="notif">notification</a></li>
					<li><a href="listeProjet">liste des projets</a></li>
					<li><a href="listeDE">Mes demandes</a></li>
						
					<li><a href="#">Profil</a>
						<ul>
							<li><a href="profil">Gerer Profil</a></li>

						</ul></li>
				</ul>
			</c:if>
			<!-- END Navigation menu -->
			<c:if test="${sessionScope.role=='Enseignent'}">
				<!-- Navigation menu Enseignat -->
				<ul class="nav-menu">
					<li><a href="index">Acceuil</a></li>
					<li><a href="notif">notification</a></li>
					<li><a href="postuler">Deposer projet</a></li>
					<li><a href="#">PFE</a>
						<ul>
							<li><a href="listeProjet">tous les projet</a></li>
							<li><a href="ensProjet">Mes projet</a></li>
						</ul></li>
					<li><a href="demendeProjet">Mes demandes</a></li>
					<li><a href="#">Profil</a>
						<ul>
							<li><a href="profil">Gerer Profil</a></li>

						</ul></li>
				</ul>
				<!-- END Navigation menu -->
			</c:if>



		</div>
	</nav>
	<!-- END Navigation bar -->