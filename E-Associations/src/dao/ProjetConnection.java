package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProjetConnection {
	
	private static Connection conx = SingletonConnection.getConnection();
	private int totalProjets;
	private List<String> projets;
	
	
	public ProjetConnection() {
		super();
		this.projets = getProjetsNames();
		this.totalProjets = this.projets.size();
	}
	
	private static ArrayList<String> getProjetsNames(){
		ArrayList<String> noms = new ArrayList<>();
		String nom;
		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from projet");
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				nom = rs.getString("nom_projet");
				noms.add(nom);
				System.out.println("liste des noms des projets");
				System.out.println(nom);
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return noms;
	}
	
	public List<String> getData(String query) {
		System.out.println("je suis dans la methode getData de projet");
		String association = null;
		query = query.toLowerCase();
		List<String> matched = new ArrayList<String>();
		for(int i=0; i<totalProjets; i++) {
			association = projets.get(i).toLowerCase();
			if(association.startsWith(query)) {
				matched.add(projets.get(i));
				System.out.println("ouii;les projets existent dans la bd");
			}
		}
		return matched;
	}
}
