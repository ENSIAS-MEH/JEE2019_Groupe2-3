package metier;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.LoginConnection;

public class LoginTraitement {
	
	private static final String CHAMP_LOGIN  = "login";
    private static final String CHAMP_PASS   = "mdp_login";
    private static final String CHAMP_TYPE = "espaceActuel";
    private LoginConnection acces = new LoginConnection();
	
	public int creerAuthentificationTr(String login , String mdp , String type_authentif) {
		return acces.creerAuthentification(login, mdp, type_authentif);
	}

	public boolean connecterUtilisateur(HttpServletRequest request) {
		//System.out.println("Le login est:"+request.getParameter( CHAMP_LOGIN ));
        //System.out.println("Le motdepasse est:"+request.getParameter( CHAMP_PASS ));
        
        String login = getValeurChamp( request, CHAMP_LOGIN );
        String mdp = getValeurChamp( request, CHAMP_PASS );
        String type_authentif = "b";
        
        //un autre teste
        //System.out.println("Le login est:"+request.getParameter( CHAMP_LOGIN ));
        System.out.println("Le t est:"+type_authentif);
        boolean existe = acces.existe(login ,mdp, type_authentif);
        if(existe) {
        	HttpSession session=request.getSession();  
            session.setAttribute("login",login); 
            session.setAttribute("mdp_login", mdp);
        }
        return existe;
	}
	public boolean connecterAssociation(HttpServletRequest request) {
		//System.out.println("Le login est:"+request.getParameter( CHAMP_LOGIN ));
        //System.out.println("Le motdepasse est:"+request.getParameter( CHAMP_PASS ));
        
        String login = getValeurChamp( request, CHAMP_LOGIN );
        String mdp = getValeurChamp( request, CHAMP_PASS );
        String type_authentif = "a";

        //un autre teste
        //System.out.println("Le login est:"+request.getParameter( CHAMP_LOGIN ));
        System.out.println("Le t est:"+type_authentif);
        boolean existe = acces.existe(login ,mdp, type_authentif);
        return existe;
	}
	
	private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur;
        }
    }


}
