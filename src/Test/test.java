package Test;

import java.sql.Connection;
import java.sql.SQLException;

import admin.Admin;
import connexion.Connexion;
import exception.DaoException;

public class test {

	public static void main(String[] args) throws DaoException {
		Connexion c = new Connexion();
		try {
			Connection con=c.getConnexion();
			Admin d = new Admin();
			d.setLogin("mika");
			d.setMdp("mika");
			d.inserer();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
