<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>E-Association Platforme</h1>
  <br>
  <p>Découvrez et restez connectés avec les differentes associations, collectez les dons et rassemblez des bénévoles pour des activités caritatives</p> 
</div>
	

<!------ Include the above in your HEAD tag ---------->

<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="C:\Users\Meriem\git\Projet-JEE\E-Associations\WebContent\images\help.png" alt=""/>
                        <h3>Bienvenue</h3>
                        <p>Pour participer comme volontaire auprès d'une association, inscrivez-vous et créez un compte. 
Cette inscription vous permet d'accéder à l'ensemble des projets E-Association</p>
                        <input type="submit" name="" value="Se Connecter"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                       
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            
                                <h3 class="register-heading">Devenir Volontaire</h3>
                                
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="CIN *" value="" name="cin" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Nom *" value="" name="nom" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Prenom *" value="" name="prenom" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Mot de passe *" value="" name="motdepasse" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control"  placeholder="Confirmer le mot de passe *" value=""  name="confirmermotdepasse"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="Femme" value="Homme" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Votre Email *" value="" name="email" />
                                        </div>
                                        <div class="form-group">
										<input class="form-control" placeholder="Date de naissance" name="datenaissance" type="date" />
									</div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="telephone" class="form-control" placeholder="Numero de telephone *" value="" />
                                        </div>
                                        
                                          <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Competences</option>
                                                <option>Competence1</option>
                                                <option>Competence2</option>
                                                <option>Competence3</option>
                                            </select>
                                        </div>
                                          <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                                                <option>What is your Birthdate?</option>
                                                <option>What is Your old Phone Number</option>
                                                <option>What is your Pet Name?</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                                                <option>What is your Birthdate?</option>
                                                <option>What is Your old Phone Number</option>
                                                <option>What is your Pet Name?</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter Your Answer *" value="" />
                                        </div>
                                        <input type="submit" class="btnRegister"  value="S'inscrire"/>
                                    </div>
                                </div>
                            </div>
                            
                          

            </div>
            
     <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	 <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</body>
</html>