package web;

public class AlbumModel {
	
	/*
	 * 
	 * id_album 	nom_album 	id_projet 
	 */

	
	
	
	
	
	
	private int id_album;
	private String nom_album;
	private int id_projet;
	
	
	public AlbumModel(int id_album, String nom_album, int id_projet) {
		super();
		this.id_album = id_album;
		this.nom_album = nom_album;
		this.id_projet = id_projet;
	}
	public int getId_album() {
		return id_album;
	}
	public void setId_album(int id_album) {
		this.id_album = id_album;
	}
	public String getNom_album() {
		return nom_album;
	}
	public void setNom_album(String nom_album) {
		this.nom_album = nom_album;
	}
	public AlbumModel() {
		super();
	}
	public int getId_projet() {
		return id_projet;
	}
	public void setId_projet(int id_projet) {
		this.id_projet = id_projet;
	}
}
