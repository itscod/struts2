package zsy.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;

public class Consumption extends ActionSupport {
	private String amounts;
	public String getAmounts() {
		return amounts;
	}
	public void setAmounts(String amounts) {
		this.amounts = amounts;
	}
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public static String sql="";
	int rs = 0;
	public String execute() throws SQLException {
		sql="UPDATE saleinfo SET status = '1',quantity='"+amounts+"' WHERE saleID = '"+id+"'";
		try {
            rs = Dao.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return SUCCESS;
	}
}
