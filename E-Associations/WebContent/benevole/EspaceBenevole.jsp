<%@page import="java.sql.Blob"%>
<%@page import="metier.ProjetTraitement"%>
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

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {background-color: #f2f2f2;}
div.groove {border-style: groove;}
b.italic {
  font-style: italic;
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
  		<li class="li"><a class="active" href="/E-Associations/benevole.do">Consulter le Profil</a></li>
  		<li class="li"><a href="/E-Associations/activites.do">Consulter vos activites</a></li>
  		<li class="li"><a href="/E-Associations/participations.do">Participer un projet</a></li>
  		<li class="li"><a href="#messagerie">Messagerie</a></li>
<<<<<<< HEAD
  		<li class="li"><a href="#messagerie">  
  		  		 <form class="form-inline my-2 my-lg-0"> 
                       <input class="form-control mr-sm-2" type="text" id="associ" name="associ"/> 
=======
  		  		<li class="li"><a href="#messagerie">  
  		  		
                    <form  class="form-inline my-2 my-lg-0" action = "AssociationServlet" method = "post"> 
                    <input class="form-control mr-sm-2" type="text" id="associ" name="associ"/> 
>>>>>>> branch 'master' of https://github.com/ENSIAS-MEH/JEE2019_Groupe2-3.git
                       
                       <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name ="action" value = "recherche">
                       <i class="fa fa-search" aria-hidden="true"></i> 
                       Recherche</button> 
                       
<<<<<<< HEAD
                                      
                   </form>   </a></li>
 
=======
                                     
                   </form> </a></li>
  		
  		<li class="li"><a href="#reussites">Calendrier</a></li>
>>>>>>> branch 'master' of https://github.com/ENSIAS-MEH/JEE2019_Groupe2-3.git
  		<li class="li"><a href="/E-Associations/modifierprofilebenevole.do" >Modifier Profil</a></li>
  		<li class="li"><a href="/E-Associations/index.do" style="color: red;">Se Deconnecter</a></li>
  		<li style="border-bottom: 10px" class="li"><a href="">ENSIAS &copy; AL Irfane Rabat 2018</a></li>
	  </ul>
	 
	 
	 
	 
	 
	  <div style="margin-left:25%;padding:1px 16px;height:1000px;">
	  <br>
	  <h3 style="text-align: center;">Consultation du profil</h3>
	  	
	  	<section>
	  		 <div class="groove">
	  			<br><br><br><br>
	  			
	  			 <div class="row">
				    <div class="col">
				      
				 <b style="font-size:100%;margin-left: 30px;">Nom : </b><%= bm.getNom_ben() %><br>
	  			<b style="font-size:100%;margin-left: 30px;">Prenom : </b><%= bm.getPrenom_ben() %><br>
	  			<b style="font-size:100%;margin-left: 30px;">Profession : </b><%= bm.getProfession_ben() %><br>
	  			<b style="font-size:100%;margin-left: 30px;">Num CIN : </b><%= bm.getCin() %><br>
	  			<b style="font-size:100%;margin-left: 30px;">E-mail : </b><%= bm.getEmail_ben() %><br>
	  			<b style="font-size:100%;margin-left: 30px;">Sexe : </b><%= bm.getSexe_ben() %><br>
	  			<b style="font-size:100%;margin-left: 30px;">Num Telephone : </b><%= bm.getTele_ben() %><br>
				      
				    </div>
				    <div class="col">
				      
				      
	  				<img src="data:image/jpg;base64,<%=bm.BlobToString()%>"  height="200" width="200" alt=""/>
	  			
				      
				    </div>
				  </div> 
	
	  			
	  			<!-- BlobToString -->
	  			<br><br><br><br>
	  			
	  		</div>
	  
	  	<section>
	  	</section>
	  	</section>
	  	</div>
	 


       
       
       
       <script >
							$("#associ").autocomplete("getdataAssociation.jsp");
			   </script>  
       
       
       
          
</body>
</html>