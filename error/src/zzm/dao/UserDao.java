package zzm.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import zzm.model.User;

public class UserDao {
	//保存一个用户进数据库
	public int saveUser(User user) {

		String sql="insert into userinfo(userName,password,sex,userPhone,UserPress,role) values(?,?,?,?,?,'0')";

		int result=0;

		try{

			PreparedStatement ps=BaseDao.executePrepareStatement(sql);
	
			ps.setString(1, user.getUserName());
			
			ps.setString(2, user.getPassword());
	
			ps.setString(3, user.getSex());
	
			ps.setString(4, user.getUserPhone());
	
			ps.setString(5, user.getUserPress());
	
			//执行sql语句
	
			result=ps.executeUpdate();
	
			ps.close();
	
			BaseDao.close();

		}catch(SQLException e){

			e.printStackTrace();

		}

		return result;
	}
	
	//保存一个管理员进数据库
	public int saveAdmin(User user) {

		String sql="insert into userinfo(userName,password,sex,userPhone,UserPress,role) values(?,?,?,?,?,'1')";

		int result=0;

		try{

			PreparedStatement ps=BaseDao.executePrepareStatement(sql);
	
			ps.setString(1, user.getUserName());
			
			ps.setString(2, user.getPassword());
	
			ps.setString(3, user.getSex());
	
			ps.setString(4, user.getUserPhone());
	
			ps.setString(5, user.getUserPress());
	
			//执行sql语句
	
			result=ps.executeUpdate();
	
			ps.close();
	
			BaseDao.close();

		}catch(SQLException e){

			e.printStackTrace();

		}

		return result;

	}
	
	//删除一个管理员，用户没有做删除功能
	public int delete(String username) {

		String sql="delete from userinfo where name='"+username+"' and role='1'";

		int i=0;

		i=BaseDao.executeUpdate(sql);

		BaseDao.close();

		return i;

	}
	
	//查找单个用户的所有信息
	public User findOne(String userName) {

		String sql="select * from userinfo where userName='"+userName+"'";

		ResultSet rs=BaseDao.executeQuery(sql);

		User user=new User();

		try {

			if(rs.next()){
				
				user.setUserID(rs.getString("userID"));

				user.setUserName(rs.getString("userName"));

				user.setPassword(rs.getString("password"));

				user.setSex(rs.getString("sex"));

				user.setUserPhone(rs.getString("userPhone"));

				user.setUserPress(rs.getString("userPress"));

				user.setRole(rs.getString("role"));

			}

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		BaseDao.close();

		return user;

	}
	
	//查找所有用户的所有信息
	public List<User> findAll() {

		String sql="select * from userinfo";

		List<User> list=new ArrayList<User>();
		
		ResultSet rs=null;

		rs=BaseDao.executeQuery(sql);

		try {

			while(rs.next()){

				User user=new User();

				user.setUserID(rs.getString("userID"));

				user.setUserName(rs.getString("userName"));

				user.setPassword(rs.getString("password"));

				user.setSex(rs.getString("sex"));

				user.setUserPhone(rs.getString("userPhone"));

				user.setUserPress(rs.getString("userPress"));

				user.setRole(rs.getString("role"));

				list.add(user);

			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return list;

	}
	
	//查找所有管理员的信息
	public List<User> findAllAdmin() {

			String sql="select * from userinfo where role='1'";

			List<User> list=new ArrayList<User>();

			ResultSet rs=null;

			rs=BaseDao.executeQuery(sql);

			try {

				while(rs.next()){

					User user=new User();

					user.setUserID(rs.getString("userID"));

					user.setUserName(rs.getString("userName"));

					user.setPassword(rs.getString("password"));

					user.setSex(rs.getString("sex"));

					user.setUserPhone(rs.getString("userPhone"));

					user.setUserPress(rs.getString("userPress"));

					user.setRole(rs.getString("role"));

					list.add(user);

				}

			} catch (Exception e) {

				e.printStackTrace();

			}

		return list;

	}
	
	//查找一个管理员的信息
	public User findOneAdmin(String userName) {

		String sql="select * from userinfo where userName='"+userName+"' and role='1'";

		ResultSet rs=BaseDao.executeQuery(sql);

		User user=new User();

		try {

			if(rs.next()){
				
				user.setUserID(rs.getString("userID"));

				user.setUserName(rs.getString("userName"));

				user.setPassword(rs.getString("password"));

				user.setSex(rs.getString("sex"));

				user.setUserPhone(rs.getString("userPhone"));

				user.setUserPress(rs.getString("userPress"));

				user.setRole(rs.getString("role"));

			}

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		BaseDao.close();

		return user;

	}
	
	//查找数据库是否存在此用户，用于登录
	public User login(String userName, String password) {

		String sql="select * from userinfo where userName='"+userName+"' and password='"+password+"'";

		ResultSet rs=BaseDao.executeQuery(sql);

		User user=new User();

		try {

			if(rs.next()){

				user.setUserID(rs.getString("userID"));

				user.setUserName(rs.getString("userName"));

				user.setPassword(rs.getString("password"));

				user.setSex(rs.getString("sex"));

				user.setUserPhone(rs.getString("userPhone"));

				user.setUserPress(rs.getString("userPress"));

				user.setRole(rs.getString("role"));
				

			}
			

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		BaseDao.close();

		return user;

	}
	
	//更改数据库的管理员信息

	public int updateAdmin(User user, String userName) {

		String sql="update user set userName=?,password=?,sex=?,userPhone=?,userPress=? where name='"+userName+"'";

		int result=0;

		try{

			PreparedStatement ps=BaseDao.executePrepareStatement(sql);
			
			ps.setString(1, user.getUserName());
	
			ps.setString(2, user.getPassword());
	
			ps.setString(3, user.getSex());
	
			ps.setString(4, user.getUserPhone());
	
			ps.setString(5, user.getUserPress());
			
			//执行sql语句
	
			result=ps.executeUpdate();
	
			ps.close();
	
			BaseDao.close();

		}catch(SQLException e){

			e.printStackTrace();

		}

		return result;

	}

}
