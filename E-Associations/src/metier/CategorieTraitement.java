package metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import dao.SingletonConnection;
import web.AssociationModel;
import web.CategorieModel;

public class CategorieTraitement {
	private static Connection conx = SingletonConnection.getConnection();

	public static ArrayList<CategorieModel> getAllCategories(){
		java.sql.PreparedStatement ps;
		ArrayList<CategorieModel> cat = new ArrayList<CategorieModel> ();
	
		try {
			ps = (PreparedStatement) conx.prepareStatement("select * from categorie");
			ResultSet rs;
			rs = ps.executeQuery();
            while(rs.next()){
            	CategorieModel c=new CategorieModel();
             c.setNom_categorie(rs.getString("nom_categorie")); 
             c.setId_categorie(rs.getInt("id_categorie"));
            
             cat.add(c);
            }
            return cat ;
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cat;
        } 


	
	public static void main(String[] args) {
		
		CategorieTraitement am = new CategorieTraitement();

		
		
	     	ArrayList<CategorieModel> cat = new ArrayList<CategorieModel> ();
		    cat = am.getAllCategories();
			for(CategorieModel cate : cat) {
			System.out.println(cate.getNom_categorie());}
		
		
		
		
		
	}
}
