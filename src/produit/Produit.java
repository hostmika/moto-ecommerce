package produit;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import connexion.*;
import exception.DaoException;
import exception.JavaBeanException;

public class Produit {
	
	private int idProduit;
	private String nom;
	private String marque;
	private String type;
	private int vitesse;
	private String fiche;
	private int prix;
	private String image;
	
	public int getIdProduit() {
		return idProduit;
	}
	public void setIdProduit(int idProduit) {
		this.idProduit = idProduit;
	}
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {		
			this.type=type;	
	}
	public int getVitesse() {
		return vitesse;
	}
	public void setVitesse(int vitesse) throws JavaBeanException {
		if(vitesse <0) {
			throw new JavaBeanException("la vitesse doit etre superieure à 0");
		}
		else {
			this.vitesse = vitesse;
		}
		
	}
	public String getFiche() {
		return fiche;
	}
	public void setFiche(String fiche) {
		this.fiche = fiche;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) throws JavaBeanException{
		
		if(prix <= 0) {						
			throw new JavaBeanException("Prix incorrect");				
		}
		else {
			this.prix = prix;
		}
				
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public Produit() {}
	
	public Produit(String nom,String marque,String type,int vitesse,String fiche,int prix,String image) throws JavaBeanException {
		setNom(nom);
		setMarque(marque);
		setType(type);
		setVitesse(vitesse);
		setFiche(fiche);
		setPrix(prix);
		setImage(image);
		
	}
	
	public Produit(int id,String nom,String marque,String type,int vitesse,String fiche,int prix,String image) throws JavaBeanException {
		setIdProduit(id);
		setNom(nom);
		setMarque(marque);
		setType(type);
		setVitesse(vitesse);
		setFiche(fiche);
		setPrix(prix);
		setImage(image);
		
	}
	
	public Produit(HttpServletRequest request) throws JavaBeanException{
		setNom(request.getParameter("nom"));
		setMarque(request.getParameterValues("marque")[0]);
		setType(request.getParameterValues("type")[0] );
		setVitesse(Integer.parseInt(request.getParameter("vitesse")));
		setFiche(request.getParameter("fiche"));
		setPrix(Integer.parseInt(request.getParameter("prix")));
		setImage(request.getParameter("image"));
		
	}
	
	public void inserer() throws DaoException,JavaBeanException{
		Connection connexion=null;
		try
	    {
			connexion= Connexion.getConnexion();
	        String req="insert into Produit(id_Produit,Nom,Marque,Type,Vitesse,Fiche,Prix,Image) VALUES(null,?,?,?,?,?,?,?)";
	        PreparedStatement stmt = connexion.prepareStatement(req);
	        stmt.setObject(1, this.getNom());
	        stmt.setObject(2, this.getMarque());
	        stmt.setObject(3, this.getType());
	        stmt.setObject(4, this.getVitesse());
	        stmt.setObject(5, this.getFiche());
	        stmt.setObject(6, this.getPrix());
	        stmt.setObject(7, this.getImage());
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
	    	throw new DaoException("une erreur est survenue au niveau de la base de donnée");
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {		
			try {
				if(connexion != null) {
    				connexion.close();
    			}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}		
		}
	}
	
		
	public Produit[] allproduits() throws DaoException,JavaBeanException {
		
            Connection connexion=null;
            Produit[] resultat=new Produit[50];
			try {
				connexion = Connexion.getConnexion();
				String req="Select count(id_Produit) as nb from Produit";
	            Statement stmt = connexion.createStatement();
	            ResultSet res = stmt.executeQuery(req);
	            int taille=0;
	            while(res.next()){
	            	
	            	taille=Integer.parseInt(res.getString("nb"));
	            	 	
	            }
	            
	            resultat=new Produit[taille];
	         
	            String req2="Select * from Produit";
	            Statement stmt2 = connexion.createStatement();
	            ResultSet res2 = stmt2.executeQuery(req2);           
	            int indice=0;
	            
	            while(res2.next()){
	            	
	            	resultat[indice]=new Produit(Integer.parseInt(res2.getString("id_Produit")),res2.getString("Nom"),res2.getString("Marque"),res2.getString("Type"),Integer.parseInt(res2.getString("Vitesse")),res2.getString("Fiche"),Integer.parseInt(res2.getString("Prix")),res2.getString("Image")); 
	            	indice++;
	            }
	           
				
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
	    	throw new DaoException("une erreur est survenue au niveau de la base de donnée");
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {		
			try {
				if(connexion != null) {
    				connexion.close();
    			}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}		
		}
            
            	                 
            return resultat;
	}
	
	public Produit[] recherche(String type,String nom) throws DaoException,JavaBeanException {
		
        Connection connexion=null;
        Produit[] resultat=new Produit[20];
		try {
			connexion = Connexion.getConnexion();
			String req="Select count(id_Produit) as nb from Produit where type='"+type+"' and nom like '%"+nom+"%'";
	        Statement stmt = connexion.createStatement();
	        ResultSet res = stmt.executeQuery(req);
	        int taille=0;
	        while(res.next()){
	        	
	        	taille=Integer.parseInt(res.getString("nb"));
	        	 	
	        }
	        
	        resultat=new Produit[taille];
	     
	        String req2="Select * from Produit where type='"+type+"' and nom like '%"+nom+"%'";
	        Statement stmt2 = connexion.createStatement();
	        ResultSet res2 = stmt2.executeQuery(req2);           
	        int indice=0;
	        
	        while(res2.next()){
	        	
	        	resultat[indice]=new Produit(Integer.parseInt(res2.getString("id_Produit")),res2.getString("Nom"),res2.getString("Marque"),res2.getString("Type"),Integer.parseInt(res2.getString("Vitesse")),res2.getString("Fiche"),Integer.parseInt(res2.getString("Prix")),res2.getString("Image")); 
	        	indice++;
	        }
	       
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
	    	throw new DaoException("une erreur est survenue au niveau de la base de donnée");
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {		
			try {
				if(connexion != null) {
					connexion.close();
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}		
		}
        
        	                 
        return resultat;
	}
	
	public void supprimer (int id) throws DaoException,JavaBeanException {
		Connection connexion=null;
		try {
			connexion = Connexion.getConnexion();
			String req="Delete from Produit where id_Produit="+id;
	        Statement stmt = connexion.createStatement();
	        stmt.executeUpdate(req);
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
	    	throw new DaoException("une erreur est survenue au niveau de la base de donnée");
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {		
			try {
				if(connexion != null) {
					connexion.close();
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}		
		}
		
	}
	
	public void modifier (int id) throws DaoException,JavaBeanException {
		Connection connexion=null;
		try {
			connexion = Connexion.getConnexion();
			String req="Update Produit set Nom="+this.getNom()+",Marque="+this.getMarque()+",Type="+this.getType()+
			",Vitesse="+this.getVitesse()+",Fiche="+this.getFiche()+",Prix="+this.getPrix()+",Image="+this.getImage()+"where id_Produit="+id;
	        Statement stmt = connexion.createStatement();
	        stmt.executeUpdate(req);
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
	    	throw new DaoException("une erreur est survenue au niveau de la base de donnée");
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {		
			try {
				if(connexion != null) {
					connexion.close();
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}		
		}
		
	}
	
public Produit recherche(int id) throws DaoException,JavaBeanException {
		
        Connection connexion=null;
        Produit resultat=new Produit();
		try {
			
			connexion = Connexion.getConnexion();
	        String req="Select * from Produit where id_Produit="+id;
	        Statement stmt = connexion.createStatement();
	        ResultSet res = stmt.executeQuery(req);           
	               
	        while(res.next()){
	        	
	        	resultat=new Produit(res.getString("Nom"),res.getString("Marque"),res.getString("Type"),Integer.parseInt(res.getString("Vitesse")),res.getString("Fiche"),Integer.parseInt(res.getString("Prix")),res.getString("Image")); 
	        	
	        }
	       
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
	    	throw new DaoException("une erreur est survenue au niveau de la base de donnée");
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {		
			try {
				if(connexion != null) {
					connexion.close();
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}		
		}
        
        	                 
        return resultat;
	}
	
	
	

}
