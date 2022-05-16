package connexion;

import java.sql.*;

public class Connexion
{
    public static Connection getConnexion() throws SQLException, ClassNotFoundException
    {
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection connexion= DriverManager.getConnection("jdbc:mysql://localhost:3306/vente", "root", "");
        connexion.setAutoCommit(false);
        
        
        return connexion;
    }
}

