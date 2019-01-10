package metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dao.BenevoleConnection;
import dao.SingletonConnection;
import web.BenevoleModel;

// hello

public class BenevoleTraitement {
	
	private static  BenevoleConnection bnconx = new BenevoleConnection();
	
	public static BenevoleModel ChercherBenevoleparCin(String cin){
		BenevoleModel benevole = null;
		benevole = bnconx.ChercherBenevoleCin(cin);
		return benevole; 
	}
	
	public static BenevoleModel ChercherBenevoleparIdauthentif(int id_authentif){
		BenevoleModel benevole = null;
		benevole = bnconx.ChercherBenevoleIdauthentif(id_authentif);
		return benevole;
	}
	
	public static ArrayList<BenevoleModel> getBenevoles(int id_authentif){
		ArrayList<BenevoleModel> benevoles = new ArrayList<BenevoleModel>();
		benevoles = bnconx.getBenevoles();
		return benevoles;
	}
	
	public static void ajoutBenevole(int id_authentif, String cin, String nom_ben, String prenom_ben, String profession_ben, String email_ben, String tele_ben, String sexe_ben){
		   bnconx.ajoutBenevole(id_authentif, cin, nom_ben, prenom_ben, profession_ben, email_ben, tele_ben, sexe_ben);
	}

}
