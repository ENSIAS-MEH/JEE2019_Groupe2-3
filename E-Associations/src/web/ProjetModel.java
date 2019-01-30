package web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Base64;
import java.util.Date;

public class ProjetModel {
	
	/*
	 * 
	 * id_projet 	nom_projet 	description_projet 	date_debut 	date_fin 	lieu_projet 
	 */
	
	private int id_projet;
	private String nom_projet;
	private String description_projet;
	private String date_debut;
	private String date_fin;
	private String lieu_projet;
	private String type_event;
	private Blob photo;
	
	
	private String base64Image;

	 
    public String BlobToString() throws SQLException, IOException {
    	
        InputStream inputStream = photo.getBinaryStream();
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

	
	
	public String getType_event() {
		return nom_projet;
	}
	public void setType_event(String type_event) {
		this.type_event = type_event;
	}
	
	
	public Blob getPhoto() {
		return photo;
	}
	public void setPhoto(Blob photo) {
		this.photo = photo;
	}
	
	
	
	public int getId_projet() {
		return id_projet;
	}
	public void setId_projet(int id_projet) {
		this.id_projet = id_projet;
	}
	public String getNom_projet() {
		return nom_projet;
	}
	public void setNom_projet(String nom_projet) {
		this.nom_projet = nom_projet;
	}
	public String getDescription_projet() {
		return description_projet;
	}
	public void setDescription_projet(String description_projet) {
		this.description_projet = description_projet;
	}
	public String getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(String date_debut) {
		this.date_debut = date_debut;
	}
	public ProjetModel() {
		super();
	}
	public ProjetModel(int id_projet, String nom_projet, String description_projet, String date_debut, String date_fin,
			String lieu_projet, String type_event, Blob photo) {
		super();
		this.id_projet = id_projet;
		this.nom_projet = nom_projet;
		this.description_projet = description_projet;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.lieu_projet = lieu_projet;
		this.type_event = type_event;
		this.photo = photo;

	}
	public String getDate_fin() {
		return date_fin;
	}
	public void setDate_fin(String date_fin) {
		this.date_fin = date_fin;
	}
	public String getLieu_projet() {
		return lieu_projet;
	}
	public void setLieu_projet(String lieu_projet) {
		this.lieu_projet = lieu_projet;
	}

}
