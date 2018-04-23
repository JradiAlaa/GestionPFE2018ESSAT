<%@page import="com.essat.model.Projet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>

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

    <form action="#">

      <!-- Page header -->
      <header class="page-header"  style="background-image: url(http://www.delanodelta.com/images/demo-img-1.jpg)">
        <div class="container page-name">
          <h1 class="text-center">Mon Profil</h1>
          <p class="lead text-center">modifier</p>
        </div>

        <div class="container">

          <div class="row">
            <div class="col-xs-12">
              <div class="row">
                
                <div class="col-xs-12 col-sm-4 col-lg-2">
                  <div class="form-group">
                      <img
						src="https://rencontre.attractiveworld.net/wp-content/themes/aw-child/images/profils-homme-6.png" >
              
                   
                  </div>
                </div>

                <div class="col-xs-12 col-sm-8 col-lg-10">
                  <div class="form-group">
                    <h6> Nom</h6>
                    <input type="text" class="form-control input-lg" placeholder="Nom ">
                  </div>
                  <div class="form-group">
                     <h6> Prenom</h6>
                    <input type="text" class="form-control" placeholder="Prenom">
                  </div>
                  <div class="form-group">
                  <h6>Adress</h6>
                    <textarea class="form-control" rows="3" placeholder="Short description"></textarea>
                  </div>
                </div>

              </div>
            </div>

            <div class="col-xs-12">
              <div class="row">
                <div class="form-group col-xs-12 col-sm-6 col-md-4">
                      <h6>Date  de naissence :  
                  <div class="input-group input-group-sm">
                   <span class="input-group-addon"><i class="fa fa-birthday-cake"></i></span>
                    <input type="date" class="form-control">
                  </div>  </h6>
                </div>

                <div class="form-group col-xs-12 col-sm-6 col-md-4">
                  <h6>numero telephone :  
                  <div class="input-group input-group-sm">
                    <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                    <input type="text" class="form-control" placeholder="num tel">
                  </div>
                  </h6>
                </div>

                <div class="form-group col-xs-12 col-sm-6 col-md-4">
                <h6>adress e-mail :  
                  <div class="input-group input-group-sm">
                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                    <input type="text" class="form-control" placeholder="Email address">
                  </div> </h6>
                </div>

                <div class="form-group col-xs-12 col-sm-6 col-md-4">
                  <h6>Niveau : 
                  <div class="input-group input-group-sm">
                    <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                   <select class="form-control selectpicker" id="niveauProjet"
						name="niveauProjet">
						<!--               <option >niveau s'houeter</option> -->
						<option id="niveauProjet" value="License">License</option>
						<option id="niveauProjet" value="Master">Master</option>
						<option id="niveauProjet" value="Ingenieur">Ingenieur</option>
						<option id="niveauProjet" value="Doctorat">Doctorat</option>
					</select>
                  </div>
                  </h6>
                </div>

                <div class="form-group col-xs-12 col-sm-6 col-md-4">
                  <h6>Specialtite : 
                  <div class="input-group input-group-sm">
                  
                    <span class="input-group-addon"><i class="fa fa-users"></i></span>
                    <select class="form-control selectpicker" id="catProjet"
						name="catProjet">
						<option id="catProjet" value="Reseau">Réseau Telecome</option>
						<option id="catProjet" value="Civil">Génie Civil</option>
						<option id="catProjet" value="Electronique">Electronique</option>
						<option id="catProjet" value="Mecanique">Mecanique</option>
						<option id="catProjet" value="Informatique">Informatique</option>
					</select>
               
                  </div>  </h6>
                </div>

                <div class="form-group col-xs-12 col-sm-6 col-md-4">
                 <h6>CV : 
                 <div class="action-buttons">
                  <div class="upload-button upload-button-sm">
                    <button class="btn btn-block btn-primary">importer cv </button>
                <input id="cover_img_file" type="file">
                  </div></div> </h6>
                </div>

              

              </div>
            </div>


          </div>

          <div class="button-group">
            <div class="action-buttons">
              <div class="upload-button">
                <button class="btn btn-block btn-primary">Choose a cover image</button>
                <input id="cover_img_file" type="file">
              </div>
            </div>
          </div>

        </div>
      </header>
      <!-- END Page header -->


      <!-- Main container -->
    
      <!-- END Main container -->

    </form>

    <!-- Site footer -->
<jsp:include page="footer.jsp"></jsp:include>
