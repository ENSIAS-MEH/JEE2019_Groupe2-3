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

<title>Insert title here</title>
</head>
<body>

<%

      AssociationModel association = new AssociationModel();
      AssociationTraitement at =  new AssociationTraitement();
	 String name = (String)request.getAttribute("name");
	  association = AssociationTraitement.Association1(name);

	%>

<div class="container">

		
	<div class="innerwrap">
		<section class="section1 clearfix">
		
			<div>
				<div class="row grid clearfix">
				
					<div class="col2 first">
					
			     <img src="data:image/jpg;base64,<%=association.BlobToString()%>"  height="200" width="200" alt=""/> 
			         	
						<h1><%=association.getNom_assoc() %></h1>
						
						<p><%=association.getDescription_assoc() %></p>
				    	</div>
					    <div class="col2 last">
						<div class="grid clearfix">
					    <div class="col3 first">
								<h1><%=association.getTele_assoc()%></h1>
								<span>telephone</span>
							</div>
							<div class="col3"><h1><%=association.getSite_web()%></h1>
							<span >site web</span></div>
							<div class="col3 last"><h1><%=association.getEmail_assoc()%></h1>
							<span>email</span></div>
						</div>
					</div>
				</div>
				</div>
				</section>
				</div>
				</div>
				
</body>
</html>