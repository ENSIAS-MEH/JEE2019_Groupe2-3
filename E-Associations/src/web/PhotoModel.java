package web;

public class PhotoModel {

	private int id_album ;
	private int id_photo ;
	private byte[] photo ;
	public int getId_album() {
		return id_album;
	}
	public void setId_album(int id_album) {
		this.id_album = id_album;
	}
	public int getId_photo() {
		return id_photo;
	}
	public void setId_photo(int id_photo) {
		this.id_photo = id_photo;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	public PhotoModel(int id_album, int id_photo, byte[] photo) {
		super();
		this.id_album = id_album;
		this.id_photo = id_photo;
		this.photo = photo;
	}
	public PhotoModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}
