<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<!DOCTYPE html>
<html>

<head>


<title>Site Web E-Associations</title>
				<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="benevole/inscription.css" /> 
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
			<meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="csslogin.css" />

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
 

<style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
</style>
</head>

<body style="background-image: url('//images/heart.jpg');">

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>E-Association Platforme</h1>
  <br>
  <p>Découvrez et restez connectés avec les differentes associations, collectez les dons et rassemblez des bénévoles pour des activités caritatives</p> 
</div>

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
                            
                                <h3 class="register-heading">S'inscrire en tant qu'association</h3>
                                
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="NOM de l'association *" value="" name="nom_association" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Date de Création de l'association *" value="" name="date_creation" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Numero officiel de l'association *" value="" name="numero" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="President de l'association *" value="" name="president" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control"  placeholder="Description de l'association *" value=""  name="description_association"/>
                                        </div>
                                           <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Categorie</option>
                                                <option>cat1</option>
                                                <option>cat2</option>
                                                <option>cat3</option>
                                            </select>
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                       
                                        <div class="form-group">
										<input class="form-control" placeholder="l'effectif de l'association" name="effectif" type="number" />
									</div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="numero" class="form-control" placeholder="Numero de telephone *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="fax" class="form-control" placeholder="Numero du fax *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="site_web" class="form-control" placeholder="Site Web *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="email" class="form-control" placeholder="L'email de l'association *" value="" name="emSail_association" />
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