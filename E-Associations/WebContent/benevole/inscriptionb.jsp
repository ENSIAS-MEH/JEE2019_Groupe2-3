<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="inscription.css" /> 
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
			<meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="csslogin.css" />

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
 
		
<title>Formulaire d'inscription</title>
</head>
<body>





 <center>
        <h1>Inscription Benevole</h1>
        <form method="post" action="ControleurServlet" enctype="multipart/form-data">
        
				        <div class="container">
				    
						     <div class="form-check-inline">
						      <label class="form-check-label" for="Benevole">
						        <input type="radio" class="form-check-input" id="Benevole" name="optradio" value="b" checked>Benevole
						      </label>
						    </div>
						    
						    <div class="form-check-inline">
						      <label class="form-check-label" for="Association">
						        <input type="radio" class="form-check-input" id="Association" name="optradio" value="a">Association
						      </label>
						    </div>
				    
					</div>
        
        
            <table border="0">
            
                <tr>
                    <td>Nom: </td>
                    <td><input type="text" class="form-control" name="nom_ben" /></td>
                </tr>
                
                <tr>
                    <td>Prenom: </td>
                    <td><input type="text" class="form-control" name="prenom_ben" /></td>
                </tr>
                
                   <tr>
                    <td>Cin: </td>
                    <td><input type="text"  class="form-control" name="cin" /></td>
                </tr>
                
               	<tr>
                    <td>Profession : </td>
                    <td><input type="text" class="form-control" name="profession_ben" /></td>
                </tr>
                
                <tr>
                    <td>Email: </td>
                    <td><input type="text" class="form-control" name="email_ben" /></td>
                </tr>
                
                 <tr>
                    <td>Telephone: </td>
                    <td><input type="text" class="form-control" name="tele_ben" /></td>
                </tr>
                
                
                <tr>
                	<td> Sexe :</td>
                	<td><select  class="form-control"  name ="sexe_ben"> 
						   <option value="femme">Femme </option>
						   <option value="homme">Homme</option>
						</select></td>
                </tr>
                
               	<tr>
		                <td>Login : </td>
						<td><input type="text" class="form-control" name="login" placeholder=""></td>	 
				</tr>	
			
			 <tr>
                    <td>Mot de passe: </td>
                    <td><input type="text" class="form-control" name="mdp_login" /></td>
              </tr>    
                
                
 <!-- id_authentif, cin, nom_ben, prenom_ben, profession_ben, email_ben, tele_ben, sexe_ben -->
                
                
                <tr>
                    <td>Photo de profil: </td>
                    <td><div class="form-control"> <input type="file"  name="photo" /> </div></td>
                </tr>
                
                <tr>
                    <td colspan="2">
                       <Button type="submit"  name="savebenevole" value="savebenevole" class="form-control" >Enregistrer</Button>
                    </td>
                </tr>
            </table>
        </form>
    </center>

	


 
            
     <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	 <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</body>
</html>