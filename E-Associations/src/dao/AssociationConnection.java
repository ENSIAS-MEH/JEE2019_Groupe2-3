package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AssociationConnection {
	
	private static Connection conx = SingletonConnection.getConnection();
	private int totalAssociations;
	private List<String> associations;
	
	
	public AssociationConnection() {
		super();
		this.associations = getAssociationsNames();
		this.totalAssociations = this.associations.size();
	}

	private static ArrayList<String> getAssociationsNames(){
		ArrayList<String> noms = new ArrayList<>();
		String nom;
		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from association");
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				nom = rs.getString("nom_assoc");
				noms.add(nom);
				System.out.println("liste des noms");
				System.out.println(nom);
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return noms;
	}
	
	public List<String> getData(String query) {
		System.out.println("je suis dans la methode getData");
		String association = null;
		query = query.toLowerCase();
		List<String> matched = new ArrayList<String>();
		for(int i=0; i<totalAssociations; i++) {
			association = associations.get(i).toLowerCase();
			if(association.startsWith(query)) {
				matched.add(associations.get(i));
				System.out.println("ouii; existe");
			}
		}
		return matched;
	}
	


}
