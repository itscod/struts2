package zzm.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import zzm.model.Fruits;

public class FruitDao{
	
	//通过水果ID找详细信息，用于商品的修改时，可获取到要修改的值
	public Fruits findFruit(Integer fruitID) {

		String sql="select * from fruitinfo where fruitID='"+fruitID+"'";

		ResultSet rs=BaseDao.executeQuery(sql);
		
		Fruits fruit = new Fruits();
		
		try {

			if(rs.next()){
				
				fruit.setFruitID(rs.getInt("fruitID"));
				
				fruit.setFruitName(rs.getString("fruitName"));
				
				fruit.setKind(rs.getString("kind"));
				
				fruit.setOrigin(rs.getString("origin"));
				
				fruit.setPrice(rs.getInt("price"));
				
				fruit.setImages(rs.getString("images"));
				
				fruit.setIntroduce(rs.getString("introduce"));
				
				fruit.setStock(rs.getInt("stock"));

			}

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		BaseDao.close();
		
		return fruit;
	}

	//查找所有水果的商品信息
	public List<Fruits> fruitAll() {

		String sql="select * from fruitinfo";
		
		List<Fruits> list=new ArrayList<Fruits>();
		
		ResultSet rs=null;

		rs=BaseDao.executeQuery(sql);

		try {

			while(rs.next()){
				
				Fruits fruit = new Fruits();
				
				fruit.setFruitID(rs.getInt("fruitID"));
				
				fruit.setFruitName(rs.getString("fruitName"));
				
				fruit.setKind(rs.getString("kind"));
				
				fruit.setOrigin(rs.getString("origin"));
				
				fruit.setPrice(rs.getInt("price"));
				
				fruit.setImages(rs.getString("images"));
				
				fruit.setIntroduce(rs.getString("introduce"));
				
				fruit.setStock(rs.getInt("stock"));
				
				list.add(fruit);

			}

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		BaseDao.close();
		
		return list;
	}
	
	//保存一个水果商品信息进数据库
		public int saveFruit(Fruits fruits) {

			String sql="insert into fruitinfo(fruitName,kind,origin,price,stock,introduce) values(?,?,?,?,'20',?)";

			int result=0;

			try{

				PreparedStatement ps=BaseDao.executePrepareStatement(sql);
	
				ps.setString(1, fruits.getFruitName());
	
				ps.setString(2, fruits.getKind());
	
				ps.setString(3, fruits.getOrigin());
	
				ps.setInt(4, fruits.getPrice());
	
				ps.setString(5, fruits.getIntroduce());
	
				//执行sql语句
	
				result=ps.executeUpdate();
	
				ps.close();
	
				BaseDao.close();

			}catch(SQLException e){

				e.printStackTrace();

			}
			return result;

		}
		
		//删除一个水果的所有信息
		public int delete(Integer fruitID) {

			String sql="delete from fruitinfo where fruitID='"+fruitID+"'";

			int i=0;

			i=BaseDao.executeUpdate(sql);

			BaseDao.close();

			return i;

		}
		
		//将修改后的值更新到数据库
		public int update(Fruits fruit,Integer fruitID) {
			
			String sql="update fruitinfo set kind=?,origin=?,price=?,introduce=? where fruitID='"+fruitID+"'";
			
			int i = 0;
			
			i=BaseDao.executeUpdate(sql);
			
			BaseDao.close();
			
			return i;
		}
}
