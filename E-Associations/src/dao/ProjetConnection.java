package dao;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import web.ProjetModel;


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
	
	public static ArrayList<ProjetModel> getProjets(){
		ArrayList<ProjetModel> listePj = new ArrayList<>();
		ProjetModel pj = new ProjetModel();

		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from projet");
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				pj = new ProjetModel(rs.getInt("id_projet"), rs.getString("nom_projet"), rs.getString("description_projet"),
						rs.getString("date_debut"), rs.getString("date_fin"), rs.getString("lieu_projet"), 
						rs.getString("type_event"), rs.getBlob("photo"));	
				listePj.add(pj);
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return listePj;
	}
	
	public static void ajouterEven(String nom_projet, String description_projet, String date_debut, String date_fin,  String lieu_projet,
			InputStream photo, String type_event){
		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into projet values (NULL,?,?,?,?,?,?,?)");
			ps.setString(1, nom_projet);
			ps.setString(2, description_projet);
			ps.setString(3, date_debut);
			ps.setString(4, date_fin);
			ps.setString(5, lieu_projet);
			ps.setBlob(6, photo);
			ps.setString(7, type_event);
			
			
	        ps.executeUpdate();

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	
	public int getIdProjett(String nom_projet ,String lieu_projet) {
		int bool = 0;
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conx.prepareStatement("select id_projet from projet where nom_projet = ? and lieu_projet = ?");
			ps.setString(1, nom_projet);
			ps.setString(2, lieu_projet);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println("il affiche des resultats");
				bool = rs.getInt("id_projet");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bool;
	}
	
	
	public static void organiser(int id_projet,int  id_assoc){	
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into organiser values (?,?)");
			ps.setInt(1, id_projet);
			ps.setInt(2, id_assoc);
			
	        ps.executeUpdate();

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	
	public ArrayList<ProjetModel> getEvents(int id_assoc) {
		ArrayList<ProjetModel>  projects = null;
		ProjetModel projet = null;
		
		int id_projet = 0;
		
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conx.prepareStatement("select id_projet from organiser where id_assoc = ? ");
			ps.setInt(1, id_assoc);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println("il affiche des resultats");
				id_projet = rs.getInt("id_projet");
				
				PreparedStatement pss = null;
				try {
					ps = (PreparedStatement) conx.prepareStatement("select * from projet where id_projet = ? ");
					ps.setInt(1, id_projet);
					ResultSet rss = pss.executeQuery();
					while (rss.next()) {
						projet = new ProjetModel(rss.getInt("id_projet"), rss.getString("nom_projet"), rss.getString("description_projet"),
								rss.getString("date_debut"), rss.getString("date_fin"), rss.getString("lieu_projet"), 
								rss.getString("type_event"), rss.getBlob("photo"));			
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return projects;
	}
		
	
	
	
	
}
