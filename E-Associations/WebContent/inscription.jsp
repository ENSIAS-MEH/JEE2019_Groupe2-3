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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulaire d'inscription</title>


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
<style>

body{background:lightgrey}

.sttngs p{color:#000;}

.sttngs{max-width:1064px;margin: 50px auto;background:#fff;padding:15px;height:auto;font-family:"HelveticaNeue","Helvetica Neue",Helvetica,Arial,sans-serif;border-radius:3px;padding-top:30px;
 -webkit-box-shadow: 0 0 50px 0 rgba(0, 0, 0, 0.2);}
.sttngs h2{letter-spacing:2px;margin:20px;color:#000;}


.sttngs .tabordion {
  color: #FFF;
  display: block;
  mardgin: auto;
  position: relative;height:1000px;
  width: 100%;backgrdound:red;
}

.sttngs.tabordion input[name="sections"] {display:none;}

.sttngs.tabordion section {display: block;}

.tabordion section label {
  border-right:1px solid lightgrey;
  display: block;
  font-size: 11px;font-weight:800;
 text-transform:uppercase;
  padding: 14px 20px;
  color:#999;letter-spacing:1px;
  position: relative;
  width: 130px;
  z-index:100;
}


.trr{ cursor: pointer;}


.ver{color:limegreen;}
.tabordion section article {
  display: none;backgdround:red;
  padding-left: 200px;
  max-width: 100%;
  position: absolute;  
  top: -50px;opascity:.7;
}


/*
.tabordion section article:after {
  
  bottom: 0;
  content: "";
  display: block;
  left:-229px;
  position: relative;
  top: 0;
  width: 220px;
  z-index:1;
}
*/
.tabordion input[name="sections"]:checked + label { 
  border-right:3px  solid limegreen;
  color: limegreen;font-weifght:bold;
}

.tabordion input[name="sections"]:checked ~ article {
  display: block;
}

 


.social{
 display:inline-block;width:32.7%;
}

.r1, .r2{mfargin-left:4%;}





:root {
  back3ground-color: #FCFEFD;
  font-family: helvetica, arial, sans-serif;
  font-size: 15px;
}



input, select, textarea {
  display: block;
  box-sizing: border-box;
  width: 100%;
  outline: none;
  border: none;
  border-radius: 2px;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}

.frm .label{
  display: block;width:100%;
  margin-bottom: 0.25em;
  font-size: 10px;text-align:left;
  font-weight: 900;padding:0;color:#111;
  letter-spacing: 1px;border:none;
}

.input, .select, .textarea {
  padding: 10px;
  border:1px solid lightgray;
  background-color: white;color:#aaa;letter-spacing:.7px;
}
.input:focus, .textarea:focus {
  border-color: gray;
}


.textarea {
  min-height: 100px;
  resize: vertical;
}



.tr{
  
  padding-top:50px;
  display: -webkit-box;
    display: -ms-flexbox;
    display: flex;

    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
  max-wridth: 600px;
}

.tr .label{
 
  margin-bottom: 0.25em;width:100%;
  font-size: 10px;text-align:left;
  font-yweight: 900;padding:0;color:#111;
  letter-sfpacing: 2px;border:none;
}



.p{padding:30px;}




.input, .checkbox-label:before, .radio-label:before, .checkbox-label:after, .radio-label:after, .select, .textarea, .checkbox-label, .radio-label {
  margin-bottom: 1em;
}

.r{height:250px;width:250px;background:red;border-radius:50%;float:left;margin-right:30px;}






.icon{
 width:75px;
  height:75px; 
  
  margin: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  
  
}


.camera4{
  display:block;
  width:70%;
  height:50%;
  position:absolute;
  top:30%;
  left:15%;
  background-color:#000;
  border-radius:5px;
}
.camera4:after{
  content:"";
  display:block;
  width:15px;
  height:15px;
  border:7px solid #fff;
  position:absolute;
  top:15%;
  left:25%;
  background-color:#000;
  border-radius:15px;
}
.camera4:before{
  content:"";
  display:block;
  width:50%;
  height:10px;
  position:absolute;
  top:-16%;
  left:25%;
  background-color:#000;
  border-radius:10px;
}



#profile-upload{
    background-image:url('');
    background-size:cover;
    background-position: center;
    height: 230px; width: 230px;
    border: 1px solid #bbb;
    position:relative;top:20px;
  border-radius:50%;
  overflow:hidden;
  
  
  float:left;margin-right:30px;margin-bottom:0px;
  
}
#profile-upload:hover input.upload{
  display:block;
}
#profile-upload:hover {
  border: 1px solid gray
}
#profile-upload:hover .hvr-profile-img{
  opacity:1;
 }
.hvr-profile-img{opacity:.3;}

#profile-upload input.upload {
    z-index:1;
    left: 0;
    margin: 0;
    bottom: 0;
    top: 0;
    padding: 0;
    opacity: 0;
    outline: none;
    cursor: pointer;
    position: absolute;
 
    width:100%;
    display:none;
}

#count{font-size:12px;display:inline-block;text-alrign:center;color:grey;text-transform:none;font-weight:600;letter-spacing:0;}


.e{max-width:880px;}




.select {
  position: relative;
  z-index: 1;
  padding-right: 40px;
}
.select::-ms-expand {
  display: none;
}

