package metier;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import dao.ProjetConnection;
import dao.SingletonConnection;
import web.AlbumModel;
import web.AssociationModel;
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
	
	   
	   public static void ajouterEvent(HttpServletRequest request, int id_assoc) throws IOException, ServletException {
		   
			ProjetConnection Pc = new ProjetConnection();
			
			InputStream imageis = null;
			String type_event, lieu_event, fin_event, debut_event, description_event, nom_event;
			int id_authentif;
			
			Part filePart = request.getPart("logo");	 						
		    if (filePart != null) {
		    	System.out.println(filePart.getName());
		    	System.out.println(filePart.getSize());
		    	System.out.println(filePart.getContentType());
				imageis = filePart.getInputStream();
			}
		    type_event = request.getParameter("type_event");
		    lieu_event = request.getParameter("lieu_event");
		    fin_event = request.getParameter("fin_event");
		    debut_event = request.getParameter("debut_event");
		    description_event = request.getParameter("description_event");	
		    nom_event = request.getParameter("nom_event");
		  
		    
		    if (imageis != null) {
		    	ProjetConnection.ajouterEven(nom_event, description_event, debut_event, fin_event, lieu_event, imageis, type_event);
			}
		    
			 int id_projet =  Pc.getIdProjett(nom_event, lieu_event);
			 Pc.organiser(id_projet, id_assoc);
		    
		}
	
	
}
