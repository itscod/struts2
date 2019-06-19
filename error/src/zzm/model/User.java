package zzm.model;

public class User {
	public String userID;
	public String userName;
	public String password;
	public String sex;
	public String userPhone;
	public String userPress;
	public String role;
	
	public User() {
		
	}
	
	public User(String userID,String userName,String password,String sex,String userPhone,String userPress,String role) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.password = password;
		this.sex = sex;
		this.userPhone = userPhone;
		this.role = role;
	}
	
	public void userName(String userName,String password) {
		this.userName = userName;
		this.password = password;
	}
	
	

	public void setUserID(String string) {
		this.userID = string;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserPress() {
		return userPress;
	}
	public void setUserPress(String userPress) {
		this.userPress = userPress;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUserID() {
		return userID;
	}

}
