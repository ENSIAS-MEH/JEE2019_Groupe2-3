<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="csslogin.css" />
    	
<title>se connecter</title>
</head>
<body>

<!-- 
 <form method="post" action="ControleurServlet">
	     <input  type="search" placeholder="login"  name="login">
         <input  type="search" placeholder="mdp_login"  name="mdp_login">
         <button  type="submit" value="connecter" name="connecter">Connecter</button>
     </form>
     <p>
 -->

<div>
  
  <form class="modal-content animate" method="post" action="ControleurServlet">
   
    <div class="imgcontainer">
      <img src="http://nephrologie.conference2web.com/assets/avatar-bd4e1ae71589eb46f179d8831c4671f0.png" alt="Avatar" class="avatar">
      			
    </div>
    
    		
    	
	
    <div class="container">
      <label for="uname"><b>Nom d'utilisateur</b></label>
      <input type="text" placeholder="Enter Username" name="login" required>

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder="Enter Password" name="mdp_login" required>
        
      <button type="submit" class="btn btn-info" value="connecter" name="connecter" >Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>
    

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
    
  </form>
</div>
 
 
  	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="bootstrap4/js/bootstrap.min.js" ></script>
     <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	 <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
     
</body>
</html>