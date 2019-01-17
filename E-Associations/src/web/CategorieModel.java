package web;

public class CategorieModel {
	
	/*
	 *  id_categorie  Int  Auto_increment  NOT NULL ,
        nom_categorie Char (5) NOT NULL

	 */
	
	private int id_categorie;
	private String nom_categorie;
	
	
	
	public int getId_categorie() {
		return id_categorie;
	}
	public void setId_categorie(int id_categorie) {
		this.id_categorie = id_categorie;
	}
	public String getNom_categorie() {
		return nom_categorie;
	}
	public void setNom_categorie(String nom_categorie) {
		this.nom_categorie = nom_categorie;
	}
	public CategorieModel(int id_categorie, String nom_categorie) {
		super();
		this.id_categorie = id_categorie;
		this.nom_categorie = nom_categorie;
	}
	public CategorieModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
