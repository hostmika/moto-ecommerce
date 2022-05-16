package admin;

import java.sql.*;
import connexion.Connexion;
import exception.DaoException;
import exception.JavaBeanException;

import javax.servlet.http.HttpServletRequest;

public class Admin {
	private String login;
	private String mdp;
	
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	
	public void inserer() throws DaoException{
		
		Connection connexion = null;
		try
	    {
			connexion= Connexion.getConnexion();
	        String req="insert into Admin(id_Admin,Login,Mdp) VALUES(null,?,?)";
	        PreparedStatement stmt = connexion.prepareStatement(req);
	        stmt.setObject(1, this.getLogin());
	        stmt.setObject(2, this.getMdp());
	        stmt.executeUpdate();
	        connexion.commit();
		    
	    }
	    catch(SQLException e)
	    {
	    		try {
	    			if(connexion != null) {
	    				connexion.rollback();
	    			}
				} catch (SQLException e1) {	
				}	
	    	throw new DaoException("une erreur s'est produite au niveau du base de donnée");
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {		
			try {
				connexion.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}		
		}
	}
        
        public boolean toConnect(HttpServletRequest request) throws JavaBeanException, ClassNotFoundException{
             
            boolean test=false;
            Connection connexion = null;
            try{
                Connection con= Connexion.getConnexion();
                System.out.println(con);
                String req="Select * from admin";
                Statement stmt = con.createStatement();
                ResultSet res = stmt.executeQuery(req);
                while(res.next()){
                    String log=res.getString("login");
                    String md=res.getString("mdp");
                    System.out.println(log);
                
                    if(log.equals(request.getParameter("login")) && md.equals(request.getParameter("mdp")))
                    {
                        test=true;
                    }else {
                    	throw new JavaBeanException("Login ou Mot de passe incorrect !");
                    }
                }
            }
            catch(SQLException e)
            {
                e.printStackTrace();
                
            }
            return test;
        }
        

}

