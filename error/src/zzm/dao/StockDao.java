package zzm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import zzm.model.Fruits;
import zzm.model.User;

public class StockDao {
	
		//通过水果ID找详细信息，用于商品的修改时，可获取到要修改的值
		public Fruits findOneStock(Integer fruitID) {
	
			String sql="select fruitID,fruitName,stock from fruitinfo where fruitID='"+fruitID+"'";
	
			ResultSet rs=BaseDao.executeQuery(sql);
			
			Fruits fruit = new Fruits();
	
			try {
	
				while(rs.next()){
					
					fruit.setFruitID(rs.getInt("fruitID"));
	
					fruit.setFruitName(rs.getString("fruitName"));
					
					fruit.setStock(rs.getInt("stock"));
	
				}
				
			} catch (SQLException e) {
	
				// TODO Auto-generated catch block
	
				e.printStackTrace();
	
			}
	
			BaseDao.close();
			
			return fruit;
		}
		
		//将修改后的值更新到数据库
		public int updateStock(Fruits fruit,Integer fruitID) {
			
			String sql="update fruitinfo set stock=? where fruitID='"+fruitID+"'";
			
			int i = 0;
			
			i=BaseDao.executeUpdate(sql);
			
			BaseDao.close();
			
			return i;
		}
		
		//将库存小于10的商品显示出来
		public List<Fruits> stock() {

			String sql="select fruitID,fruitName,stock from fruitinfo where stock<=10";

			List<Fruits> list=new ArrayList<Fruits>();

			ResultSet rs=null;

			rs=BaseDao.executeQuery(sql);
			
			try {

				while(rs.next()){

					Fruits fruit = new Fruits();
					
					fruit.setFruitID(rs.getInt("fruitID"));

					fruit.setFruitName(rs.getString("fruitName"));
					
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
}
