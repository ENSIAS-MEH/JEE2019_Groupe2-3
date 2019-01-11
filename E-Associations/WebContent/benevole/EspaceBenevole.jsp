<%@page import="web.BenevoleModel"%>
<%@page import="metier.BenevoleTraitement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*"%>
<%@ page import="web.*"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<% BenevoleModel bene = new BenevoleModel();%>
	<%  bene = BenevoleTraitement.ChercherBenevoleCin("JB491434"); %>
	<% if(bene == null){ %>
		<h1>hi</h1>
	<% }else{ %>
		<h1><%=bene.getNom_ben() %></h1>
	<% } %>

</body>
</html>