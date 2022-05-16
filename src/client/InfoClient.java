package client;

import java.sql.Connection;

import java.sql.PreparedStatement;

import connexion.Connexion;

public class InfoClient {
	private int idClient;
	private String nom;
	private String prenom;
	private double budget;
	private int contact;
	public int getIdClient() {
		return idClient;
	}
	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public double getBudget() {
		return budget;
	}
	public void setBudget(double budget) {
		this.budget = budget;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	
	public InfoClient() {}
	
	public InfoClient(int idclient,String nom,String prenom,double budget,int contact) {
		setIdClient(idclient);
		setNom(nom);
		setPrenom(prenom);
		setBudget(budget);
		setContact(contact);
	}
	
	public void insert(){
		try
	    {
			Connection con= Connexion.getConnexion();
	        String req="insert into InfoClient(id_InfoClient,id_Client,Nom,Prenom,Budget,Contact) VALUES(null,?,?,?,?,?)";
	        PreparedStatement stmt = con.prepareStatement(req);
	        stmt.setObject(1, this.getIdClient());
	        stmt.setObject(2, this.getNom());
	        stmt.setObject(3, this.getPrenom());
	        stmt.setObject(4, this.getBudget());
	        stmt.setObject(5, this.getContact());
	        stmt.executeUpdate();
		    
	    }
	    catch(Exception e)
	    {
	        e.printStackTrace();
	    }
	}

}
