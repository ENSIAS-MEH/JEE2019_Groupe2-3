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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<div class="container">
		
	<div class="innerwrap">
		<section class="section1 clearfix">
		
				<div class="row clearfix">
				
					<ul class="row2tab clearfix">
					
		    <li ><i  class="fa fa-check"></i> <a href = "/E-Associations/ProfileAssociation.do"  style="text-decoration: none"> Mes Evenements </a> </li>
			<li><i class="fa fa-list-alt"></i><a href = "/E-Associations/ModifierProfile.do" class="active" style="text-decoration: none"> modifier mon profile</a> </li>
			<li><i class="fa fa-check">   </i><a href = "/E-Associations/AjouterEvenement.do" style="text-decoration: none" > Ajouter un evenement</a> </li>
			<li><i class="fa fa-thumbs-o-up "></i><a href = "/E-Associations/ConsulterDon.do" style="text-decoration: none" >  Consulter mes dons</a> </li>
						
						
					</ul>
				</div>
			</div>
			<span class="smalltri">
			<i class="fa fa-star"></i>
			</span>
		</section>
		
		<section class="section2 clearfix">
			walo
		</section>
	</div>
</div>	
</body>
</body>
</html>