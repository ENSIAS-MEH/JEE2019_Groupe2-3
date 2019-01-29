package web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Base64;
import java.util.Date;


public class AssociationModel {
	

	/*
	 * 
	 * id_assoc 	nom_assoc 	date_creation 	tele_assoc 	president_assoc 
	 * 	description_assoc 	effectif 	fax_assoc 	site_web 	
	 * email_assoc 	id_authentif 	id_categorie  
	 * 
	 * 
	 * 
	 */

	
	private int id_assoc;
	private String nom_assoc;
	private String date_creation;
	private String tele_assoc;
	private String president_assoc;
	private String description_assoc;
	private int effectif;
	private String fax_assoc;
	private String site_web;
	private String email_assoc;
	private int id_authentif;
	private int id_categorie;
	private Blob logo;
	
	
	
	private String base64Image;

	 
    public String BlobToString() throws SQLException, IOException {
    	
        InputStream inputStream = logo.getBinaryStream();
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int bytesRead = -1;
         
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);                  
        }
         
        byte[] imageBytes = outputStream.toByteArray();
        String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                     
        inputStream.close();
        outputStream.close();
        return base64Image;
    }
    
    public String getBase64Image() {
        return base64Image;
    }
 
    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }
	
	
	
	
	
	public int getId_assoc() {
		return id_assoc;
	}
	public void setId_assoc(int id_assoc) {
		this.id_assoc = id_assoc;
	}
	public String getNom_assoc() {
		return nom_assoc;
	}
	public void setNom_assoc(String nom_assoc) {
		this.nom_assoc = nom_assoc;
	}
	public String getDate_creation() {
		return date_creation;
	}
	public void setDate_creation(String date_creation) {
		this.date_creation = date_creation;
	}
	public String getTele_assoc() {
		return tele_assoc;
	}
	public void setTele_assoc(String tele_assoc) {
		this.tele_assoc = tele_assoc;
	}
	public String getPresident_assoc() {
		return president_assoc;
	}
	public void setPresident_assoc(String president_assoc) {
		this.president_assoc = president_assoc;
	}
	public String getDescription_assoc() {
		return description_assoc;
	}
	public void setDescription_assoc(String description_assoc) {
		this.description_assoc = description_assoc;
	}
	public int getEffectif() {
		return effectif;
	}
	public void setEffectif(int effectif) {
		this.effectif = effectif;
	}
	public String getFax_assoc() {
		return fax_assoc;
	}
	public void setFax_assoc(String fax_assoc) {
		this.fax_assoc = fax_assoc;
	}
	public String getSite_web() {
		return site_web;
	}
	public void setSite_web(String site_web) {
		this.site_web = site_web;
	}
	public String getEmail_assoc() {
		return email_assoc;
	}
	public void setEmail_assoc(String email_assoc) {
		this.email_assoc = email_assoc;
	}
	public int getId_authentif() {
		return id_authentif;
	}
	public void setId_authentif(int id_authentif) {
		this.id_authentif = id_authentif;
	}
	public int getId_categorie() {
		return id_categorie;
	}
	public void setId_categorie(int id_categorie) {
		this.id_categorie = id_categorie;
	}
	public Blob getLogo() {
		return logo;
	}
	public void setLogo(Blob logo) {
		this.logo = logo;
	}
	public AssociationModel(int id_assoc, String nom_assoc, String date_creation, String tele_assoc,
			String president_assoc, String description_assoc, int effectif, String fax_assoc, String site_web,
			String email_assoc, int id_authentif, int id_categorie) {
		super();
		this.id_assoc = id_assoc;
		this.nom_assoc = nom_assoc;
		this.date_creation = date_creation;
		this.tele_assoc = tele_assoc;
		this.president_assoc = president_assoc;
		this.description_assoc = description_assoc;
		this.effectif = effectif;
		this.fax_assoc = fax_assoc;
		this.site_web = site_web;
		this.email_assoc = email_assoc;
		this.id_authentif = id_authentif;
		this.id_categorie = id_categorie;

	}
	public AssociationModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "AssociationModel [id_assoc=" + id_assoc + ", nom_assoc=" + nom_assoc + ", date_creation="
				+ date_creation + ", tele_assoc=" + tele_assoc + ", president_assoc=" + president_assoc
				+ ", description_assoc=" + description_assoc + ", effectif=" + effectif + ", fax_assoc=" + fax_assoc
				+ ", site_web=" + site_web + ", email_assoc=" + email_assoc + ", id_authentif=" + id_authentif
				+ ", id_categorie=" + id_categorie + "]";
	}
	
	
	
}