package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import web.CategorieModel;

public class CategorieConnection {

	private static Connection conx = SingletonConnection.getConnection();
	
	
	public static ArrayList<CategorieModel> getCategories(){
		
		ArrayList<CategorieModel> categories = new ArrayList<CategorieModel>();
		CategorieModel categorie =new CategorieModel();

		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from categorie");
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				categorie = new CategorieModel();
				 categorie.setNom_categorie(rs.getString("nom_categorie"));   
				categories.add(categorie);
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	

		return categories;
		
	}
	
	
	// ajouter method for searching a cat 
	
	public static void addCategorie() {
		// to do 		
		
	}
	
	
	
	
	
}
