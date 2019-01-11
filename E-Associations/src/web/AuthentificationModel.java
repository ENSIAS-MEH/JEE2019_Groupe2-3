package web;

public class AuthentificationModel {
	


	private String login;
	private String mdp_login;
	private String type_authentif;
	private int id_authentif;
	
	
	public int getId_authentif() {
		return id_authentif;
	}
	public void setId_authentif(int id_authentif) {
		this.id_authentif = id_authentif;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getMdp_login() {
		return mdp_login;
	}
	public void setMdp_login(String mdp_login) {
		this.mdp_login = mdp_login;
	}
	public String getType_authentif() {
		return type_authentif;
	}
	public void setType_authentif(String type_authentif) {
		this.type_authentif = type_authentif;
	}
	public AuthentificationModel(String login, String mdp_login, String type_authentif, int id_authentif) {
		super();
		this.login = login;
		this.mdp_login = mdp_login;
		this.type_authentif = type_authentif;
		this.id_authentif = id_authentif;
	}
	public AuthentificationModel() {
		super();
	}
	

	
	
}
