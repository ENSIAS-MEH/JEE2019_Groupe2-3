<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@page import="java.util.ArrayList" %>
<%@page import="web.*"%>
<%@page import="metier.*"%>
<%@page import="dao.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="template.css">
<link rel="stylesheet" type="text/css" href="Modifier.css">
<jsp:include page="Header.jsp" />

    <script src="jquery.js"></script> 
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div class="container">
		
	<div class="innerwrap">
	
		<section class="section1 clearfix">

  
				<div class="row clearfix">
				
					<ul class="row2tab clearfix">
					
			<li ><i  class="fa fa-check"></i> <a href = "ProfileAssociation.jsp"  style="text-decoration: none"> Mes Evenements </a> </li>
			<li><i class="fa fa-list-alt"></i><a href = "ModifierProfile.jsp" class="active" style="text-decoration: none"> modifier mon profile</a> </li>
			<li><i class="fa fa-check">   </i><a href = "AjouterEvenement.jsp" style="text-decoration: none" > Ajouter un evenement</a> </li>
			<li><i class="fa fa-thumbs-o-up "></i><a href = "ConsulterDon.jsp" style="text-decoration: none" >  Consulter mes dons</a> </li>
				
					</ul>
				</div>
			</div>
			<span class="smalltri">
				
			<i class="fa fa-star"></i>
			</span>
			
		</section>
		 
  <div class="sttngs">
    <h2>SETTINGS</h2>
  <div class="tabordion">
  <section id="section1">
    <input class="t" type="radio" name="sections" id="option1" checked>
    <label for="option1" class="trr"> Account</label>
    <article>
  
    <div class="frm">     
<form action="AssociationServlet" method = "post">
        
<div id='profile-upload'>

<div class="hvr-profile-img">
  
  <input type="file" name="logo" id='getval'  class="upload"  id="imag">
  
  <div class="icon">
  <div class="camera4"><span></span></div>
  
  </div>
  
  <div>
  </div>
  
  </div>
  
 
  </div>
      <button value = "modifier_pic" name ="action"> modifier </button>
    </form>
  
 <form action="AssociationServlet" method="post">
<div class="tr">


	<label class="label" for="input">nom</label>
	<input class="input" type="text" id="input" name ="nom">
	
	
		<label class="label" for="input">président</label>
		  
      
	<input class="input texte"  type="text" id="input" name="president">
  
  	<label class="label" for="input">date de creation </label>	
	<input class="input" type="date" id="input" name = "date_assoc">
  
  </div>
 
  <br>
  <label class="label" for="select">Categorie</label>
	<div class="select-wrap e">
		<select class="" id="" >
		
		     <c:forEach items="${cat}" var="cat"> 
		     <option value=""> </option>
			 <option  name = "cat" value="${cat.getNom_categorie()}"> ${cat.getNom_categorie()} </option>
		     </c:forEach> 
		
		</select>
     
		
	</div>
  

	
	<label class="label" for="textarea">Description <p id="count"></p></label> 

  
   <textarea class="textarea e" rows="7" name = "description_assoc" cols="25" id="bio" maxlength="500" ></textarea>
      
  
  	
  
  <!--div class="social">
  
  	<label class="label" for="input">WEBSITE</label>	
	<input class="input e" type="text" id="input">
      </div-->
       <div class="social">
  <label class="label" for="input">numero</label>	
	<input class="input e" type="text" id="input" name = "numero">
      </div>
       <div class="social r1">
  <label class="label" for="input">site web</label>	
	<input class="input e" type="text" id="input" name = "site_web">
</div>
         <div class="social r2">
  <label class="label" for="input">email</label>	
	<input class="input e" type="text" id="input" name = "email">

  
      </div>
  
  <button value = "modifier_profile" name ="action">modifier</button>
      </form>
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
    














<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script>
	
	
	</script>
	</div>
</div>	
</body>
</body>
</html>