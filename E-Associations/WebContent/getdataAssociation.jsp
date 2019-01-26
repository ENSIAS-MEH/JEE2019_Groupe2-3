<%@page import="dao.AssociationConnection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%
	AssociationConnection db = new AssociationConnection();

	String query = request.getParameter("q");
	
	List<String> associations = db.getData(query);
	Iterator<String> iterator = associations.iterator();
	while(iterator.hasNext()) {
		String association = (String)iterator.next();
		out.println(association);
	}
%>