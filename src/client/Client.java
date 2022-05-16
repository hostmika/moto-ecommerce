package client;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import connexion.*;


public class Client {
	
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
	
	public void insert(){
		try
	    {
			Connection con= Connexion.getConnexion();
	        String req="insert into Client(id_Client,Login,Mdp) VALUES(null,?,?)";
	        PreparedStatement stmt = con.prepareStatement(req);
	        stmt.setObject(1, this.getLogin());
	        stmt.setObject(2, this.getMdp());
	        stmt.executeUpdate();
		    
	    }
	    catch(Exception e)
	    {
	        e.printStackTrace();
	    }
	}
	
	public boolean toConnect(HttpServletRequest request){
        
        boolean test=false;
        try{
            Connection con= Connexion.getConnexion();
            String req="Select * from Client";
            Statement stmt = con.createStatement();
            ResultSet res = stmt.executeQuery(req);
            while(res.next()){
                String log=res.getString("login");
                String md=res.getString("mdp");
                System.out.println(log);
            
                if(log.equals(request.getParameter("login")) && md.equals(request.getParameter("mdp")))
                {
                    test=true;
                }
            }
        }
        catch(Exception exc)
        {
            exc.printStackTrace();
            
        }
        return test;
    }



}