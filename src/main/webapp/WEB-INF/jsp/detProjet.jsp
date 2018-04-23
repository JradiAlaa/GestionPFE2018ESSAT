<%@page import="com.essat.model.Projet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
 <c:if test="${sessionScope.role==null}">
 <c:set var="eureur" value="acc�es refuser" scope="session"/>
 <c:redirect  url="/login"></c:redirect>
 </c:if>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Post a job position or create your online resume by TheJobs!">
    <meta name="keywords" content="">

    <title>TheJobs - Job detail</title>

    <!-- Styles -->
    <link href="css/app.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="icon" href="img/favicon.ico">
  </head>

  <body class="nav-on-header smart-nav">

    <!-- Navigation bar -->
    <nav class="navbar">
      <div class="container">

        <!-- Logo -->
        <div class="pull-left">
          <a class="navbar-toggle" href="#" data-toggle="offcanvas"><i class="ti-menu"></i></a>

          <div class="logo-wrapper">
            <a class="logo" href="index.html"><img src="img/logo.png" alt="logo"></a>
            <a class="logo-alt" href="index.html"><img src="img/logo-alt.png" alt="logo-alt"></a>
          </div>

        </div>
        <!-- END Logo -->

        <!-- User account -->
        <div class="pull-right user-login">
          <a class="btn btn-sm btn-primary" href="user-login.html">Login</a> or <a href="user-register.html">register</a>
        </div>
        <!-- END User account -->

        <!-- Navigation menu -->
        <ul class="nav-menu">
          <li>
            <a href="index.html">Home</a>
            <ul>
              <li><a href="index.html">Version 1</a></li>
              <li><a href="index-2.html">Version 2</a></li>
            </ul>
          </li>
          <li>
            <a class="active" href="#">Position</a>
            <ul>
              <li><a href="job-list-1.html">Browse jobs - 1</a></li>
              <li><a href="job-list-2.html">Browse jobs - 2</a></li>
              <li><a href="job-list-3.html">Browse jobs - 3</a></li>
              <li><a class="active" href="job-detail.html">Job detail</a></li>
              <li><a href="job-apply.html">Apply for job</a></li>
              <li><a href="job-add.html">Post a job</a></li>
              <li><a href="job-manage.html">Manage jobs</a></li>
              <li><a href="job-candidates.html">Candidates</a></li>
            </ul>
          </li>
          <li>
            <a href="#">Resume</a>
            <ul>
              <li><a href="resume-list.html">Browse resumes</a></li>
              <li><a href="resume-detail.html">Resume detail</a></li>
              <li><a href="resume-add.html">Create a resume</a></li>
              <li><a href="resume-manage.html">Manage resumes</a></li>
            </ul>
          </li>
          <li>
            <a href="#">Company</a>
            <ul>
              <li><a href="company-list.html">Browse companies</a></li>
              <li><a href="company-detail.html">Company detail</a></li>
              <li><a href="company-add.html">Create a company</a></li>
              <li><a href="company-manage.html">Manage companies</a></li>
            </ul>
          </li>
          <li>
            <a href="#">Pages</a>
            <ul>
              <li><a href="page-blog.html">Blog</a></li>
              <li><a href="page-post.html">Blog-post</a></li>
              <li><a href="page-about.html">About</a></li>
              <li><a href="page-contact.html">Contact</a></li>
              <li><a href="page-faq.html">FAQ</a></li>
              <li><a href="page-pricing.html">Pricing</a></li>
              <li><a href="page-typography.html">Typography</a></li>
              <li><a href="page-ui-elements.html">UI elements</a></li>
            </ul>
          </li>
        </ul>
        <!-- END Navigation menu -->

      </div>
    </nav>
    <!-- END Navigation bar -->


    <!-- Page header -->
    <header class="page-header bg-img size-lg" style="background-image: url(img/bg-banner2.jpg)">
      <div class="container">
      
        <div class="header-detail">
          <img class="logo" src="img/logo-google.jpg" alt="">
          <div class="hgroup">
            <h1>${list.sujetProjet}</h1>
            <h3>${list.niveauProjet}</h3>
          </div>
          <time datetime="2016-03-03 20:00">2 days ago</time>
          <hr>
          <p class="lead">${list.descProjet}.</p>

          <ul class="details cols-3">
            <li>
              <i class="fa fa-map-marker"></i>
              <span>${list.dateDebProjet}</span>
            </li>

            <li>
              <i class="fa fa-briefcase"></i>
              <span>${list.dateFinProjet}</span>
            </li>

            <li>
              <i class="fa fa-money"></i>
              <span>${list.catProjet}</span>
            </li>

            <li>
              <i class="fa fa-clock-o"></i>
              <span>${list.niveauProjet}</span>
            </li>

            <li>
              <i class="fa fa-flask"></i>
              <span>${list1.nomEns}</span>
            </li>

            <li>
              <i class="fa fa-certificate"></i>
              <a href="#">${list1.prenomEns}r</a>
            </li>
          </ul>

          <div class="button-group">
            <ul class="social-icons">
              <li class="title">Share on</li>
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>

            <div class="action-buttons">
              <a class="btn btn-primary" href="#">Apply with linkedin</a>
              <a class="btn btn-success" href="job-apply.html">Apply now</a>
            </div>
          </div>

        </div>
      </div>
    </header>
    <!-- END Page header -->


    <!-- Main container -->
    <main>

      <!-- Job detail -->
<!--       <section> -->
<!--         <div class="container"> -->

<!--           <p>Google is and always will be an engineering company. We hire people with a broad set of technical skills who are ready to tackle some of technology's greatest challenges and make an impact on millions, if not billions, of users. At Google, engineers not only revolutionize search, they routinely work on massive scalability and storage solutions, large-scale applications and entirely new platforms for developers around the world. From AdWords to Chrome, Android to YouTube, Social to Local, Google engineers are changing the world one technological achievement after another.</p> -->

<!--           <br> -->
<!--           <h4></h4> -->
<!--           <p></p> -->
<!--           <ul> -->
<!--             <li>Build next-generation web applications with a focus on the client side.</li> -->
<!--             <li>Redesign UI's, implement new UI's, and pick up Java as necessary.</li> -->
<!--             <li>Explore and design dynamic and compelling consumer experiences.</li> -->
<!--             <li>Design and build scalable framework for web applications.</li> -->
<!--           </ul> -->

<!--           <br> -->
<!--           <h4>Minimum qualifications</h4> -->
<!--           <ul> -->
<!--             <li>BA/BS degree in a technical field or equivalent practical experience.  </li> -->
<!--             <li>2 years of relevant work experience in software development.</li> -->
<!--             <li>Programming experience in C, C++ or Java.</li> -->
<!--             <li>Experience with AJAX, HTML and CSS.</li> -->
<!--           </ul> -->

<!--           <br> -->
<!--           <h4>Preferred qualifications</h4> -->
<!--           <ul> -->
<!--             <li>Interest in user interface design.</li> -->
<!--             <li>Web application development experience.</li> -->
<!--             <li>Experience working on cross-browser platforms.</li> -->
<!--             <li>Development experience designing object-oriented JavaScript.</li> -->
<!--             <li>Experience with user interface frameworks such as XUL, Flex and XAML.</li> -->
<!--             <li>Knowledge of user interface design.</li> -->
<!--           </ul> -->

<!--         </div> -->
<!--       </section> -->
      <!-- END Job detail -->

    </main>
    <!-- END Main container -->


    <!-- Site footer -->
   <jsp:include page="footer.jsp"></jsp:include>