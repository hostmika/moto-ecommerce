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

public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
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
			int test=(int)session.getAttribute("session");
		
			if(test==1) {
				Produit[] produits=new Produit[d.allproduits().length];
				produits=d.allproduits();
				request.setAttribute("produits", produits);
				this.getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
			}
			else {
				this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
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
