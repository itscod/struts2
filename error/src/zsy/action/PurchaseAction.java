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
		//��ȡ��������Ϣ
		sql="select * from userinfo where userName = '"+username+"'";
		try {
            rs = Dao.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		//��Ҫid�����룬��ַ-------�����Ѿ���session
		int userid = 0;
		String phone = null;
		String Add = null;
		while (rs.next()) {
			userid=rs.getInt("userID");
			phone = rs.getString("userPhone");
			Add = rs.getString("userPress");
		}

		//��ȡ��ˮ���ĵ���
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
		//�Ѿ��иö����Ͳ���ӹ��ﳵ��
		if(rs.next()) {
			System.out.println("���빺�ﳵʧ��");
		}else {
		//û�еû��������ӹ�����Ϣ
		sql="INSERT INTO saleinfo (userID,fruitID,userName,quantity,amount,userPhone,userPress,status) values ('"+userid+"','"+id+"','"+username+"','1','"+price+"','"+phone+"','"+Add+"','0')";
		try {
            rs2 = Dao.executeUpdate(sql);
            System.out.println("���빺�ﳵ�ɹ�");
        } catch (SQLException e) {
            e.printStackTrace();
        }
		}
		return "yes";
	}
}
