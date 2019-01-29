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
	    
   if (action.equals("ajouter_pic")){
	    
	    	PhotoModel pm = new PhotoModel();
            ProjetTraitement.addPhotos(pm,request.getParameter("logo"),2);	  
	    	AlbumModel album = new AlbumModel();
	    	album.setNom_album(request.getParameter("nom_album"));
	    	ProjetTraitement.addAlbum(album,2);
	    	RequestDispatcher r2;
	        r2=request.getRequestDispatcher("AjouterEvenement.jsp");
			r2.forward(request, response);
	    
	    }
   
	    if (action.equals("modifier_profile")){
	     
	    	AssociationModel am = new AssociationModel();
            AssociationTraitement at = new AssociationTraitement();
            int id ;
    		//at.addassociation(am, "logo_CINDH.png");
            am.setDate_creation(request.getParameter("date_assoc"));
            am.setDescription_assoc(request.getParameter("description_assoc"));
            am.setEmail_assoc(request.getParameter("email"));
            am.setId_assoc(2);
            am.setId_authentif(2);
    		am.setId_categorie(1);
            am.setNom_assoc(request.getParameter("nom"));
            am.setPresident_assoc(request.getParameter("president"));
            am.setSite_web(request.getParameter("site_web"));
            am.setTele_assoc(request.getParameter("numero"));
            id = Integer.parseInt(request.getParameter("action1"));
            System.out.println(id);
    		at.upadatAssociation1(am,id);
    		  RequestDispatcher r2;
  	        r2=request.getRequestDispatcher("ProfileAssociation.jsp");
  			r2.forward(request, response);
	    	    }
	    if (action.equals("modifier_pic")){
		    
			AssociationModel am = new AssociationModel();
            AssociationTraitement.upadatPic(2,request.getParameter("logo"));
            RequestDispatcher r2;
	        r2=request.getRequestDispatcher("ProfileAssociation.jsp");
			r2.forward(request, response);
	    
	    }
       if (action.equals("update_email")){
		    
			AssociationModel am = new AssociationModel();
            int id ;
            id = Integer.parseInt(request.getParameter("ass"));
			AssociationTraitement.upadatEmailAssociation1(request.getParameter("nv_email"), id);
			RequestDispatcher r2;
		    r2=request.getRequestDispatcher("ProfileAssociation.jsp");
		    r2.forward(request, response);;
	    
	    }
       
       if (action.equals("recherche")){
		    
			AssociationModel am = new AssociationModel();
            String name ;
            name = request.getParameter("");
			RequestDispatcher r2;
		    r2=request.getRequestDispatcher("ResultatRecherche.jsp");
		    r2.forward(request, response);;
	    
	    }
		
		
		
		
	}

	
}
