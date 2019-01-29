package web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Base64;

public class BenevoleModel {

	
	private String cin;
	private String nom_ben;
	private String prenom_ben;
	private String profession_ben;
	private String email_ben;
	private String tele_ben;
	private String sexe_ben;
	private int id_authentif;
	private Blob image_b;
	private String base64Image;

 
	    public String BlobToString() throws SQLException, IOException {
	    	
	        InputStream inputStream = image_b.getBinaryStream();
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
	
	
	public BenevoleModel() {
		super();
	}
	public BenevoleModel(String cin, String nom_ben, String prenom_ben, String profession_ben, String email_ben,
			String tele_ben, String sexe_ben, int id_authentif, Blob image_b) {
		super();
		this.cin = cin;
		this.nom_ben = nom_ben;
		this.prenom_ben = prenom_ben;
		this.profession_ben = profession_ben;
		this.email_ben = email_ben;
		this.tele_ben = tele_ben;
		this.sexe_ben = sexe_ben;
		this.id_authentif = id_authentif;
		this.image_b = image_b;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getNom_ben() {
		return nom_ben;
	}
	public void setNom_ben(String nom_ben) {
		this.nom_ben = nom_ben;
	}
	public String getPrenom_ben() {
		return prenom_ben;
	}
	public void setPrenom_ben(String prenom_ben) {
		this.prenom_ben = prenom_ben;
	}
	public String getProfession_ben() {
		return profession_ben;
	}
	public void setProfession_ben(String profession_ben) {
		this.profession_ben = profession_ben;
	}
	public String getEmail_ben() {
		return email_ben;
	}
	public void setEmail_ben(String email_ben) {
		this.email_ben = email_ben;
	}
	public String getTele_ben() {
		return tele_ben;
	}
	public void setTele_ben(String tele_ben) {
		this.tele_ben = tele_ben;
	}
	public String getSexe_ben() {
		return sexe_ben;
	}
	public void setSexe_ben(String sexe_ben) {
		this.sexe_ben = sexe_ben;
	}
	public int getId_authentif() {
		return id_authentif;
	}
	public void setId_authentif(int id_authentif) {
		this.id_authentif = id_authentif;
	}
	public Blob getImage_b() {
		return image_b;
	}
	public void setImage_b(Blob image_b) {
		this.image_b = image_b;
	}

}
