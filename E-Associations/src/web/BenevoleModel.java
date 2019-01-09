package web;

public class BenevoleModel {

	/*
	 * 
	 * cin 	nom_ben 	prenom_ben 	profession_ben 	email_ben 	tele_ben 	sexe_ben 	image_b 	id_authentif 
	 */
	
	// image traitement ??
	
	private String cin;
	private String nom_ben;
	private String prenom_ben;
	private String profession_ben;
	private String email_ben;
	private String tele_ben;
	private String sexe_ben;
	private int id_authentif;
	
	
	
	public BenevoleModel() {
		super();
	}
	public BenevoleModel(String cin, String nom_ben, String prenom_ben, String profession_ben, String email_ben,
			String tele_ben, String sexe_ben, int id_authentif) {
		super();
		this.cin = cin;
		this.nom_ben = nom_ben;
		this.prenom_ben = prenom_ben;
		this.profession_ben = profession_ben;
		this.email_ben = email_ben;
		this.tele_ben = tele_ben;
		this.sexe_ben = sexe_ben;
		this.id_authentif = id_authentif;
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

}
