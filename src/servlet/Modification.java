package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import produit.Produit;

/**
 * Servlet implementation class Modification
 */

public class Modification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Modification() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session=request.getSession();
		int idProduit=(int)session.getAttribute("idProduit");
		
		Produit d=new Produit();
		try {
			d.supprimer(idProduit);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		/*Produit p=new Produit(request.getParameter("nom"),request.getParameter("marque"),
				request.getParameterValues("type")[0],Integer.parseInt(request.getParameter("vitesse")),request.getParameter("fiche"),
				Double.valueOf(request.getParameter("prix")) ,request.getParameter("image"));
		//p.inserer();
		this.getServletContext().getRequestDispatcher("/admin").forward(request, response);*/
	}

}
