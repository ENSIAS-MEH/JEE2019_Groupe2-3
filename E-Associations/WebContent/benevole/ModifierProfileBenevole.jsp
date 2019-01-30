<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Blob"%>
<%@page import="metier.*"%>
<%@ page import="dao.*"%>
<%@ page import="web.*"%>
<%@page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1"> 

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"> 
  	<link rel="stylesheet" href="tether/tether.min.css">
  	<link rel="stylesheet" href="css/bootstrap-grid.min.css">
  	<link rel="stylesheet" href="css/bootstrap-reboot.min.css"> 
  	<link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />
	<script src="js/jquery.autocomplete.js"></script>  


<link rel="stylesheet" type="text/css" href="template.css">
<link rel="stylesheet" type="text/css" href="Modifier.css">



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
	
	
</head>

<style>
body {
  margin: 0;
}

ul.ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 20%;
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
           </nav> 
           </header> 
	</section>
				
				<br><br><br>
				
		
				
				
		 <ul class="ul">
  		<li class="li"><a  href="/E-Associations/benevole.do">Consulter le Profil</a></li>
  		<li class="li"><a  href="/E-Associations/activites.do">Consulter vos activites</a></li>
  		<li class="li"><a   href="/E-Associations/participations.do">Participer un projet</a></li>
  		<li class="li"><a href="#messagerie">Messagerie</a></li>
  		  		<li class="li"><a href="#messagerie">  
  		  		   <form class="form-inline my-2 my-lg-0"> 
                       <input class="form-control mr-sm-2" type="text" id="associ" name="associ"/> 
                       
                       <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i> 
                       Recherche</button> 
                       
                                      
                   </form>  </a></li>
  		
  		
  		<li class="li"><a class="active" href="/E-Associations/modifierprofilebenevole.do" >Modifier Profil</a></li>
  		<li class="li"><a href="/E-Associations/index.do" style="color: red;">Se Deconnecter</a></li>
  		<li style="border-bottom: 10px" class="li"><a href="">ENSIAS &copy; AL Irfane Rabat 2018</a></li>
	  </ul>
					
						<div class="innerwrap">
		<span class="smalltri">	
			<i class="fa fa-star"></i>
			</span>
 <div style="margin-left:25%; padding:1px ; height:3000px;">				
					
	
	<section class="hero">
		 
  <div class="sttngs">
    <h2>SETTINGS</h2>
  <div class="tabordion">
  <section id="section1">
    <input class="t" type="radio" name="sections" id="option1" checked>
    <label for="option1" class="trr"> Account</label>
    <article>
  
    <div class="frm">   

            	        <form method="post" action="ControleurServlet" enctype="multipart/form-data">        
<div id='profile-upload'>

<div class="hvr-profile-img">
  
  <input type="file" name="photo" class="upload"  id="imag">
  
  <div class="icon">
  <div class="camera4"><span></span></div>
  
  </div>
  
  <div>
  </div>
  
  </div>
  
 
  </div>
  <div>
      <button value = "modifier_pic" name ="modifier_pic" class="btn btn-sm" style="margin-left: 200px;"> modifier </button>
   </div>
    </form>


    
    
    <div>
  
        	        <form method="post" action="ControleurServlet" enctype="multipart/form-data">
<div class="tr">
<div class="row">
<div class="col">

	<label class="label" for="input">Nom :</label>
	<input class="form-control" type="text" id="input" name ="nom_ben" >
</div>
<div class="col">
	<label class="label" for="input">Prénom :</label>  
	<input class="form-control "  type="text" id="input" name="prenom_ben">
  </div>
 
 </div>
 <br>
  	<label class="label" for="input">Profession : </label>	
	<input class="form-control " type="text" id="input" name = "profession_ben">
 
  <div>
  
	<label class="label" id="input" hidden="cin">  <%=bm.getCin() %> </label>

	<label class="label"  id="input" hidden ="sexe">  <%=bm.getSexe_ben()%> </label>
	
	
  </div>
  
	<label class="label" id="input" hidden ="sexe">  <%=bm.getId_authentif() %> </label>
  
 <br>
  <label class="label" for="select">E-mail :</label>
		<input class="form-control" type="text" id="input" name = "email_ben">	
  <br>
  <label class="label" for="select">Téléphone :</label>
		<input class="form-control " type="text" id="input" name = "tele_ben">	
  </div>	

  <button value = "modifier_profile" name ="modifier_profile" class="btn btn-sm">modifier</button>
      </form>
      
      </div>
      </div>
      
      </article>
        </section>
  
  
  <section id="section2">

    <input class="t" type="radio" name="sections" id="option2">
    
   
    
    <label for="option2" class="trr"> Email</label>
    <article>
     
    <div class="tr wwq">
  	<label class="label" for="input">email actuel</label>	
	<input class="input e" type="text" id="input" name = "email_actuel">

    <label class="label" for="input">nouveau email</label>	
	<input class="input e" type="email" id="input" name="nv_email">
          
    <label class="label" for="input">confirmer mot de passe</label>	
	<input class="input e" type="password" id="input" name= "confirm_pass_email">

      </div>
       <button name = "action" value = "update_email">Modifier L'Email</button>
    </article>
  </section>
  <section id="section3">
    <input class="t" type="radio" name="sections" id="option3">
    <label for="option3" class="trr">mot de passe</label>
    <article>
   
      <div class="tr wwq">
  	<label class="label" for="input">mot de passe actuel</label>	
	<input class="input e" type="password" id="input" name = "password_actuel">

  <label class="label" for="input">nouveau mot de passe</label>	
	<input class="input e" type="password" id="input" name ="nv_password">
        
  <label class="label" for="input">repéter le mot de passe</label>	
	<input class="input e" type="password" id="input" name= "repete_password">


      </div> 
      <button value="change_password" name ="action" >Changer le MDP</button>
    </article>
  </section>
 
</div>
    
  </div>

</section>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script>
	
	
	</script>
	</div>


</body>
</html>