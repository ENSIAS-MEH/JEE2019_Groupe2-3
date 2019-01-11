package metier;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.SingletonConnection;
import web.AssociationModel;

public class AssociationTraitement {
	
	private static Connection conx = SingletonConnection.getConnection();

	public static void addassociation(AssociationModel assoc, String s) throws FileNotFoundException{
	    InputStream img = new FileInputStream(new File(s));
	

		

		try {
			PreparedStatement ps;
			ps = (PreparedStatement) conx.prepareStatement("insert into association values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

			    ps.setInt(1,assoc.getId_assoc());
		     	ps.setString(2,assoc.getNom_assoc());
		     	ps.setString(3,assoc.getDate_creation());
		     	ps.setString(4,assoc.getTele_assoc());
		     	ps.setString(5,assoc.getPresident_assoc());
		     	ps.setString(6,assoc.getDescription_assoc());
		     	ps.setInt(7,assoc.getEffectif());
		     	ps.setString(8,assoc.getFax_assoc());
		     	ps.setString(9,assoc.getSite_web());
		     	ps.setString(10,assoc.getEmail_assoc());
		     	ps.setInt(11, assoc.getId_authentif());
		     	ps.setInt(12,assoc.getId_categorie());
                ps.setBinaryStream(13,img, (int)(new File(s).length()));   
                System.out.println("wow");


		     

	            ps.executeUpdate();
	            ps.close();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
	public ArrayList<AssociationModel> getAllAssociations(){
		java.sql.PreparedStatement ps;
		ArrayList<AssociationModel> AM = new ArrayList<AssociationModel> ();
	
		try {
			ps = (PreparedStatement) conx.prepareStatement("select * from association");
			ResultSet rs;
			rs = ps.executeQuery();
            while(rs.next()){
             AssociationModel c=new AssociationModel();
             c.setNom_assoc(rs.getString("nom_assoc")); 
             c.setPresident_assoc(rs.getString("president_assoc"));   
             c.setDescription_assoc(rs.getString("description_assoc")); 
             c.setDate_creation(rs.getString("date_creation"));
             c.setLogo(rs.getBytes("logo_assoc"));  
             c.setEmail_assoc(rs.getString("email_assoc"));  
             c.setTele_assoc(rs.getString("tele_assoc"));
             c.setFax_assoc(rs.getString("fax_assoc")); 
             c.setEffectif(rs.getInt("effectif"));
             AM.add(c);
            }
            return AM ;
            }
			
			
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return AM;
} 
	
	

	
	public static void main(String[] args) throws FileNotFoundException {
		
		AssociationModel am = new AssociationModel();
		AssociationTraitement at = new AssociationTraitement();
		am.setDate_creation("111");
		am.setDescription_assoc("f");
		am.setEffectif(4);
		am.setEmail_assoc("111");
		am.setFax_assoc("111");
		am.setId_assoc(2);
		am.setId_authentif(1);
		am.setId_categorie(1);
		am.setNom_assoc("111");
		am.setPresident_assoc("111");
		am.setSite_web("111");
		am.setTele_assoc("111");
		//at.addassociation(am, "logo_CINDH.png");
	}
}
