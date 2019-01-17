package web;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import metier.BenevoleTraitement;
import metier.LoginTraitement;

/**
 * Servlet implementation class ControleurServlet
 */
@WebServlet(urlPatterns = {"/ControleurServlet","*.do"})
public class ControleurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String control = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   /* public ControleurServlet() {
        super();
        // TODO Auto-generated constructor stub
    }*/
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = request.getServletPath();
		
		if(path.equals("/index.do")) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else if(path.equals("/association/inscription.do")) {
			request.getRequestDispatcher("/association/inscription.jsp").forward(request, response);
		} else if(path.equals("/benevole/inscription.do")) {
						//doPost(request, response);
						request.getRequestDispatcher("/benevole/inscriptionb.jsp").forward(request, response);	
						//control = "benevoleInscription"; 
		}else {
			System.out.println("ICIII");
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		if(control.equals("benevoleInscription")) {
					
			if(request.getParameter("savebenevole") != null) {
				String optradios[] = request.getParameterValues("optradio");

				
				for(String s : optradios) {
							if(s.equals("b")) {
								
								BenevoleTraitement bt = new BenevoleTraitement();
								LoginTraitement lt = new LoginTraitement();
								
								InputStream imageis = null;
								String cin, nom_ben, prenom_ben, profession_ben, email_ben, tele_ben, sexe_ben, login, mdp_login;
								int id_authentif;
								
								Part filePart = request.getPart("photo");	        
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
						        
						        
						        
								imageis = filePart.getInputStream();
								
								 if (imageis != null) {
									 bt.ajoutBenevole(imageis, id_authentif, cin, nom_ben, prenom_ben, profession_ben, email_ben, tele_ben, sexe_ben);
						         }
								  request.setAttribute("errorMessage", "L'ajout d'un nouveau Benevole : Succes");
						          RequestDispatcher rd = request.getRequestDispatcher("EspaceBenevole.jsp");
						          rd.forward(request, response);
							}
						
						
					}
			}        
		}		
	}

}
