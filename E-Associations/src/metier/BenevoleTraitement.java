package metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import dao.SingletonConnection;
import web.BenevoleModel;

// hello

public class BenevoleTraitement {
	
	private static Connection conx = SingletonConnection.getConnection();
	
	public static BenevoleModel ChercherBenevoleCin(String cin){
		BenevoleModel benevole = null;
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from benevole where cin = ?");
			ps.setString(1, cin);		
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				benevole = new BenevoleModel(rs.getString("cin"), rs.getString("nom_ben"), rs.getString("prenom_ben"),
						rs.getString("profession_ben"), rs.getString("email_ben"), rs.getString("tele_ben") , rs.getString("sexe_ben") ,rs.getInt("id_authentif") );
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
				benevole = new BenevoleModel(rs.getString("	cin"), rs.getString("nom_ben"), rs.getString("prenom_ben"),
						rs.getString("profession_ben"), rs.getString("email_ben"), rs.getString("tele_ben") , rs.getString("sexe_ben") ,rs.getInt("id_authentif") );
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return benevole;
	}
	
	public static ArrayList<BenevoleModel> getBenevoles(int id_authentif){
		ArrayList<BenevoleModel> benevoles = new ArrayList<BenevoleModel>();
		BenevoleModel benevole = new BenevoleModel();

		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from benevole");
			ps.setInt(1, id_authentif);		
			ResultSet rs = 	ps.executeQuery();
			while(rs.next()) {
				benevole = new BenevoleModel(rs.getString("	cin"), rs.getString("nom_ben"), rs.getString("prenom_ben"),
						rs.getString("profession_ben"), rs.getString("email_ben"), rs.getString("tele_ben") , rs.getString("sexe_ben") ,rs.getInt("id_authentif") );
				benevoles.add(benevole);
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return benevoles;
	}
	
	public static void ajoutBenevole(int id_authentif, String cin, String nom_ben, String prenom_ben, String profession_ben, String email_ben, String tele_ben, String sexe_ben){
		   //
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into benevole values (?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, cin);
			ps.setString(2, nom_ben);
			ps.setString(3, prenom_ben);
			ps.setString(4, profession_ben);
			ps.setString(5, email_ben);
			ps.setString(5, tele_ben);
			ps.setString(5, sexe_ben);

			ps.setInt(6, id_authentif);	
			ResultSet rs = 	ps.executeQuery();

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}

}
