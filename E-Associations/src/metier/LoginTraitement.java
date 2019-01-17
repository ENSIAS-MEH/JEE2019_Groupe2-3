package metier;

import dao.LoginConnection;

public class LoginTraitement {
	
	
	public int creerAuthentificationTr(String login , String mdp , String type_authentif) {
		LoginConnection lg = new LoginConnection();
		return lg.creerAuthentification(login, mdp, type_authentif);
	}


}
