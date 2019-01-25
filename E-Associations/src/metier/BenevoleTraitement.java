
package metier;

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
	
	private  BenevoleConnection bnconx = new BenevoleConnection();
	
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
	

}
