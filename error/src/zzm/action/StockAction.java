package zzm.action;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import zzm.dao.StockDao;
import zzm.model.Fruits;
import zzm.model.JsonData;

public class StockAction {
	
	private List<Fruits> list;
	
	private JSONObject jsonObject;
	
	public List<Fruits> getList() {
		return list;
	}

	public void setList(List<Fruits> list) {
		this.list = list;
	}
	
	public JSONObject getJsonObject() {
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	/**

	 * 查找所有库存小于10的水果商品数据

	 * @return

	 * @throws Exception

	 */

	public String stock() throws Exception{
		
		StockDao stockdao = new StockDao();
		
		List<Fruits> stock = stockdao.stock();

		JsonData jsonData = new JsonData();
		
		jsonObject = jsonData.getJsonObject(stock);

		if(stock!=null&& !stock.isEmpty()){

			return "stock";

		}else{

			return "error";

		}
	}
	
	public String findOneStock() throws Exception{
		
		Fruits fruit = new Fruits();
		
		StockDao stockdao = new StockDao();
		
		fruit = stockdao.findOneStock(fruit.getFruitID());
		
		if(fruit!=null) {
			
			return "value";
			
		}else {
			
			return "error";
		
		}
		
	}
	
	/**

	 * 更新一个水果数据

	 * @return

	 * @throws Exception

	 */
	public String edit() throws Exception{
		
		Fruits fruit = new Fruits();
		
		StockDao stockdao = new StockDao();

		int i=stockdao.updateStock(fruit,fruit.getFruitID());

		if(i>0){

			return "edit";

		}else{

			return "error";

		}

	}
}
