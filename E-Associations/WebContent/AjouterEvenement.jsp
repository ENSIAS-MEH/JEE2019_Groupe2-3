<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="screen" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  margin: auto;
  background: #eaeaea;  
  font-family: 'Open Sans', sans-serif;
}

.info p {
  text-align:center;
  color: #999;
  text-transform:none;
  font-weight:600;
  font-size:15px;
  margin-top:2px
}

.info i {
  color:#F6AA93;
}
form h1 {
  font-size: 18px;
  background: #F6AA93 none repeat scroll 0% 0%;
  color: rgb(255, 255, 255);
  padding: 22px 25px;
  border-radius: 5px 5px 0px 0px;
  margin: auto;
  text-shadow: none; 
  text-align:left
}

form {
  border-radius: 5px;
  max-width:700px;
  width:100%;
  margin: 5% auto;
  background-color: #FFFFFF;
  overflow: hidden;
}

p span {
  color: #F00;
}

p {
  margin: 0px;
  font-weight: 500;
  line-height: 2;
  color:#333;
}

h1 {
  text-align:center; 
  color: #666;
  text-shadow: 1px 1px 0px #FFF;
  margin:50px 0px 0px 0px
}

input {
  border-radius: 0px 5px 5px 0px;
  border: 1px solid #eee;
  margin-bottom: 15px;
  width: 75%;
  height: 40px;
  float: left;
  padding: 0px 15px;
}

a {
  text-decoration:inherit
}

textarea {
  border-radius: 0px 5px 5px 0px;
  border: 1px solid #EEE;
  margin: 0;
  width: 75%;
  height: 130px; 
  float: left;
  padding: 0px 15px;
}

.form-group {
  overflow: hidden;
  clear: both;
}

.icon-case {
  width: 35px;
  float: left;
  border-radius: 5px 0px 0px 5px;
  background:#eeeeee;
  height:42px;
  position: relative;
  text-align: center;
  line-height:40px;
}

i {
  color:#555;
}

.contentform {
  padding: 40px 30px;
}

.bouton-contact{
  background-color: #81BDA4;
  color: #FFF;
  text-align: center;
  width: 100%;
  border:0;
  padding: 17px 25px;
  border-radius: 0px 0px 5px 5px;
  cursor: pointer;
  margin-top: 40px;
  font-size: 18px;
}

.leftcontact {
  width:49.5%; 
  float:left;
  border-right: 1px dotted #CCC;
  box-sizing: border-box;
  padding: 0px 15px 0px 0px;
}

.rightcontact {
  width:49.5%;
  float:right;
  box-sizing: border-box;
  padding: 0px 0px 0px 15px;
}

.validation {
  display:none;
  margin: 0 0 10px;
  font-weight:400;
  font-size:13px;
  color: #DE5959;
}

#sendmessage {
  border:1px solid #fff;
  display:none;
  text-align:center;
  margin:10px 0;
  font-weight:600;
  margin-bottom:30px;
  background-color: #EBF6E0;
  color: #5F9025;
  border: 1px solid #B3DC82;
  padding: 13px 40px 13px 18px;
  border-radius: 3px;
  box-shadow: 0px 1px 1px 0px rgba(0, 0, 0, 0.03);
}

#sendmessage.show,.show  {
  display:block;
}

</style>
<body>
<style>



* {
	margin:0px;
	padding:0px;
}
*, *:after, *:before { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing: border-box; }

.clearfix:before, .clearfix:after { display: table; content: ''; }
.clearfix:after { clear: both; }


body {
	background: #E2e2e2;
	color: #333;
	font-weight: normal;
	font-size: 1em;
	font-family: 'Roboto', Arial, sans-serif;
}

input:focus, textarea:focus, keygen:focus, select:focus {
	outline: none;
}
::-moz-placeholder {
	color: #666;
	font-weight: 300;
	opacity: 1;
}

::-webkit-input-placeholder {
	color: #666;
	font-weight: 300;
}

.grid .col2 {
	width: 50%;
	padding: 0 10px 0 0;
}
.grid .col2.first {
	float: left;
}
.grid .col2.last {
	float: right;
}

.grid .col3 {
	width: 32%;
	float: left;
	margin-right: 11px;
}
.grid .col3.first {
	margin-left: 0;
	float: left;
}
.grid .col3.last {
	margin-right: 0;
	float: right;
}

/* profile page */
.container {
    padding: 60px 50px 70px;
}

.innerwrap {
    width: 1200px;
    margin: 0 auto;
}

.section1 {
	background: #fff;
	position: relative;
	border-radius: 2px;
}
.section1 div .row:first-child {
	padding: 25px;
}


.section1 .col2.first img {
	border-radius: 50%;
	margin: 0 20px;
	width: 120px;
	border:2px solid #f1f1f1;
	padding: 2px;
	float: left;
}
.section1 .col2.first {
	line-height: 25px;
	position: relative;
	border-right:1px solid #a2a2a2;
}
.section1 .col2.first h1 {
    font-weight: normal;
    margin-bottom: 10px;
	margin-top: 15px;
	text-transform: capitalize;
}
.section1 .col2.first p {
	font-size: 14px;
}
.section1 .col2.first span {
	position: absolute;
    right: 15px;
    top: 16px;
    background: #6AAFEA;
    padding: 5px 11px;
    font-size: 12px;
    line-height: 1;
    border-radius: 2px;
    color: #fff;
  cursor:pointer;
}

