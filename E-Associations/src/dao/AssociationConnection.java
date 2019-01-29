package dao;

import java.io.InputStream;
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
	
	
	
	public static void ajoutAssociation(String nom_assoc,String date_creation,String tele_assoc,String president_assoc,String description_assoc,
			String fax_assoc,String site_web,String email_assoc,String effectif,int  id_authentif,String  id_categorie ,InputStream imageis){

		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into association values(NULL,?,?,?,?,?,?,?,?,?,?,?,?)");


			    
		     	ps.setString(2,nom_assoc);
		     	ps.setString(3,date_creation);
		     	ps.setString(4,tele_assoc);
		     	ps.setString(5,president_assoc);
		     	ps.setString(6,description_assoc);
		     	ps.setInt(7,Integer.parseInt(effectif));
		     	ps.setString(8,fax_assoc);
		     	ps.setString(9,site_web);
		     	ps.setString(10,email_assoc);
		     	ps.setInt(11, id_authentif);
		     	ps.setInt(12,Integer.parseInt(id_categorie));
                ps.setBlob(13, imageis);
                
	        ps.executeUpdate();

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}


}
