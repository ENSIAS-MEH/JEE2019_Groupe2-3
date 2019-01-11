
package metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.SingletonConnection;
import web.BenevoleModel;

// hello

public class BenevoleTraitement {
	
	private static Connection conx = SingletonConnection.getConnection();
	
	public static BenevoleModel ChercherBenevoleCin(String cin){
		BenevoleModel benevole = new BenevoleModel();
		
		try {
			
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("select * from benevole where cin = ?");
			ps.setString(1, cin);		
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
	

}
