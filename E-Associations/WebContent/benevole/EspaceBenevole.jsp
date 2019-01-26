<%@page import="web.BenevoleModel"%>
<%@page import="metier.BenevoleTraitement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*"%>
<%@ page import="web.*"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css"> 
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"> 
  	<link rel="stylesheet" href="tether/tether.min.css">
  	<link rel="stylesheet" href="css/bootstrap-grid.min.css">
  	<link rel="stylesheet" href="css/bootstrap-reboot.min.css"> 
  	<link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
	<script src="js/jquery.autocomplete.js"></script> 
	<title>Espace Bénévole</title>
	
</head>
<style>
body {
  margin: 0;
}

ul.ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li.li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li.li a.active {
  background-color: #555;
  color: white;
}

li.li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>
<body>
	<%
	  LoginConnection lc = new LoginConnection(); 
	  BenevoleModel bm = new BenevoleModel();
	  BenevoleTraitement bt =  new BenevoleTraitement();
	  int id_bene = lc.savoirIdUser((String)session.getAttribute("login"),(String)session.getAttribute("mdp_login"),"b");
	  bm = bt.ChercherBenevoleparIdauthentif(id_bene);
	%>
	 <section class="hero"> 
           <header> 
           <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">    
               <a class="navbar-brand" href="#">E-Associations<img src="images/icon (3).png" alt="line"></a>       
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
                   aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> 
                   <span><i class="fa fa-home" aria-hidden="true"></i></span> 
               </button>    
               
                    <h4 style="color: white; text-align: left;">Bienvenue dans votre session Mr/Mme <b><%=bm.getNom_ben()%> <%=bm.getPrenom_ben() %></b></h4>
                     
                                            
           </nav> 
           </header> 		
       </section>   
       <br><br><br>
       <ul class="ul">
  		<li class="li"><a class="active" href="#profil">Consulter le Profil</a></li>
  		<li class="li"><a href="/E-Associations/benevole.do">Conculter vos activites</a></li>
  		<li class="li"><a href="#dons">Conculter les dons</a></li>
  		<li class="li"><a href="#messagerie">Messagerie</a></li>
  		<li class="li"><a href="#reussites">Réussites</a></li>
  		<li class="li"><a href="/E-Associations/index.do" style="color: red;">Se Deconnecter</a></li>
  		<li style="border-bottom: 10px" class="li"><a href="">ENSIAS &copy; AL Irfane Rabat 2018</a></li>
	  </ul>
	 
	  <div style="margin-left:25%;padding:1px 16px;height:1000px;">
	  <br>
	  <h3 style="text-align: center;">Vos activites</h3>
	  	<section>
	  	<!-- Section nombre de participations -->
	  	    <h4>Nombre de participation aux projets : </h4><b><%= bt.getBnconx().savoirNombreParticipations(bm.getCin()) %> fois</b> 
	  		<br>
	  		<br>Rechercher un projet ?
	  		<form action="">
	  		<br><input type="text" name="projet" id="projet" />
	  		<script>
				$("#projet").autocomplete("getdataProjet.jsp");
			</script> 
	  		<button type="button" name="detaisProjet" id="detailsProjet">Rechercher</button>
	  		
	  		</form>
	  		<br>
	  		<br><button onclick="myFunction()">Voir tous les projets</button>
	  		<div id="show">
	  		<p><h4>Liste de tous les projets existants:</h4></p>
	  		<p></p>
	  		</div>
	  		<script type="text/javascript">
	  		function myFunction() {
	  		  var x = document.getElementById("show");
	  		  if (x.style.display === "none") {
	  		    x.style.display = "block";
	  		  } else {
	  		    x.style.display = "none";
	  		  }
	  		}
	  		</script>
	  	</section>
	  	<section>
	  	<!-- Section nombre de competences -->
	  	<br><br>
	  	
	
	  	</section>
	  	<section>
	  	<!-- Section calendrier -->
	  	
	  	</section>
	  </div>


       
       
       
       
       
       
       
          
</body>
</html>