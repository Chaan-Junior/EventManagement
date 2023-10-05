package adminPackage;

public class admin {
	private int adminID;
	private String adminName;
	private String adminRole;
	private String userName;
	private String password;
	
	public admin(int adminID, String adminName, String adminRole, String userName, String password) {
		this.adminID = adminID;
		this.adminName = adminName;
		this.adminRole = adminRole;
		this.userName = userName;
		this.password = password;
	}

	public int getAdminID() {
		return adminID;
	}

	public String getAdminName() {
		return adminName;
	}

	public String getAdminRole() {
		return adminRole;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
}
