package dao;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;

import javax.servlet.http.Part;

import web.BenevoleModel;
import web.ParticiperModel;
import web.ProjetModel;

public class BenevoleConnection {
	
private static Connection conx = SingletonConnection.getConnection();


	

	private byte[] image;  

   public byte[] getImage() {
       return this.image;
   }

   private String base64Image;
    
   public String getBase64Image() {
       return base64Image;
   }

   public void setBase64Image(String base64Image) {
       this.base64Image = base64Image;
   }
   

	public static BenevoleModel ChercherBenevoleCin(String cin){
		BenevoleModel benevole = null;
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from benevole where cin = ?");
			ps.setString(1, cin);		
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				benevole = new BenevoleModel(rs.getString("cin"), rs.getString("nom_ben"), rs.getString("prenom_ben"),
						rs.getString("profession_ben"), rs.getString("email_ben"), rs.getString("tele_ben") , 
						rs.getString("sexe_ben") ,rs.getInt("id_authentif"), rs.getBlob("image_b") );
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return benevole;
	}
	
	public static BenevoleModel ChercherBenevoleIdauthentif(int id_authentif){
		BenevoleModel benevole = new BenevoleModel();
		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from benevole where id_authentif = ?");
			ps.setInt(1, id_authentif);		
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				benevole = new BenevoleModel(rs.getString("cin"), rs.getString("nom_ben"), rs.getString("prenom_ben"),
						rs.getString("profession_ben"), rs.getString("email_ben"), rs.getString("tele_ben") , 
						rs.getString("sexe_ben") ,rs.getInt("id_authentif"), rs.getBlob("image_b"));
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return benevole;
	}
	
	public static ArrayList<BenevoleModel> getBenevoles(){
		ArrayList<BenevoleModel> benevoles = new ArrayList<BenevoleModel>();
		BenevoleModel benevole = new BenevoleModel();

		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from benevole");
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				benevole = new BenevoleModel(rs.getString("cin"), rs.getString("nom_ben"), rs.getString("prenom_ben"),
						rs.getString("profession_ben"), rs.getString("email_ben"), rs.getString("tele_ben") , 
						rs.getString("sexe_ben") ,rs.getInt("id_authentif"), rs.getBlob("image_b") );
				benevoles.add(benevole);
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return benevoles;
	}
	
	public static void ajoutBenevole(int id_authentif, String cin, String nom_ben, String prenom_ben, String profession_ben, String email_ben,
			String tele_ben, String sexe_ben, InputStream image){

		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into benevole values (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, cin);
			ps.setString(2, nom_ben);
			ps.setString(3, prenom_ben);
			ps.setString(4, profession_ben);
			ps.setString(5, email_ben);
			ps.setString(6, tele_ben);
			ps.setString(7, sexe_ben);
			ps.setBlob(8, image);
			ps.setInt(9, id_authentif);	
			
	        ps.executeUpdate();

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}
	
	public int savoirNombreParticipations(String cin) {
		int nb = 0;
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conx.prepareStatement("select * from participer where cin = ?");
			ps.setString(1, cin);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				nb++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nb;
	}
	
	

public void updateB(String cin, String nomb, String prenomb, String professionb, String emailb, String teleb) {

	java.sql.PreparedStatement ps;
	
	try {
		
		ps = (PreparedStatement) conx.prepareStatement("UPDATE benevole SET nom_ben= ? ,prenom_ben=? , profession_ben = ? , email_ben= ? ,tele_ben =? WHERE cin= ?");
	
     	ps.setString(1,nomb);
     	ps.setString(2,prenomb);
     	ps.setString(3, professionb);
     	ps.setString(4, emailb);
     	ps.setString(5, teleb);
     	ps.setString(6,cin);
     	
    	System.out.println("secondmethod update benevole cnx");

     	
     	
		ps.executeUpdate(); 
		System.out.println("fin update retour a traitement");

		ps.close();
		}

	         catch (SQLException e) {
			e.printStackTrace();
		}

	
}

public  static void upadatPicBenevole (String cin , InputStream photo) throws FileNotFoundException {
	
	java.sql.PreparedStatement ps;
	try {
		
		ps = (PreparedStatement) conx.prepareStatement("UPDATE benevole SET image_b= ?  WHERE cin= ?");
	
		ps.setBlob(1, photo);
		ps.setString(2, cin);
		
		ps.executeUpdate(); 
		ps.close();}

	         catch (SQLException e) {
			e.printStackTrace();
		}

}




public static ArrayList<Integer> returnidprojets(String cin){
	ArrayList<Integer> ids=new ArrayList<Integer>();
	int id;
	java.sql.PreparedStatement ps;
	try {
		
		ps = (PreparedStatement) conx.prepareStatement("select id_projet from participer where cin = ?");
		ps.setString(1, cin);
		ResultSet rs = 	ps.executeQuery();
		while(rs.next()) {
			id = rs.getInt("id_projet")	;
			ids.add(id);
		}
		
		ps.close();}

	         catch (SQLException e) {
			e.printStackTrace();
		}
	
	
	
	return ids;
	
	
}


public static ArrayList<ProjetModel> getBenevoleProjetsinfo(String cin){
	
	
	ArrayList<Integer> ids = returnidprojets( cin);
	ArrayList<ProjetModel> projets=new ArrayList<ProjetModel> ();
	ProjetModel projet = null;
	java.sql.PreparedStatement ps;
	try {
		for(int id:ids) {
		ps = (PreparedStatement) conx.prepareStatement("select * from projet WHERE id_projet =?");
		ps.setInt(1, id);
		ResultSet rs = 	ps.executeQuery();
		while(rs.next()) {
			projet = new ProjetModel(rs.getInt("id_projet"), rs.getString("nom_projet"), rs.getString("description_projet"),
					rs.getString("date_debut"), rs.getString("date_fin"), rs.getString("lieu_projet"), 
					rs.getString("type_event"), rs.getBlob("photo"));			
			
			projets.add(projet);
		}
		
		ps.close();}
	}

	         catch (SQLException e) {
			e.printStackTrace();
		}
	
	
	
	return projets;
	
	
}

public static ParticiperModel getBenevoleParticipation(String cin, int id_projet){

	ParticiperModel participation = new ParticiperModel();
	
	java.sql.PreparedStatement ps;
	try {
		
		ps = (PreparedStatement) conx.prepareStatement("select * from participer WHERE cin= ? and id_projet=?");
		ps.setString(1, cin);
		ps.setInt(2, id_projet);
		
		ResultSet rs = 	ps.executeQuery();
		while(rs.next()) {
			participation = new ParticiperModel(rs.getString("cin"), rs.getInt("id_projet")	,rs.getString("type_participation"),rs.getFloat("montant"));
			
		}
		ps.executeUpdate(); 
		ps.close();}

	         catch (SQLException e) {
			e.printStackTrace();
		}

	return participation;
	
}






}