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
<jsp:include page="Header.jsp" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%

	  LoginConnection lc = new LoginConnection(); 
      AssociationModel association = new AssociationModel();
      AssociationTraitement at =  new AssociationTraitement();
	  int id_authen = lc.savoirIdUser((String)session.getAttribute("login"),(String)session.getAttribute("mdp_login"),"a");
	  association = AssociationTraitement.Association(id_authen);
	  
	%>
	
	
	
<div class="container" style="padding :10px 0px 30px 0px ;">
		
	<div class="innerwrap">
		<section class="section1 clearfix">
		
			
				<div class="row clearfix">
				
					<ul class="row2tab clearfix">
					
						<li ><i  class="fa fa-list-alt"></i> <a href = "/E-Associations/ProfileAssociation.do"  style="text-decoration: none" class="active"> Mes Evenements </a> </li>
						<li><i class="fa fa-heart"></i><a href = "catservlet"  style="text-decoration: none"> Modifier mon profile</a> </li>
						<li><i class="fa fa-check"></i><a href = "/E-Associations/AjouterEvenement.do"  style="text-decoration: none" > Ajouter un evenement</a> </li>
						<li><i class="fa fa-thumbs-o-up "></i><a href = "/E-Associations/ConsulterDon.do"  style="text-decoration: none" >  Consulter mes dons</a> </li>
				
					</ul>
				</div>
			</div>
			<span class="smalltri">
				
			<i class="fa fa-star"></i>
			</span>
			
		</section>
		
		<% 
		ProjetConnection Pc = new ProjetConnection();
		ArrayList<ProjetModel> projects = Pc.getEvents(association.getId_assoc());

			for(ProjetModel pm : projects){
		%>	
	
		<section class="section2 clearfix " style = "padding : 10px 300px 40px 350px">
		<h3><%=pm.getNom_projet() %></h3>
			<div class="grid">
				<div class="col3 first">
						<div class="postcont">
						<img src="data:image/jpg;base64,<%=pm.BlobToString()%>"  height="200" width="200" alt=""/> 

					</div>
					<div class="profileinfo">
						<img src="https://yt3.ggpht.com/a-/AN66SAyNXE4y8Y0AqNfZREdhjzG2FpfmX23aaAGB7w=s900-mo-c-c0xffffffff-rj-k-no" alt="">
						<p>Description de l'evenement : <%=pm.getDescription_projet() %></p>
						<p>Date Debut                  :<%=pm.getDate_debut() %></p>
						<p>Date fin                  :<%=pm.getDate_fin() %></p>
						<p>Type d'aide  :<%=pm.getType_event() %></p>
						<p>Lieu  : <%=pm.getLieu_projet() %></p>
					</div>
				</div>
				
				<div class="col3 center">
					<div class="postcont"><img src="http://ensias.um5.ac.ma/sites/ensias.um5.ac.ma/files/CINDH.jpg" alt="">
					</div>
					<div class="profileinfo">
						<img src="https://yt3.ggpht.com/a-/AN66SAyNXE4y8Y0AqNfZREdhjzG2FpfmX23aaAGB7w=s900-mo-c-c0xffffffff-rj-k-no" alt="">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy tex</p>
					</div>
				</div>		
			</div>	
		</section>
		
		<% 
			}
		
		%>

	
	</div>
</body>
</html>