.section1 .col2.last {
	padding: 8px 0;
}
.section1 .col2.last .col3 span {
    color: #a2a2a2;
    font-size: 14px;
}
.section1 .col2.last .col3 h1 {
    color: #FB4C22;
}

.section1 .col2.last .col3 {
    text-align: center;
    line-height: 30px;
    border-right: 1px solid #ccc;
}
.section1 .col2.last .col3.last {
	border-right: 0;
}

.row2tab li {
    list-style: none;
    float: left;
    width: 25%;
    padding: 15px;
    font-size: 14px;
    text-align: center;
    cursor:pointer;
    background: #f1f1f1;
    color: #555;
    border-bottom: 2px solid #f1f1f1;
}
.row2tab li:first-child {
    border-bottom: 2px solid #6AAFEA;
    border-radius: 0 0 2px 2px;
}
.row2tab li:first-child {
	color:  #6AAFEA;
}
.row2tab li i {
        margin-right: 3px;
    font-size: 14px;
}

.smalltri {
	    border-right: 40px solid #6AAFEA;
    height: 0;
    width: 0;
    border-left: 20px solid transparent;
    border-top: 10px solid #6AAFEA;
    border-bottom: 20px solid transparent;
    padding: 0px;
    top: 0;
    right: 0;
    position: absolute;
}
.smalltri i {
    position: absolute;
    top: -5px;
    right: -33px;
    color: #fff;
    border: 0px;
    font-size: 12px;
}

section.section2 {
    margin: 50px 0;
}

.section2 .col3 {
	width: 30%;
	margin-right: 60px;
	background: #fff;
	border-radius: 2px;
}

.section2 .postcont img {

	width: 100%;
}
.section2 .profileinfo {
    text-align: center;
    padding: 0 10px 30px;
    color: #555;
    font-size: 14px;
    line-height: 25px;
}
.section2 .profileinfo img {
    border-radius: 50%;
    width: 80px;
    padding: 2px;
    border: 3px solid #6AAFEA;
    margin-top: -48px;
    margin-bottom: 18px;
}
.section2 .col3.center .profileinfo img {
    border: 3px solid #FB4C22;

}
.section2 .profileinfo p {
	text-align: justify;
}
.section2 .profileinfo span {
	margin-top: 15px;
    display: block;
    text-align: left;
    color: #6AAFEA;
    cursor: pointer;
}
.section2 .profileinfo span i {
	margin-left: 10px;
}

@media only screen and (max-width: 1300px) {
	.innerwrap {
		width: 90%;
	}
	.section2 .col3 {
		margin-right: 5%;
	}
	.section1 .grid .col3 {
		margin-right: 2%;
	}
	.section1 .col2.last .col3.last {
		margin-right: 0;
	}
}

@media only screen and (max-width: 1060px) {
	.section1 .col2 {
		width: 100%;
		border-right:0 !important;
		padding: 0;
	}
}

@media only screen and (max-width: 660px) {
	.section2 .col3 {
		width: 100%;
		float: none !important;
		margin-bottom: 10px;
	}
	.row2tab li {
		width: 50%;
		text-align: left;
	}
	.section1 .col2.first {
		text-align: center;
	}
	.section1 .col2.first img {
		display: inline-block;
		float: none;
	}
	.section1 .col2.first span {
		position: relative;
		right: 0;
	}
  .section1 .col2.last {
    margin-top:25px;
  }
}
@media only screen and (max-width: 450px) {
	.container {
    padding: 60px 5px 70px;
}
  .row2tab li {
		width: 100%;
		text-align: left;
	}
	.section1 .col2.last .col3 span {
		font-size: 10px;
	}
	.section1 .col2.last .col3 h1 {
		font-size: 18px;
	}
	
}


</style>

<div class="container">
		
	<div class="innerwrap">
		<section class="section1 clearfix">
		
			<div>
				<div class="row grid clearfix">
				
					<div class="col2 first">
						<img src="data:image/jpeg;base64,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" alt="">
						<h1>Cindh</h1>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's</p>
						<span>ajouter un don </span>
					</div>
					<div class="col2 last">
						<div class="grid clearfix">
							<div class="col3 first">
								<h1>${association.getTele_assoc()}</h1>
								<span>telephone</span>
							</div>
							<div class="col3"><h1>${association.getSite_web()}</h1>
							<span >site web</span></div>
							<div class="col3 last"><h1>${association.getEmail_assoc()}</h1>
							<span>email</span></div>
						</div>
					</div>
				</div>
				<div class="row clearfix">
				
					<ul class="row2tab clearfix">
					
						<li ><i  class="fa fa-list-alt"></i> <a href = "ProfileAssociation.jsp"  style="text-decoration: none"> Mes Evenements </a> </li>
						<li><i class="fa fa-heart"></i><a href = "ModifierProfile.jsp"  style="text-decoration: none" > modifier mon profile</a> </li>
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
                <input type="date" name="fin_event"  data-rule="email" data-msg="Vérifiez votre saisie sur les champs : Le champ 'date fin' est obligatoire."/>
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
            choisir images : <input type="file" name="img" multiple>
            <input class="bouton-contact" name ="action" value ="Confirmer" type="submit">
            			</div>	
            
           </form>
      	</div>
	
	

  
</body>
</html>
