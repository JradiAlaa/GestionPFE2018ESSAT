<%@page import="com.essat.model.Enseignent" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Post a job position or create your online resume by TheJobs!">
    <meta name="keywords" content="">

    <title>TheJobs - Register</title>

    <!-- Styles -->
    <link href="css/app.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="icon" href="/img/favicon.ico">
  </head>

  <body class="login-page">


    <main>

      <div class="login-block">
        <img src="img/logo.png" alt="">
        <h1>Log into your account</h1>

        <f:form action="addEns" method="post" modelAttribute="Enseignent">

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon"><i class="ti-user"></i></span>
              <input type="text" class="form-control"  path="nomEns"  name="nomEns"  id="nomEns" placeholder="votre nom ">
            </div>
          </div>
            <div class="form-group">
            
            <div class="input-group">
              <span class="input-group-addon"><i class="ti-user"></i></span>
              <input type="text" class="form-control" path="prenomEns"  name="prenomEns" id="prenomEns" placeholder="votre prenom">
            </div>
          </div>
          
          
          <hr class="hr-xs">

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon"><i class="ti-email"></i></span>
              <input type="email" class="form-control"  path="emailEns"  name="emailEns" id="emailEns" placeholder="Your email address">
            </div>
          </div>
          
          <hr class="hr-xs">

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon"><i class="ti-unlock"></i></span>
              <input type="password" class="form-control" path="passwordEns" name="passwordEns" id="passwordEns" placeholder="Choose a password">
            </div>
          </div>
<!--             <div class="form-group"> -->
<!--             <div class="input-group"> -->
<!--               <span class="input-group-addon"><i class="ti-user"></i></span> -->
<!--               <input type="text" class="form-control"  name="roleUser" path="roleUser" id="roleUser" placeholder="role"> -->
<!--             </div> -->
<!--           </div> -->

          <button class="btn btn-primary btn-block" type="submit">Sign up</button>

          <div class="login-footer">
            <h6>Or register with</h6>
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>

        </f:form>
      </div>

      <div class="login-links">
        <p class="text-center">Already have an account? <a class="txt-brand" href="user-login.html">Login</a></p>
      </div>

    </main>


    <!-- Scripts -->
    <script src="js/app.min.js"></script>
    <script src="js/custom.js"></script>

  </body>
</html>
