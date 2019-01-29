<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="template.css">
<link rel="stylesheet" type="text/css" href="Modifier.css">
<link rel="stylesheet" type="text/css" href="Ajout.css">

<jsp:include page="Header.jsp" />

    <script src="jquery.js"></script> 
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>


<div class="container" style="padding : 0px 0px 0px ;">
	<div class="innerwrap">
		<section class="section1 clearfix">
		
				<div class="row clearfix">
				<ul class="row2tab clearfix">
						<li ><i  class="fa fa-list-alt"></i> <a href = "ProfileAssociation.jsp"  style="text-decoration: none"> Mes Evenements </a> </li>
						<li><i class="fa fa-heart"></i><a href = "ModifierProfile.jsp"  style="text-decoration: none" > Modifier mon profile</a> </li>
						<li><i class="fa fa-check"></i><a href = "AjouterEvenement.jsp"  style="text-decoration: none" class="active" > Ajouter un evenement</a> </li>
						<li><i class="fa fa-thumbs-o-up "></i><a href = "ConsulterDon.jsp"  style="text-decoration: none" >  Consulter mes dons</a> </li>
				
					</ul>
				</div>
			</div>
			<span class="smalltri">
				
			<i class="fa fa-star"></i>
			</span>
			
		</section>  
  <form action = "AssociationServlet" method="post">
	    <h1>Ajouter des informations sur l'evenement  :</h1>
	    
    <div class="contentform">
    	<div id="sendmessage">  </div>


    	<div class="leftcontact">
			      <div class="form-group">
			        <p>Nom de l'evenement : <span>*</span></p>
			        <span class="icon-case"><i class="fas fa-allergies	" style=" vertical-align: middle;"></i></span>
				        <input type="text" name="nom_event" id="nom" data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'Nom evenement' doit être renseigné."/>
                <div class="validation"></div>
       </div> 
       <div class="form-group">
			        <p>Description de l'evenement : <span>*</span></p>
			        <span class="icon-case"><i class=" " style=" vertical-align: middle;"></i></span>
				        <input type="text" name="description_event" id="nom" data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'desciption' doit être renseigné."/>
                <div class="validation"></div>
       </div> 

            <div class="form-group">
            <p>Date debut  <span>*</span></p>
            <span class="icon-case"><i class="fa fa-user" style=" vertical-align: middle;"></i></span>
				<input type="date" name="debut_event"  data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'date debut' doit être renseigné."/>
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>date_fin <span>*</span></p>	
			<span class="icon-case"><i class="fa fa-envelope-o"></i></span>
                <input type="date" name = "fin_event"  data-rule="email" data-msg="Vérifiez votre saisie sur les champs : Le champ 'date fin' est obligatoire."/>
                <div class="validation"></div>
			</div>	

			<div class="form-group">
			<p>lieu de l'evenement :  <span>*</span></p>
			<span class="icon-case"><i class="fa fa-home" style=" vertical-align: middle;"></i></span>
				<input type="text" name="lieu_event"  data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'lieu' doit être renseigné."/>
                <div class="validation"></div>
			</div>
			<div class="form-group">
			<p>type d'aide que vous avez besoin : <span>*</span></p>	
			<span class="icon-case"><i class="fa fa-envelope-o"></i></span>
                <input type="text" name="type_event"  value="Ajouter" data-msg="Vérifiez votre saisie sur les champs : Le champ 'type' est obligatoire."/>
                <div class="validation"></div>
			</div>	

<button type="submit" name="action" value="ajouter_event" class="bouton-contact">Ajouter</button>
	</div>
	
	</form>	
	

	<div class="rightcontact">	
	  <form action = "AssociationServlet" method="post">
	
            <div class="form-group">
			<p>Nom de l'ablum  :  <span>*</span></p>
			<span class="icon-case"><i class="fa fa-home" style=" vertical-align: middle;"></i></span>
				<input type="text" name="nom_album"  data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'nom d'album' doit être renseigné."/>
                <div class="validation"></div>
			</div>
			<div class="form-group">
            choisir images : <input type="file" name="logo" multiple>
            <input class="bouton-contact" name ="action" value ="ajouter_pic" type="submit">
            			</div>	
            
           </form>
      	</div>
	
	
</div>
  
</body>
</html>
