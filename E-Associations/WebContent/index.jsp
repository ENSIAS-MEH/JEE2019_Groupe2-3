<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Site Web E-Associations</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" /> 
<style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
</style>
</head>

<body>

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>E-Association Platforme</h1>
  <br>
  <p>Découvrez et restez connectés avec les differentes associations, collectez les dons et rassemblez des bénévoles pour des activités caritatives</p> 
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">a modifier</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">a modifier</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">a modifier</a>
      </li>    
    </ul>
  </div>  
</nav>

<div class="container" style="margin-top:30px">
<br>
  <div class="row">
    <div class="col-sm-4">
      <h2 class="text-center">Espace Associations</h2>
      <br>
      <div class="fakeimg"><img alt="" src="images/association.jpg" style="width: 375px;"></div>
      <br><br><br>
      <br><br><br>
      <h2>A PROPOS</h2>
      <h5>Description de la plateforme</h5>
      <p>bla bla bla bla bla bla</p>
      <br><br><br>
      <br><br><br>
      <h2>CONTACTEZ-NOUS</h2>
      <h5>Description de la plateforme</h5>
      <p>bla bla bla bla bla bla</p>
      <!--  <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
      <h3>Some Links</h3>
      <p>Lorem ipsum dolor sit ame.</p>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="#">Active</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li>
      </ul>
      <hr class="d-sm-none">
      -->
    </div>
    <div class="col-sm-4">
      <h2 class="text-center">Espace bénévoles</h2>
      <br>
      <div class="fakeimg"><img alt="" src="images/benevole.jpg" style="width: 350px;"></div>
      <br><br><br><br>
       <h2 class="text-center" style="margin-left: 150px">Nouveau sur la plateforme?</h2>
       <br><br>
       <form action="-------A MODIFIER">
    <select name="choix_inscription" class="custom-select mb-5" style="margin-left: 75px" id="myselect">
      <option selected>Choisir votre profil</option>
      <option value="choix_association">Association</option>
      <option value="choix_benevole">Bénévole</option>
      <option value="choix_user">Utilisateur normal</option>
    </select>
    <br>
    <button type="submit" class="btn btn-dark" style="margin-left: 200px">S'inscrire</button>
    <% while(true){ 
       String x = request.getParameter("submit");
       String y = request.getParameter("myselect");
       System.out.println("x="+x);
       System.out.println("y="+y);
       if( x!= null && x.equals("confirm") && y.equals("choix_association")){
    	   request.getRequestDispatcher("/association/inscription.jsp").forward(request, response);
    	   System.out.println("after click");
           
    	   System.out.println("x="+x);
           System.out.println("y="+y);
       }
    }
      %>
   </form>
   
      <!-- <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      <br>
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    -->
    </div>
    <div class="col-sm-4">
      <h2 class="text-center">Espace utilisateurs</h2>
      <br>
      <div class="fakeimg"><img alt="" src="images/utilisateur.jpg" style="width: 400px;"></div>
      <!-- <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      <br>
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div> -->
  </div>
 <!--  <br>
  <br>
  <br>
 <div class="col-sm">
  <br><br><br><br><br>
  <h2 class="text-center" style="margin-left: 500px">Nouveau sur E-Associations ?</h2>
  <br>
  <div class="col-sm" style="margin-left: 200px">
  	<form action="-------A MODIFIER">
    <select name="choix_inscription" class="custom-select mb-3" style="width: 700px">
      <option selected>Choisir votre profil</option>
      <option value="choix_association">Association</option>
      <option value="choix_benevole">Bénévole</option>
      <option value="choix_user">Utilisateur normal</option>
    </select>
    <br>
    <button type="submit" class="btn btn-dark" style="margin-left: 300px">S'inscrire</button>
   </form>
  </div>
 -->
  
</div>
<!--  
<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer</p>
</div>
-->
</body>
</html>