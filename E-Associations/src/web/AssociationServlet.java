package web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.AssociationTraitement;
import metier.CategorieTraitement;
import metier.ProjetTraitement;

/**
 * Servlet implementation class AssociationServlet
 */
@WebServlet("/AssociationServlet")
public class AssociationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public AssociationServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		AssociationModel am = new AssociationModel();
		am = AssociationTraitement.Association(2);
		request.setAttribute("association", am);
		RequestDispatcher r2;
	    r2=request.getRequestDispatcher("ProfileAssociation.jsp");
		r2.forward(request, response);
		
		ArrayList<CategorieModel> cat = new ArrayList<CategorieModel> ();
        CategorieTraitement ct = new CategorieTraitement();	
		
		cat = ct.getAllCategories();
		//for(CategorieModel cate : cat) {
		//System.out.println("love");
		//System.out.println(cate.getNom_categorie());}
	    //request.setAttribute("cat",cat);
	

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		System.out.println(action);
	
	    if (action.equals("ajouter_event")){
        ProjetModel pm = new ProjetModel();
        pm.setNom_projet(request.getParameter("nom_event"));
        pm.setDescription_projet(request.getParameter("description_event"));
        pm.setDate_debut(request.getParameter("debut_event"));
        pm.setDate_fin(request.getParameter("fin_event"));
        pm.setLieu_projet(request.getParameter("lieu_event"));
          ProjetTraitement.addProjet(pm);
		RequestDispatcher r2;
        r2=request.getRequestDispatcher("AjouterEvenement.jsp");
		r2.forward(request, response);
		
		}
	    
	    if (action.equals("Confirmer")){
	    
	    	PhotoModel pm = new PhotoModel();
           ProjetTraitement.addPhotos(pm,request.getParameter("img"),1);	  
	    	AlbumModel album = new AlbumModel();
	    	album.setNom_album(request.getParameter("nom_album"));
	    	ProjetTraitement.addAlbum(album,2);
	    
	    
	    }
				
		
		
		
		
	}

	
}
