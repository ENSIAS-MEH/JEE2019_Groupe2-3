<!DOCTYPE html> 
<html> 
        
<head> 
<meta charset="ISO-8859-1"> 
<title>Site Web E-Associations</title> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
<link rel="stylesheet" type="text/css" href="css/font-awesome.css"> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"> 
<style> 
.fakeimg { 
   height: 200px; 
   background: #aaa; 
}
.jumbotron{
    background: url("images/myfinalheader.jpg");
    background-repeat:no-repeat;
	background-size: cover;
	color : white;
} 
footer {
  padding: 1% 5%;
  text-align:center;
  background-color: #fff;
  color: #373B44;
}
.sec-contact{
  background-color: #373B44;
  color : white;
}
hr {
    height: 4px;
    color: #123455;
    background-color: white;
    border: none;
}
</style> 
</head> 
        
<body data-spy="scroll" data-target=".navbar" data-offset="50"> 
        
        <section class="hero"> 
           <header> 
           <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">    
               <a class="navbar-brand" href="#">E-Associations<img src="images/icon (3).png" alt="line"></a>       
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
                   aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> 
                   <span><i class="fa fa-home" aria-hidden="true"></i></span> 
               </button>    
               <div class="collapse navbar-collapse" id="navbarSupportedContent"> 
                   <ul class="navbar-nav" style="margin-left:auto">             
                   <li> 
                    <form class="form-inline my-2 my-lg-0"> 
                       <input class="form-control mr-sm-2" type="search" placeholder="Trouver une association" aria-label="Search"> 
                       <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i> 
                       Recherche</button>                 
                   </form> 
                   </li>         
                   <li class="nav-item"> 
                           <a class="nav-link" href="#login">Log in</a> 
                       </li>   
                       <li class="nav-item"> 
                           <a class="nav-link" href="#benevole">Benevole</a> 
                       </li>               
                       <li class="nav-item"> 
                           <a class="nav-link" href="#association">Association</a> 
                       </li>       
                       <li class="nav-item"> 
                           <a class="nav-link" href="#signup">Sign up</a> 
                       </li>                               
                                        
                       <li class="nav-item"> 
                           <a class="nav-link" href="#contact">Contact</a> 
                       </li>                              
                   </ul>   
               </div>                              
           </nav> 
           </header> 		
       </section>        
     
<div class="jumbotron jumbotron-fluid mb-0"> 
  				<div class="container container-fluid">
  				<div class="col-lg-6">
				  <h1 class="display-3">E-Association Platforme</h1>
				  <br>
				  <br>
				  <p class="lead">C'est une plateforme gratuite qui assure et facilite la connexion entre associations et autres utilisateurs afin de 
      collecter les dons et rassembler les bénévoles pour des activités caritatives à décrire en précisant 
      ses détails.</p>
      <br>
				  <hr class="my-4">
				  <p>Découvrez et restez connectés avec les differentes associations collectez les dons et rassemblez des bénévoles pour des activités caritatives.</p>
				  <br>
				  <p class="lead">
				    <a class="btn btn-primary" href="#" role="button">Savoir Plus</a>
				  </p>
	</div>
