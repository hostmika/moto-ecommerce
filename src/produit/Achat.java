package produit;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connexion.Connexion;

public class Achat {
	
	private int idClient;
	private int idProduit;
	private int quantite;
	private double prixTotal;
	
	public int getIdClient() {
		return idClient;
	}
	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	public int getIdProduit() {
		return idProduit;
	}
	public void setIdProduit(int idProduit) {
		this.idProduit = idProduit;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public double getPrixTotal() {
		return prixTotal;
	}
	public void setPrixTotal(double prixTotal) {
		this.prixTotal = prixTotal;
	}
	
	public Achat() {}
	
	public Achat(int idClient,int idProduit,int quantite,double prixTotal) {
		setIdClient(idClient);
		setIdProduit(idProduit);
		setQuantite(quantite);
		setPrixTotal(prixTotal);
	}
	
	public void insert(){
		try
	    {
			Connection con= Connexion.getConnexion();
	        String req="insert into Achat(id_Achat,id_Client,id_Produit,Quantite,Prix_Total) VALUES(null,?,?,?,?)";
	        PreparedStatement stmt = con.prepareStatement(req);
	        stmt.setObject(1, this.getIdClient());
	        stmt.setObject(2, this.getIdProduit());
	        stmt.setObject(3, this.getQuantite());
	        stmt.setObject(4, this.getPrixTotal());
	        stmt.executeUpdate();
		    
	    }
	    catch(Exception e)
	    {
	        e.printStackTrace();
	    }
	}

}
