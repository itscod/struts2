package zzm.action;

import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.FruitDao;
import zzm.model.Fruits;
import zzm.model.JsonData;


public class FruitAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	private Fruits fruits;
	
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
	
	

	public Fruits getFruits() {
		return fruits;
	}

	public void setFruits(Fruits fruits) {
		this.fruits = fruits;
	}

	/**

	 * 查找所有水果的商品数据

	 * @return

	 * @throws Exception

	 */

	public String findAll() throws Exception{
		
		FruitDao fruitdao = new FruitDao();

		List<Fruits> fruits = fruitdao.fruitAll();
		
		JsonData jsonData = new JsonData();

		jsonObject = jsonData.getJsonObject(fruits);

		if(fruits!=null&& !fruits.isEmpty()){

			return "fruit";

		}else{

			return "error";

		}
	}
	
	/**

	 * 增加一个新的水果数据

	 * @return

	 * @throws Exception

	 */

	public String add() throws Exception{
		
		FruitDao fruitdao = new FruitDao();
		
		int i=fruitdao.saveFruit(fruits);

		if(i>0){

			return "add";

		}else{

			return "error";

		}

	}
	
	/**

	 * 删除一个水果数据

	 * @return

	 * @throws Exception

	 */

	public String delete() throws Exception{
		
		Fruits fruit = new Fruits();
		
		FruitDao fruitdao = new FruitDao();

		int i=fruitdao.delete(fruit.getFruitID());

		if(i>0){

			return "delete";

		}else{

			return "error";

		}

	}
	
	/**

	 * 更新一个水果数据

	 * @return

	 * @throws Exception

	 */
	public String edit() throws Exception{

		FruitDao fruitdao = new FruitDao();
		
		Fruits fruit = new Fruits();
				
		fruit = fruitdao.findFruit(fruit.getFruitID());
		
		int i=fruitdao.update(fruit,fruit.getFruitID());

		if(i>0){

			return "edit";

		}else{

			return "error";

		}

	}
	
}
