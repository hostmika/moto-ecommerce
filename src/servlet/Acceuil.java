package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import produit.Produit;

/**
 * Servlet implementation class shop
 */

public class Acceuil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Acceuil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Produit d=new Produit();
		
		
		try {
			HttpSession session=request.getSession();
    		session.setAttribute("session",0);
			if(request.getParameter("nom") == null) {
				Produit[] produits=new Produit[d.allproduits().length];
				produits=d.allproduits();
				request.setAttribute("produits", produits);
				this.getServletContext().getRequestDispatcher("/acceuil.jsp").forward(request, response);
			}
			else {
				Produit[] produits=new Produit[d.recherche(request.getParameterValues("type")[0],request.getParameter("nom")).length];
				produits=d.recherche(request.getParameterValues("type")[0],request.getParameter("nom"));
				request.setAttribute("produits", produits);
				this.getServletContext().getRequestDispatcher("/acceuil.jsp").forward(request, response);
				
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