</div>
</div>
       
       
        <section id="login" class="sec-login pt-5 pb-5"> 
         <div class="container"> 
        <div class="row justify-content-center text-center"> 
         <div class="col-md-10 col-lg-8"> 
  
         <form method="post" action="ControleurServlet"> 
                 
				<div class="card-deck">
				  <div class="card border-dark">
				    <img class="card-img-top" src="images/cristi-tohatan-675311-unsplash.jpg" alt="">
				    <div class="card-body">
				      <h5 class="card-title">Association</h5>
				      <p class="card-text">Vous avez un compte association. Se connecter en un seul geste, ajouter des activites, chercher des benevoles
				       collecter des dons.</p>				      
				      <button class="btn btn-primary" name="choix_association" value="choix_association">Se connecter</button>
				      <p class="card-text"><small class="text-muted"></small></p>
				    </div>
				  </div>
				  	  
				  <div class="card border-dark">			  
				    <img class="card-img-top" src="images/poverty2.png" alt="">
				    <div class="card-body">
				      <h5 class="card-title">Benevole</h5>
				      <p class="card-text">Vous avez un compte benevole. Se connecter en un seul geste, chercher des associations, 
				      chercher des activites, faire des dons, particper a des activites.</p>
				       <button class="btn btn-primary" name="choix_benevole" value="choix_benevole">Se connecter</button>
				      <p class="card-text"><small class="text-muted"></small></p>			   
				    </div>
				  </div>				  
				 </div>			 
				   </form> 			 
            </div> 
             </div> 
           </div> 
       </section> 

       <section id="benevole" class="sec-benevole pt-5 pb-5"> 
         <div class="container"> 
          <div class="row justify-content-center text-center"> 
            <div class="col-md-10 col-lg-8"> 
        <h2 class="text-center">Espace Benevoles</h2> 
        <div class="fakeimg"><img alt="" src="images/association.jpg" style="width: 375px;"></div>       
        <h2>A PROPOS</h2> 
        <h5>Description de l'espace benevole</h5>    
        </div>     
         </div> 
          </div> 
       </section> 


       <section id="association" class="sec-association pt-5 pb-5"> 
          <div class="container"> 
          <div class="row justify-content-center text-center"> 
                <div class="col-md-10 col-lg-8"> 
         <h2 class="text-center">Espace Associations</h2> 
         <div class="fakeimg"><img alt="" src="images/association.jpg" style="width: 375px;"></div>       
         <h2>A PROPOS</h2> 
         <h5>Description de l'espace association</h5>  
        </div>     
         </div> 
         </div> 
       </section> 
  
       
               <section id="signup" class="sec-signup pt-5 pb-5"> 
         <div class="container"> 
        <div class="row justify-content-center text-center"> 
         <div class="col-md-10 col-lg-8"> 
  
         <form method="post" action="ControleurServlet"> 
                 
				<div class="card-deck">
				  <div class="card border-dark">
				    <img class="card-img-top" src="images/tim-marshall-114623-unsplash.jpg" alt="">
				    <div class="card-body">
				      <h5 class="card-title">Vous avez une Association ?</h5>
				      <p class="card-text">Creer votre compte maintenant en un seul geste, et vous serez connecter immediatement a tout le monde.
				       Ajouter des activites, chercher des benevoles
				       collecter des dons.</p>				      
				      <button class="btn btn-primary" name="choix_association_inscr" value="choix_association_inscr">S'inscrire</button>
				      <p class="card-text"><small class="text-muted"></small></p>
				    </div>
				  </div>
				  	  
				  <div class="card border-dark">			  
				    <img class="card-img-top" src="images/jonathan-kho-709591-unsplash.jpg" alt="">
				    <div class="card-body">
				      <h5 class="card-title">Vous voulez Devenir un Benevole!</h5>
				      <p class="card-text">C'est simple avec un simple geste, creer votre compte benevole. Faire un don. 
				      Chercher des associations, chercher des activites, faire des dons, particper a des activites.</p>
				       <button class="btn btn-primary" name="choix_benevole_inscr" value="choix_benevole_inscr">S'inscrire</button>
				      <p class="card-text"><small class="text-muted"></small></p>			   
				    </div>
				  </div>				  
				 </div>			 
				   </form> 			 
            </div> 
             </div> 
           </div> 
       </section> 
       


      

         <section id="contact" class="sec-contact pt-5 pb-5"> 
           <div class="container"> 
             <div class="row justify-content-center"> 
               <div class="col-md-10 col-lg-7"> 
                 <h1 class="h4">Vous avez une question? Contactez-nous! </h1> 
                  
                 <form action="" method=""> 
                   <fieldset class="form-group"> 
                     <label for="formName">Votre Nom:</label> 
                     <input id="formName" class="form-control" type="text" placeholder="Votre Nom" required> 
                   </fieldset> 
                      
                   <fieldset class="form-group"> 
                     <label for="formEmail1">Adresse électronique:</label> 
                     <input id="formEmail1" class="form-control" type="email" placeholder="Enter email" required> 
                   </fieldset> 
                    
                   <fieldset class="form-group"> 
                     <label for="formMessage">Votre Message:</label> 
                     <textarea id="formMessage" class="form-control" rows="3" placeholder="Votre message" required></textarea> 
                   </fieldset> 
                    
                   <fieldset class="form-group text-center"> 
                     <button class="btn btn-primary" type="submit">Envoyer le Message</button> 
                   </fieldset> 
                 </form> 
               </div> 
             </div> 
           </div> 
         </section> 


         <footer class="footer"> 
           <div class="container"> 
             <ul class="list-inline mb-0 text-center"> 
               <li class="list-inline-item"> 
                   ENSIAS <a href="">&copy; AL Irfane Rabat 2018</a>
               </li>
               </ul> 
           </div>
         </footer>
    
    
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> 
           <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
           <script src="js/bootstrap.min.js" ></script>
       </body>
       </html>