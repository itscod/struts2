package zsy.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;
import pojo.Shopping;

public class Search extends ActionSupport {
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	ActionContext ax =  ActionContext.getContext();
	Map<String, Object> session = ax.getSession();
	public static String sql="";
	ResultSet rs = null;
	public String execute() throws SQLException {
		int pricem = 0;
		session.remove("listk");
		String username = (String) session.get("userName");
		//查询水果表和购买表相应信息放进list
		sql="select * from fruitinfo,saleinfo where fruitinfo.fruitID = saleinfo.fruitID and saleinfo.userName = '"+username+"' and saleinfo.status = 1 and fruitinfo.fruitName like '%"+name+"%'";
		try {
            rs = Dao.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		List<Shopping> listk = new ArrayList<Shopping>();
		while (rs.next()) {
			pricem = rs.getInt("price")*rs.getInt("quantity");//总价等于单价乘以数量
			listk.add(new Shopping(rs.getInt("saleID"),rs.getString("fruitID"),rs.getString("fruitName"),rs.getString("images"),rs.getInt("price"),rs.getInt("quantity"),pricem));
		}
		session.put("listk", listk);
		return SUCCESS;
	}
}
