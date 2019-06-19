package zzm.action;

import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.UserDao;
import zzm.model.JsonData;
import zzm.model.User;

public class AdminAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	private User user;
	
	private List<User> list;
	
	private JSONObject jsonObject;
	
	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	
	public JSONObject getJsonObject() {
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	/**

	 * 查找所有管理员数据

	 * @return

	 * @throws Exception

	 */

	public String findAll() throws Exception{
		
		UserDao userdao = new UserDao();

		List<User> user = userdao.findAllAdmin();
		
		JsonData jsonData = new JsonData();
		
		jsonObject = jsonData.getJsonObject(user);

		if(user!=null&& !user.isEmpty()){

			return "admin";

		}else{

			return "error";

		}
	}
	
	/**

	 * 增加一个管理员数据

	 * @return

	 * @throws Exception

	 */

	public String addAdmin() throws Exception{
		
		UserDao userdao = new UserDao();
		
		int i=userdao.saveAdmin(user);

		if(i>0){

			return "add";

		}else{

			return "error";

		}

	}
	
	/**

	 * 删除一个管理员数据

	 * @return

	 * @throws Exception

	 */

	public String delete() throws Exception{
		
		User user = new User();
		
		UserDao userdao = new UserDao();

		int i=userdao.delete(user.getUserName());

		if(i>0){

			return "delete";

		}else{

			return "error";

		}

	}
	/**

	 * 修改一个管理员数据

	 * @return

	 * @throws Exception

	 */

	public String update() throws Exception{
		
		UserDao userdao = new UserDao();

		int i=userdao.updateAdmin(user,user.getUserName());

		if(i>0){

			return "edit";

		}else{

			return "error";

		}

	}
	
	public String findOne() throws Exception{
		
		User user = new User();
		
		UserDao userdao = new UserDao();
		
		user = userdao.findOneAdmin(user.getUserName());

		if(user!=null){

			return "value";

		}else{

			return "error";

		}
		
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
