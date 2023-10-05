package userPackage;

public class user {
	private int userID;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String userLoginName;
	private String userLoginPassword;
	
	public user(int userID, String userName, String userEmail, String userPhone, String userLoginName,
			String userLoginPassword) {
		this.userID = userID;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userLoginName = userLoginName;
		this.userLoginPassword = userLoginPassword;
	}

	public int getUserID() { 
		return userID;
	}

	public String getUserName() {
		return userName;
	}
	
	public String getUserEmail() {
		return userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public String getUserLoginName() {
		return userLoginName;
	}

	public String getUserLoginPassword() {
		return userLoginPassword;
	}

	
}
