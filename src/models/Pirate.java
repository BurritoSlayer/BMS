package models;

public class Pirate {
	
	private String id;
	private String firstname;
	private String lastname;
	private String oship;
	private String piratename;
	
	public Pirate(String id, String firstname, String lastname, String oship,
			String piratename) {
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.oship = oship;
		this.piratename = piratename;
	}
	
	public Pirate(){}
	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getOship() {
		return oship;
	}

	public void setOship(String oship) {
		this.oship = oship;
	}

	public String getPiratename() {
		return piratename;
	}

	public void setPiratename(String piratename) {
		this.piratename = piratename;
	}
	

}
