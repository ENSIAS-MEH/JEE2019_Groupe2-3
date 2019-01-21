package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import com.mysql.jdbc.PreparedStatement;

public class LoginConnection {
	
	int j=0 ;
	int l= 0;
		private Connection connexion = (Connection) SingletonConnection.getConnection();
		
		
		//return value != 0 if created
		public int creerAuthentification(String login , String mdp , String type_authentif) {
			int created = 0;
			PreparedStatement ps;
			try {
				ps = (PreparedStatement) connexion.prepareStatement("INSERT INTO authentification VALUES (NULL,?,?,?)");
				ps.setString(1, login);
				ps.setString(2, mdp);
				ps.setString(3, type_authentif);
		        ps.executeUpdate();
		        created = savoirIdUser(login, mdp, type_authentif);
			} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			return created;
		}
		
		private int savoirIdUser(String login ,String mdp, String type_authentif) {
			int id = 0;
			PreparedStatement ps;
			try {
				ps = (PreparedStatement) connexion.prepareStatement("select id_authentif from authentification where login = ? and mdp_login = ? and type_authentif = ?");
				ps.setString(1, login);
				ps.setString(2, mdp);
				ps.setString(2, type_authentif);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					id = rs.getInt("id_authentif");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return id;
		}

}
