package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.AssociationTraitement;
import metier.BenevoleTraitement;
import metier.CategorieTraitement;
import metier.LoginTraitement;


@WebServlet(urlPatterns = {"/ControleurServlet","*.do"})
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB

public class ControleurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String control = null;
	private String espaceActuel = "v";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = request.getServletPath();
		if(path.equals("/index.do")||path.equals("/")|| path.startsWith("/index")) {
			path="/index.do";
			request.getRequestDispatcher("index.jsp").forward(request, response);
			control = "choisirProfil";
			System.out.println("control = "+control);
		}
		else if(path.equals("/association_inscription.do")) {
			//==========
			response.getWriter().append("Served at: ").append(request.getContextPath());
			ArrayList<CategorieModel> cat = new ArrayList<CategorieModel> ();
	        CategorieTraitement ct = new CategorieTraitement();	
			
			cat = ct.getAllCategories();
			for(CategorieModel cate : cat) {
			System.out.println("love");
			System.out.println(cate.getNom_categorie());}
		    request.setAttribute("cat",cat);
		    RequestDispatcher r2;
		    r2=request.getRequestDispatcher("inscription.jsp");
			r2.forward(request, response);
			//=======
			//request.getRequestDispatcher("inscription.jsp").forward(request, response);	
			control="associationInscription";
		} 
		else if(path.equals("/benevole_inscription.do")) {
			request.getRequestDispatcher("/benevole/inscriptionb.jsp").forward(request, response);	
			control = "benevoleInscription"; 
		}
		else  if(path.equals("/connecter.do")) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
			control = "login";
			System.out.println("control = "+control);
		}
		else  if(path.equals("/association.do")) {

			request.getRequestDispatcher("Header.jsp").forward(request, response);


			request.getRequestDispatcher("ProfileAssociation.jsp").forward(request, response);
			control = "associationSession";
			System.out.println("control = "+control);
		}
		else  if(path.equals("/benevole.do")) {
			
			/*HttpSession session = request.getSession(true); 
			String loginB = (String) session.getAttribute("login");
			String mdpB = (String) session.getAttribute("mdp_login"); */
			request.getRequestDispatcher("/benevole/EspaceBenevole.jsp").forward(request, response);
			//response.sendRedirect("/E-Associations/benevole/EspaceBenevole.jsp");
			//tests
			//System.out.println("--------------------------------");
			//System.out.println("login session = "+loginB);
			control = "benevoleSession";
			System.out.println("control = "+control);
		}
		else if(path.equals("/activites.do")) {
			request.getRequestDispatcher("/benevole/activites.jsp").forward(request, response);
		}
		else if(path.startsWith("/projet.do")) {
			request.getRequestDispatcher("/projet/projet.jsp").forward(request, response);
			
		}
		else if(path.equals("/participations.do")) {
			request.getRequestDispatcher("/benevole/participer.jsp").forward(request, response);
		}
		
		else {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
	
		
		
		
		
		
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(control.equals("benevoleInscription")) {
			
			BenevoleTraitement bt = new BenevoleTraitement();
			bt.ajoutBenevWeb(request);
		    response.setContentType("text/html;charset=ISO-8859-1");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert(\"Vous êtes bien inscrit! Bienvenue \")</script>");      
			
		}	
		else if (control.equals("associationInscription")){ 
			
			AssociationTraitement asso = new AssociationTraitement();
			asso.ajoutAssoWeb(request);
		    response.setContentType("text/html;charset=ISO-8859-1");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert(\"Vous êtes bien inscrit! Bienvenue \")</script>");  
			
		}
		else if(control.equals("choisirProfil")) {
			
			System.out.println("i am here in choixProfil");
			
			// login cards
			if(request.getParameter("choix_association") != null) {
				System.out.println("je suis dans espace association");
					espaceActuel="a";							
				response.sendRedirect("/E-Associations/connecter.do");
			}
			if(request.getParameter("choix_benevole") != null) {
				System.out.println("je suis dans espace benevoole");
				espaceActuel="b";
				response.sendRedirect("/E-Associations/connecter.do");				
			}
			
			//inscription cards
			if(request.getParameter("choix_association_inscr") != null) {
				System.out.println("je suis dans espace association");							
				response.sendRedirect("/E-Associations/association_inscription.do");
			}
			if(request.getParameter("choix_benevole_inscr") != null) {
				System.out.println("je suis dans espace benevoole");
				response.sendRedirect("/E-Associations/benevole_inscription.do");				
			}
		}
		
		
		
		else if(control.equals("login")) {
			
			System.out.println("dans login dopost");
			LoginTraitement log = new LoginTraitement();
			
			if(request.getParameter("connecter") != null) {
				boolean existe;
				if(espaceActuel.equals("b")) {
					existe = log.connecterUtilisateur(request);
					if(!existe) {
						System.out.println("user pas dans base de donnees");
						response.setContentType("text/html;charset=ISO-8859-1");
					    PrintWriter out = response.getWriter();
						out.println("<script>alert(\"Login ou Mot de passe erroné(s) \")</script>");
						
						response.sendRedirect("/E-Associations/connecter.do");
				         
					}
					else {
						System.out.println("je serai redirigé vers mon espace user");
					    response.sendRedirect("/E-Associations/benevole.do");     
					}
				}
				
				else if(espaceActuel.equals("a")) {
					existe = log.connecterAssociation(request);
					if(!existe) {
						System.out.println("user pas dans baase de donnees");
						
						response.setContentType("text/html;charset=ISO-8859-1");
					    PrintWriter out = response.getWriter();
						out.println("<script>alert(\"Login ou Mot de passe erroné(s) \")</script>");
						response.sendRedirect("/E-Associations/connecter.do");
					}
					
					else {
						System.out.println("je serai redirigé vers mon espace association");
						System.out.println("sfsfsf");
						response.sendRedirect("ProfileAssociation.jsp");
					}
				}
				
				
			}
	   }
	}

}
