package web;

import java.util.Date;

public class ProjetModel {
	
	/*
	 * 
	 * id_projet 	nom_projet 	description_projet 	date_debut 	date_fin 	lieu_projet 
	 */
	
	private int id_projet;
	private String nom_projet;
	private String description_projet;
	private Date date_debut;
	private Date date_fin;
	private String lieu_projet;
	
	
	
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
	public Date getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(Date date_debut) {
		this.date_debut = date_debut;
	}
	public ProjetModel() {
		super();
	}
	public ProjetModel(int id_projet, String nom_projet, String description_projet, Date date_debut, Date date_fin,
			String lieu_projet) {
		super();
		this.id_projet = id_projet;
		this.nom_projet = nom_projet;
		this.description_projet = description_projet;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.lieu_projet = lieu_projet;
	}
	public Date getDate_fin() {
		return date_fin;
	}
	public void setDate_fin(Date date_fin) {
		this.date_fin = date_fin;
	}
	public String getLieu_projet() {
		return lieu_projet;
	}
	public void setLieu_projet(String lieu_projet) {
		this.lieu_projet = lieu_projet;
	}

}
