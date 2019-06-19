package zsy.action;

import java.sql.SQLException;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;

public class Modify extends ActionSupport {
	private String sex;
	private String phone;
	private String add;
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
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	ActionContext ax =  ActionContext.getContext();
	Map<String, Object> session = ax.getSession();
	public static String sql="";
	int rs = 0;
	public String execute() throws SQLException {
		String username = (String) session.get("userName");
		System.out.println(sex);System.out.println(phone);System.out.println(add);
		sql="UPDATE userinfo SET sex = '"+sex+"',userPhone = '"+phone+"',userPress = '"+add+"' WHERE userName = '"+username+"'";
		try {
            rs = Dao.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return SUCCESS;
	}
}
