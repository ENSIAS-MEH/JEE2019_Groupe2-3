
package metier;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import dao.BenevoleConnection;
import web.BenevoleModel;


@MultipartConfig(maxFileSize = 16177215) 
public class BenevoleTraitement {
	
	private static  BenevoleConnection bnconx = new BenevoleConnection();
	
	public BenevoleConnection getBnconx() {
		return bnconx;
	}

	public BenevoleModel ChercherBenevoleparCin(String cin){
		BenevoleModel benevole = null;
		benevole = bnconx.ChercherBenevoleCin(cin);
		return benevole; 
	}
	
	public BenevoleModel ChercherBenevoleparIdauthentif(int id_authentif){
		BenevoleModel benevole = null;
		benevole = bnconx.ChercherBenevoleIdauthentif(id_authentif);
		return benevole;
	}
	
	public ArrayList<BenevoleModel> getBenevoles(int id_authentif){
		ArrayList<BenevoleModel> benevoles = new ArrayList<BenevoleModel>();
		benevoles = bnconx.getBenevoles();
		return benevoles;
	}
	
	private void ajoutBenevole(InputStream image, int id_authentif, String cin, String nom_ben, String prenom_ben, String profession_ben, String email_ben, String tele_ben, String sexe_ben){
		   bnconx.ajoutBenevole(id_authentif, cin, nom_ben, prenom_ben, profession_ben, email_ben, tele_ben, sexe_ben, image);
	}
	
	public void ajoutBenevWeb(HttpServletRequest request) throws IOException, ServletException {
		LoginTraitement lt = new LoginTraitement();
		InputStream imageis = null;
		String cin, nom_ben, prenom_ben, profession_ben, email_ben, tele_ben, sexe_ben, login, mdp_login;
		int id_authentif;							
		Part filePart = request.getPart("photo");	 						
	    if (filePart != null) {
	    	System.out.println(filePart.getName());
	    	System.out.println(filePart.getSize());
	    	System.out.println(filePart.getContentType());
			imageis = filePart.getInputStream();
		}
	    cin = request.getParameter("cin");
	    nom_ben = request.getParameter("nom_ben");
	    prenom_ben = request.getParameter("prenom_ben");
	    profession_ben = request.getParameter("profession_ben");
	    email_ben = request.getParameter("email_ben");					
	    tele_ben = request.getParameter("tele_ben");
	    sexe_ben = request.getParameter("sexe_ben");
	    mdp_login = request.getParameter("mdp_login");
	    login = request.getParameter("login");
	    id_authentif = lt.creerAuthentificationTr(login, mdp_login, "b");
	    
	    if (imageis != null) {
	    	this.ajoutBenevole(imageis, id_authentif, cin, nom_ben, prenom_ben, profession_ben, email_ben, tele_ben, sexe_ben);
		}
	}

	public void updateB(HttpServletRequest request, String cin) {
		
	    //appel a updatebenevole
					BenevoleModel bm = new BenevoleModel();
		            BenevoleTraitement ben = new BenevoleTraitement();

		            /*updateBenevole1(BenevoleModel benevole ,String cin )*/
		            // bm= récuperer le benevole connecte
		            
		           String nomb = request.getParameter("nom_ben");
		           String prenomb = request.getParameter("prenom_ben");
		            String professionb = request.getParameter("profession_ben");
		            String emailb = request.getParameter("email_ben");
		            String teleb = request.getParameter("tele_ben");
		            
		         
		            
		System.out.println("first method update benevole traitement");
		bnconx.updateB(cin , nomb, prenomb, professionb, emailb, teleb);
		System.out.println("fin normale");

		//HttpSession session=request.getSession();  
	    //session.setAttribute("login",login); 
	    //session.setAttribute("mdp_login", mdp);
		
	}

	public  static void upadatPicBenevole(String cin, InputStream photo ) {
		try {
			bnconx.upadatPicBenevole(cin,photo);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}


	}
	

}
