package pojo;

public class Personals {
	private String sex;
	private String phone;
	private String press;
	public Personals(String sex,String phone,String press) {
		this.phone=phone;
		this.press=press;
		this.sex=sex;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
}
