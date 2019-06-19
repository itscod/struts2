
package zzm.action;

import java.util.Map;  
import com.opensymphony.xwork2.ActionContext; 
import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.UserDao;
import zzm.model.User;

public class LoginAction extends ActionSupport {
	
	private static final long serialVersionUID = 2869637657543843744L;

	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	/**

	 * 根据用户名查找一条数据

	 * @return

	 * @throws Exception

	 */

	public String findOne() throws Exception{
		
		UserDao userdao = new UserDao();

		this.setUser(userdao.findOne(user.getUserName()));

		if(this.getUser()!=null){

			return "findOne";

		}else{

			return "error";

		}

	}
	/**

	 * 登录验证

	 * @return

	 * @throws Exception

	 */

	
	public String login() throws Exception{
		
		UserDao userdao = new UserDao();
		
		this.setUser(userdao.login(user.getUserName(), user.getPassword()));
		
		if(user.getUserName() != null){
			
			  //记录用户登录信息 
			  Map<String, Object> attibutes = ActionContext.getContext().getSession();
			
              attibutes.put("userName", user.getUserName());
              
              //判断登陆的为管理员还是用户
			  if(user.getRole().equals("0")) {
			  
			  return "userlogin";
			  
			  }else {
			  
			  return "adminlogin";
			  
			  }
			 

		}else{

			return "loginerror";

		}

	}
	
}
