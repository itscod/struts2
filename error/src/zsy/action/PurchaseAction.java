package zsy.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;
import pojo.Fruits;

public class PurchaseAction extends ActionSupport {
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	ActionContext ax =  ActionContext.getContext();
	Map<String, Object> session = ax.getSession();
	public static String sql="";
	ResultSet rs = null;
	int rs2 = 0;
	public String execute() throws SQLException {
		String username = (String) session.get("userName");
		//获取购买人信息
		sql="select * from userinfo where userName = '"+username+"'";
		try {
            rs = Dao.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		//需要id，号码，地址-------姓名已经在session
		int userid = 0;
		String phone = null;
		String Add = null;
		while (rs.next()) {
			userid=rs.getInt("userID");
			phone = rs.getString("userPhone");
			Add = rs.getString("userPress");
		}

		//获取该水果的单价
		sql="select * from fruitinfo where fruitID = '"+id+"'";
		rs = null;
		try {
            rs = Dao.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		int price = 0;
		while (rs.next()) {
			price = rs.getInt("price");
		}
		
		sql="select * from saleinfo where fruitID = '"+id+"' and userName = '"+username+"' and status = 0";
		rs = null;
		try {
            rs = Dao.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		//已经有该订单就不添加购物车了
		if(rs.next()) {
			System.out.println("加入购物车失败");
		}else {
		//没有得话就向表添加购买信息
		sql="INSERT INTO saleinfo (userID,fruitID,userName,quantity,amount,userPhone,userPress,status) values ('"+userid+"','"+id+"','"+username+"','1','"+price+"','"+phone+"','"+Add+"','0')";
		try {
            rs2 = Dao.executeUpdate(sql);
            System.out.println("加入购物车成功");
        } catch (SQLException e) {
            e.printStackTrace();
        }
		}
		return "yes";
	}
}
