package zsy.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;

public class DeleteCspt extends ActionSupport {
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
		sql="DELETE FROM saleinfo WHERE saleID = '"+id+"'";
		try {
            rs = Dao.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return SUCCESS;
	}
}
