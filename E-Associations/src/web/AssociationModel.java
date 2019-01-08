package web;

import java.util.Date;

public class AssociationModel {
	
	private int num;
	private String nom;
	private String siege;
	private int tel;
	private Date date_creation;
	private String nom_categorie;
	private String objet;
	private String motDePasse;
	
	
	public AssociationModel(int num, String nom, String siege, int tel, Date date_creation, String nom_categorie,
			String objet, String motDePasse) {
		super();
		this.num = num;
		this.nom = nom;
		this.siege = siege;
		this.tel = tel;
		this.date_creation = date_creation;
		this.nom_categorie = nom_categorie;
		this.objet = objet;
		this.motDePasse = motDePasse;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}

	public AssociationModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AssociationModel(int num, String nom, String siege, int tel, Date date_creation, String nom_categorie,
			String objet) {
		super();
		this.num = num;
		this.nom = nom;
		this.siege = siege;
		this.tel = tel;
		this.date_creation = date_creation;
		this.nom_categorie = nom_categorie;
		this.objet = objet;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getSiege() {
		return siege;
	}

	public void setSiege(String siege) {
		this.siege = siege;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public Date getDate_creation() {
		return date_creation;
	}

	public void setDate_creation(Date date_creation) {
		this.date_creation = date_creation;
	}

	public String getNom_categorie() {
		return nom_categorie;
	}

	public void setNom_categorie(String nom_categorie) {
		this.nom_categorie = nom_categorie;
	}

	public String getObjet() {
		return objet;
	}

	public void setObjet(String objet) {
		this.objet = objet;
	}

}
