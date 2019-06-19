
package zzm.action;

import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.UserDao;
import zzm.model.User;

public class RegisterAction extends ActionSupport {
	
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		private User user;
	
		/**

		 * 增加一个用户数据

		 * @return

		 * @throws Exception

		 */

		public String addUser() throws Exception{
			
			UserDao userdao = new UserDao();
			
			int i=userdao.saveUser(user);

			if(i>0){

				return "add";

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
