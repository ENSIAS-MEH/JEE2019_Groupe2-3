<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Site Web E-Associations</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" /> 
<style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
</style>
</head>

<body style="background-image: url('/images/heart.jpg');">

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

<div class="row">
		<div style="margin-left: 525px">
		<br>
		<br>
			<p><h3>Inscription Association</h3></p>
			<br>
					<form method="post" id="">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Nom Association" name="nom" type="text" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Siège Association" name="siege" type="text" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Tel Association" name="tel" type="tel" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Date Création Association" name="date_creation" type="date" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Catégorie Association" name="categorie" type="text" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Objet Association" name="objet" type="text" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Mot de passe" name="mot_de_passe" type="password" value="">
							</div>
							<br>
							<a href="" class="btn btn-success" name="btn_inscription" id="btn_inscription">S'inscrire</a></fieldset>
					</form>
		   </div>
</div>


</body>
</html>