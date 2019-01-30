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
  position:absolute;
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
</style>
<body>
	<%
	  LoginConnection lc = new LoginConnection(); 
	  BenevoleModel bm = new BenevoleModel();
	  BenevoleTraitement bt =  new BenevoleTraitement();
	  int id_bene = lc.savoirIdUser((String)session.getAttribute("login"),(String)session.getAttribute("mdp_login"),"b");
	  bm = bt.ChercherBenevoleparIdauthentif(id_bene);
	  ProjetModel pm ;
	  ProjetConnection pc = new ProjetConnection();
	  ArrayList<ProjetModel> listePj;
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
  		<li class="li"><a  href="/E-Associations/benevole.do">Consulter le Profil</a></li>
  		<li class="li"><a class="active"  href="/E-Associations/activites.do">Consulter vos activites</a></li>
  		<li class="li"><a href="/E-Associations/participations.do">Participer un projet</a></li>
  		<li class="li"><a href="#messagerie">Messagerie</a></li>
  		  		<li class="li"><a href="#messagerie">  
  		  		   <form class="form-inline my-2 my-lg-0"> 
                       <input class="form-control mr-sm-2" type="text" id="associ" name="associ"/> 
                       
                       <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i> 
                       Recherche</button> 
                       
                                      
                   </form>  </a></li>
  		
  		<li class="li"><a href="/E-Associations/modifierprofilebenevole.do" >Modifier Profil</a></li>
  		<li class="li"><a href="/E-Associations/index.do" style="color: red;">Se Deconnecter</a></li>
  		<li style="border-bottom: 10px" class="li"><a href="">ENSIAS &copy; AL Irfane Rabat 2018</a></li>
	  </ul>
	 
	 
	 
	  <div style="margin-left:25%;padding:1px 16px;height:1000px;">
	  <br>
	  
	  <h3 style="text-align: center;">Vos activites</h3>

			<% 
								String cin =bm.getCin();
							ArrayList<ProjetModel> projets = bt.getBenevoleProjets(cin);
	   	 
	    %>
	  	   <div class="accordion" id="accordionExample">
	    	
		<% for (ProjetModel proj : projets) { %>
		
		  <div class="card">
		    <div class="card-header" id="headingOne">
		      <h2 class="mb-0">
		        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          <%=proj.getNom_projet()%>
		        </button>
		      </h2>
		    </div>
		
		    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
		      <div class="card-body">
		      
		      
		      	                <div class=" col-md-9 col-lg-9 "> 
	                  <table class="table table-user-information">
	                    <tbody>
	                    	
	                	
		            	<tr>
	                        <td style="font-size: 14px ;"><b> Description : </b></td>
	                        <td style="font-size: 14px ;"><%=proj.getDescription_projet()%></td>
	                      </tr>
	                  
	                   
	                       <tr>
			                     <td style="font-size: 14px ;"><b>Date début : </b></td>
			                     <td style="font-size: 14px ;"><%= proj.getDate_debut()%></td>
	                     </tr>

								 <tr>
			                     <td style="font-size: 14px ;"><b>Date fin: </b></td>
			                     <td style="font-size: 14px ;"><%=proj.getDate_fin()%></td>
	                     </tr>
	                     <tr>
	                        <td style="font-size: 14px ;"><b> Lieu : </b></td>
	                        <td style="font-size: 14px ;"><%=proj.getLieu_projet()%></td>
	                      </tr>
	                      <% ParticiperModel participation = bt.getBenevoleParticipation(bm.getCin(), proj.getId_projet()); %>
	                       <tr>
	                        <td style="font-size: 14px ;"><b> Type de Participation: </b></td>
	                        <td style="font-size: 14px ;"><%=participation.getType_participation()%>
	                        </td>
	                      </tr>
	                      
	                        <tr>
	                        <td style="font-size: 14px ;"><b> Montant : </b></td>
	                        <td style="font-size: 14px ;"><%=participation.getMontant()%></td>
	                      </tr>
	                     
	                    </tbody>
	                  </table>
		      </div>
		      
		      
		      
		      </div>
		    </div>
		  </div>
	  
	  
	  <%} %>
	  </div>

     </div>  
     
     
     
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
</body>
</html>