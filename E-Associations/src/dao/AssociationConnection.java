package dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import web.AssociationModel;
import web.BenevoleModel;

public class AssociationConnection {
	
	private static Connection conx = SingletonConnection.getConnection();
	private int totalAssociations;
	int g;
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
	
	public static AssociationModel ChercherAssociationIdauthentif(int id_authentif){
		AssociationModel association = new AssociationModel();
		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from association where id_authentif = ?");
			ps.setInt(1, id_authentif);		
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				association = new AssociationModel(rs.getInt("id_assoc"), rs.getString("nom_assoc"), rs.getString("nom_assoc"),
						rs.getString("tele_assoc"), rs.getString("president_assoc"), rs.getString("description_assoc") , 
						rs.getInt("effectif") ,rs.getString("fax_assoc"), rs.getString("site_web"),rs.getString("email_assoc"),rs.getInt(id_authentif),
						rs.getInt("id_categorie"));
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return association;
	}	


	public static void ajoutAssociation(String nom_assoc,String date_creation,String tele_assoc,String president_assoc,String description_assoc,
			String fax_assoc,String site_web,String email_assoc,String effectif,int  id_authentif,String  id_categorie ,InputStream imageis){
		int effect = Integer.parseInt(effectif);
		int id_cat = Integer.parseInt(id_categorie);

		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into association values(NULL,?,?,?,?,?,?,?,?,?,?,?,?)");
			    
		     	ps.setString(1,nom_assoc);
		     	ps.setString(2,date_creation);
		     	ps.setString(3,tele_assoc);
		     	ps.setString(4,president_assoc);
		     	ps.setString(5,description_assoc);
		     	ps.setInt(6,effect);
		     	ps.setString(7,fax_assoc);
		     	ps.setString(8,site_web);
		     	ps.setString(9,email_assoc);
		     	ps.setInt(10, id_authentif);
		     	ps.setInt(11,id_cat);
                ps.setBlob(12, imageis);
                
	        ps.executeUpdate();

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}


}
