package cn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import dao.Dao;
import pojo.Fruits;

public class Iteration extends ActionSupport {
	ActionContext ax =  ActionContext.getContext();
	ValueStack vs = ax.getValueStack();
	public static String sql="";
	public static String sql1="";
	public static String sql2="";
	ResultSet rs = null;
	ResultSet rs1 = null;
	ResultSet rs2 = null;
	public String execute() throws SQLException{
		ax.getSession().remove("list");//将以前保存在Session的内容全清除
		ax.getSession().remove("list2");
		ax.getSession().remove("list1");
		sql = "select * from fruitinfo";
		sql1 = "select * from fruitinfo where kind = '进口水果' ";
		sql2 = "select * from fruitinfo where kind != '进口水果' ";
		try {
            rs = Dao.executeQuery(sql);
            rs1 = Dao.executeQuery(sql1);
            rs2 = Dao.executeQuery(sql2);
        } catch (SQLException e) {
            e.printStackTrace();
        }//查询出所有水果保存在rs中
		List<Fruits> list = new ArrayList<Fruits>();
		List<Fruits> list1 = new ArrayList<Fruits>();
		List<Fruits> list2 = new ArrayList<Fruits>();
		while (rs.next()) {
			list.add(new Fruits(rs.getString("fruitID"),rs.getString("fruitName"),rs.getString("kind"),rs.getString("origin"),rs.getString("price"),rs.getString("images"),rs.getString("introduce"),rs.getString("stock")));
		}//将rs保存的内容一行一行的保存在list中
		while (rs1.next()) {
			list1.add(new Fruits(rs1.getString("fruitID"),rs1.getString("fruitName"),rs1.getString("kind"),rs1.getString("origin"),rs1.getString("price"),rs1.getString("images"),rs1.getString("introduce"),rs1.getString("stock")));
		}
		while (rs2.next()) {
			list2.add(new Fruits(rs2.getString("fruitID"),rs2.getString("fruitName"),rs2.getString("kind"),rs2.getString("origin"),rs2.getString("price"),rs2.getString("images"),rs2.getString("introduce"),rs2.getString("stock")));
		}
		ax.getSession().put("list", list);
		ax.getSession().put("list1", list1);
		ax.getSession().put("list2", list2);
		return SUCCESS;
	}
}
