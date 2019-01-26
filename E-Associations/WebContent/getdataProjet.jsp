<%@page import="dao.ProjetConnection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%
	ProjetConnection db = new ProjetConnection();

	String query = request.getParameter("q");
	
	List<String> projets = db.getData(query);
	Iterator<String> iterator = projets.iterator();
	while(iterator.hasNext()) {
		String projet = (String)iterator.next();
		out.println(projet);
	}
%>