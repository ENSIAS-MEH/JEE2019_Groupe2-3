package web;

public class ParticiperModel {
/*
 * 
 * cin                Varchar (50) NOT NULL ,
        id_projet          Int NOT NULL ,
        type_participation Varchar (50) NOT NULL ,
        montant            Float NOT NULL

 */
	private String cin ;
	private int id_projet ;
	private String type_participation ;
	private float montant ;
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public int getId_projet() {
		return id_projet;
	}
	public void setId_projet(int id_projet) {
		this.id_projet = id_projet;
	}
	public String getType_participation() {
		return type_participation;
	}
	public void setType_participation(String type_participation) {
		this.type_participation = type_participation;
	}
	public float getMontant() {
		return montant;
	}
	public void setMontant(float montant) {
		this.montant = montant;
	}
	public ParticiperModel(String cin, int id_projet, String type_participation, float montant) {
		super();
		this.cin = cin;
		this.id_projet = id_projet;
		this.type_participation = type_participation;
		this.montant = montant;
	}
	public ParticiperModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ParticiperModel [cin=" + cin + ", id_projet=" + id_projet + ", type_participation=" + type_participation
				+ ", montant=" + montant + "]";
	}
	
	
	
	
	
	
	
}
