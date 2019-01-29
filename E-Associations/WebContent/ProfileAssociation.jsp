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

 
<div class="container" style="padding : 0px 0px 0px ;">
		
	<div class="innerwrap">
		<section class="section1 clearfix">
		
			
				<div class="row clearfix">
				
					<ul class="row2tab clearfix">
					
						<li ><i  class="fa fa-list-alt"></i> <a href = "ProfileAssociation.jsp"  style="text-decoration: none" class="active"> Mes Evenements </a> </li>
						<li><i class="fa fa-heart"></i><a href = "catservlet"  style="text-decoration: none"> Modifier mon profile</a> </li>
						<li><i class="fa fa-check"></i><a href = "AjouterEvenement.jsp"  style="text-decoration: none" > Ajouter un evenement</a> </li>
						<li><i class="fa fa-thumbs-o-up "></i><a href = "ConsulterDon.jsp"  style="text-decoration: none" >  Consulter mes dons</a> </li>
				
					</ul>
				</div>
			</div>
			<span class="smalltri">
				
			<i class="fa fa-star"></i>
			</span>
			
		</section>
		
		<section class="section2 clearfix">
			<div class="grid">
				<div class="col3 first">
						<div class="postcont"><img src="http://ensias.um5.ac.ma/sites/ensias.um5.ac.ma/files/CINDH.jpg"  alt = "" >  
					</div>
					<div class="profileinfo">
						<img src="https://yt3.ggpht.com/a-/AN66SAyNXE4y8Y0AqNfZREdhjzG2FpfmX23aaAGB7w=s900-mo-c-c0xffffffff-rj-k-no" alt="">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy tex</p>
						<span>Read more <i class="fa fa-angle-right"></i></span>
					</div>
				</div>
				
				<div class="col3 center">
					<div class="postcont"><img src="http://ensias.um5.ac.ma/sites/ensias.um5.ac.ma/files/CINDH.jpg" alt="">
					</div>
					<div class="profileinfo">
						<img src="https://yt3.ggpht.com/a-/AN66SAyNXE4y8Y0AqNfZREdhjzG2FpfmX23aaAGB7w=s900-mo-c-c0xffffffff-rj-k-no" alt="">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy tex</p>
						<span>Read more <i class="fa fa-angle-right"></i></span>
					</div>
				</div>
				
				<div class="col3 last">
					<div class="postcont"><img src="https://scontent-amt2-1.cdninstagram.com/vp/58e29b6767d922d669655c1fe8eada69/5C90CDCE/t51.2885-15/sh0.08/e35/c0.135.1080.1080/s640x640/44456681_204725707106479_2922893758823883154_n.jpg" alt="">
					</div>
					<div class="profileinfo">
						<img src="data:image/jpeg;base64,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" alt="">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy tex</p>
						<span>Read more <i class="fa fa-angle-right"></i></span>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>	
</body>
</body>
</html>