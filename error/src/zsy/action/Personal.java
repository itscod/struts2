package zsy.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;
import pojo.Personals;
import pojo.Shopping;

public class Personal extends ActionSupport {
	ActionContext ax =  ActionContext.getContext();
	Map<String, Object> session = ax.getSession();
	public static String sql="";
	ResultSet rs = null;
	public String execute() throws SQLException {
		session.remove("listr");
		String username = (String) session.get("userName");
		//获取本人资料存入list
		sql="select * from userinfo where userName = '"+username+"'";
		try {
            rs = Dao.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		List<Personals> listr = new ArrayList<Personals>();
		while (rs.next()) {
			listr.add(new Personals(rs.getString("sex"),rs.getString("userPhone"),rs.getString("userPress")));
		}
		session.put("listr", listr);
		return SUCCESS;
	}
}