.select-wrap {
  position: relative;
}
.select-wrap:after {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  z-index: 2;
  padding: 0 15px;
  width: 10px;
  height: 100%;
  background-image: url("data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20version%3D%221.1%22%20x%3D%220%22%20y%3D%220%22%20width%3D%2213%22%20height%3D%2211.3%22%20viewBox%3D%220%200%2013%2011.3%22%20enable-background%3D%22new%200%200%2013%2011.3%22%20xml%3Aspace%3D%22preserve%22%3E%3Cpolygon%20fill%3D%22%23424242%22%20points%3D%226.5%2011.3%203.3%205.6%200%200%206.5%200%2013%200%209.8%205.6%20%22%2F%3E%3C%2Fsvg%3E");
  background-position: center;
  background-size: 10px;
  background-repeat: no-repeat;
  content: "";
  pointer-events: none;
}

.frm{padding:3%;}


.tr span{display:inline-block;color:grey;font-size:11px;letter-spacing:0;font-weight:700;text-transform:none;}
#texte{display:inline-block;color:grey;text-transfgorm:none;letter-spacing:0;}

.sttngs button {
  text-transform: uppercase;font-weight:800;letter-spacing:1px;
  outline: 0;
  background: limegreen;
  width: 200px;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
  border-radius:3px;margin-top:30px;
  position: relative;
    left: 50%;
    transform: translate(-50%, 0px);
}
  
  
}
.sttngs button:hover, .sttngs  button:active, .sttngs button:focus {background: #43A047;}

@media (max-width: 600px){
  #profile-upload{float:none;margin:auto;
  
  
  }

  .sttngs .tabordion{height:1020px;}
    
    
  .sttngs  button{margin-top:-40px;} 
  .social{display:block;width:100%;}
  
  .sttngs {padding:0;padding-top:19px;}
  .sttngs  h2{text-align:center;}
  .tabordion section article {border-top:1px solid #eee;}
    
}

@media (min-width: 768px){
  .tabordion{height:600px;}
}

@media (max-width: 768px) {
  .social{margin:0;}
 
  
  button{margin-top:-40px;}
  
  .tabordion section label{float:left;disptlay:inline-block;width:17%;margin:auto;padding:12px;font-size:9px;
  border-right:none;text-align:center;
  
  }
  .wwq{padding:10px;}
  .b{height:170px;width:170px;}
  
  .tabordion input[name="sections"]:checked + label { 
  border-bottom:3px  solid limegreen;
  border-right:none;
}

  
  
  
  .tabordion section article {
    left: 0;top:38px;
   border-top:1px solid #eee;
    padding:0;
  } 
}


</style>
</head>
<body>

<div class="container">
		
	<div class="innerwrap">
	
		 
  <div class="sttngs">
        <h1>Inscription Association</h1>
        
        	        <form method="post" action="ControleurServlet" enctype="multipart/form-data">
        
        
<div class="tabordion">
  <section id="section1">
  
  <br>
  
    <input class="t" type="radio" name="sections" id="option1" checked>
    <label for="option1" class="trr"> Account</label>
    <article>
  
    <div class="frm">     
          <br>  
<div id='profile-upload'>
<div class="hvr-profile-img">
  

  <input type="file" name="photo" id='getval'  class="upload"  id="imag">  
    
  <div class="icon">
    <div class="camera4"><span></span></div>
  </div>
  </div>
 
  </div>
  
  
 
<div class="tr">

	<label class="label" for="input">Nom Association :</label>
	<input type="text" class="input" name="nom_assoc" />
	
	<label class="label" for="input">Président :</label>
     <input type="text" class="input" name="president_assoc" />
     
     	<label class="label" for="input">Effectif :</label>
     <input type="text" class="input" name="effectif" />
     
       	<label class="label" for="input">Date :</label>
     <input type="text" class="input" name="date_creation" />
  </div>
  <div>
       	<label class="label" for="input">Fax :</label>
     <input type="text" class="input" name="fax_assoc" />
  
      	<label class="label" for="input">Site Web :</label>
     <input type="text" class="input" name="site_web" />
  
      	<label class="label" for="input">Catégorie:</label>
      	 <select class="input" name="id_categorie">
      	 		
              <c:forEach items="${cat}" var="cat"> 
		        
			 <option  value="${cat.getId_categorie()}">${cat.getId_categorie()} : ${cat.getNom_categorie()}</option>
		     </c:forEach> 
		     
             </select>
     
  </div>
 
  <br>

       <div class="social">
  <label class="label" for="input">Numero :</label>	
	<input class="input e" type="text" id="input" name = "tele_assoc">
      </div>
       <div class="social r1">
  <label class="label" for="input">Description </label>	
	<input class="input e" type="text" id="input" name = "description_assoc">
</div>
         <div class="social r2">
  <label class="label" for="input">Email</label>	
	<input class="input e" type="text" id="input" name = "email_assoc">
      </div> 
      
      
      
      <div class="tr wwq">
  	<label class="label" for="input">Login</label>	
	<input class="input e" type="text" id="input" name = "login">

  <label class="label" for="input">Mot de passe</label>	
	<input class="input e" type="password" id="input" name ="mdp_login">
        
      </div>       
      <button value="change_password" name="saveassociation" value="saveassociation" >S'inscrire</button>
            
      </div>
       
      
    </article>
  </section>

</div>
  
  </form>
  </div>
	</div>
</div>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</body>
</html>