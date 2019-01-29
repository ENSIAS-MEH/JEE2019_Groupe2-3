package metier;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.SingletonConnection;
import web.AlbumModel;
import web.AssociationModel;
import web.PhotoModel;
import web.ProjetModel;

public class ProjetTraitement {
	private static Connection conx = SingletonConnection.getConnection();

	public static void addProjet(ProjetModel proj) throws FileNotFoundException{

		

		try {
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into projet values(?,?,?,?,?,?)");

                ps.setInt(1,proj.getId_projet());
		     	ps.setString(2,proj.getNom_projet());
		     	ps.setString(3,proj.getDescription_projet());
		     	ps.setString(4,proj.getDate_debut());
		     	ps.setString(5,proj.getDate_fin());
		     	ps.setString(6,proj.getLieu_projet());
		     
	            ps.executeUpdate();
	            ps.close();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
	
	

	public static void addAlbum(AlbumModel album , int id_projet) throws FileNotFoundException{

		try {
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into album values(?,?,?)");


			    ps.setInt(1,album.getId_album());
		     	ps.setString(2,album.getNom_album());
		       ps.setInt(3, id_projet);

	            ps.executeUpdate();
	            ps.close();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
	
	public static void addPhotos(PhotoModel photo, String s ,int id_album) throws FileNotFoundException{
	    InputStream img = new FileInputStream(new File(s));	    
		try {
			
		    	PreparedStatement ps;
		    	ps = (PreparedStatement) conx.prepareStatement("insert into Photo values(?,?,?)");
			    ps.setInt(1,photo.getId_photo());
                ps.setBinaryStream(3,img, (int)(new File(s).length()));   
                ps.setInt(2, id_album);
	            ps.executeUpdate();
	            ps.close();
		    
		    } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
	
}
