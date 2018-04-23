<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Post a job position or create your online resume by TheJobs!">
<meta name="keywords" content="">

<title>Login</title>

<!-- Styles -->
<link href="css/app.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="/img/favicon.ico">
</head>

<body class="login-page">
	<c:if test="${sessionScope.eureur=='401'}">
		<header class="site-header size-lg text-center"
			style="background-image: url(assets/img/bg-banner1.jpg)">
			<div class="container">
				<div class="col-xs-12">
					<h1>403 access denied</h1>
					<h5 class="font-alt">vous ne pouvez pas accés à cette page</h5>
					<br>
					<!--           <div id="faq-search" class="form-group"> -->
					<!--             <i class="ti-search fa-flip-horizontal1"></i> -->
					<!--             <input type="text" class="form-control" name="search" placeholder="Type to search..."> -->
					<!--           </div> -->
				</div>

			</div>
		</header>
	</c:if>
	<main>

	<div class="login-block">
		<img src="img/logo.png" alt="">
		<h1>Se connecter à la plateforme E-PFE@ESSAT</h1>

		<form action="verif" method="POST">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="ti-email"></i></span> <input
						type="text" class="form-control" placeholder="Email" name="email">
				</div>
			</div>

			<hr class="hr-xs">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="ti-unlock"></i></span> <input
						type="password" class="form-control" placeholder="Password"
						name="password">
				</div>
			</div>

			<div class="form-group">
				<div class="input-group">
   <span class="input-group-addon"><i class="ti-user"></i></span>
					<select class="form-control selectpicker" id="roleUser"
						name="roleUser">
						            
						<option id="roleUser" value="Etudiant">Etudiant</option>
						<option id="roleUser" value="Enseignent">Enseignent</option>
						<option id="roleUser" value="dept">Departement</option>

					</select>
				</div>
			</div>
			<button class="btn btn-primary btn-block" type="submit">se
				connecter</button>

			<div class="login-footer">
				<c:if test="${sessionScope.eureur!=null}">
					<div class="alert alert-danger">

						<c:out value="${sessionScope.eureur}" />
						<c:remove var="eureur" scope="session" />

					</div>
				</c:if>
			</div>

		</form>
	</div>

	<div class="login-links">
		<a class="pull-left" href="user-forget-pass.html">Forget Password?</a>
		<a class="pull-right" href="user-register.html">Register an
			account</a>
	</div>

	</main>


	<!-- Scripts -->
	<script src="js/app.min.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>
