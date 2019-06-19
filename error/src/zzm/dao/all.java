package zzm.dao;

import java.util.List;

import zzm.model.Fruits;
import zzm.model.User;

public interface all {

		

		/**

		 * 保存一个用户数据

		 * @param user

		 * @return

		 */

		public int saveUser(User user);

		/**

		 * 保存一个用户数据

		 * @param user

		 * @return

		 */

		public int saveAdmin(User user);

		/**

		 * 根据管理员名删除一个管理员数据

		 * @param username

		 * @return

		 */

		public int delete(String username);
		

		/**

		 *查找单个用户的所有信息

		 * @param username

		 * @return

		 */

		public User findOne(String userName);

		/**

		 * 查找所有用户信息

		 * @return

		 */

		public List<User> findAll();
		
		/**

		 * 查找所有管理员信息

		 * @return

		 */
		
		public List<User> findAllAdmin();

		/**

		 * 用户登录

		 * @param username

		 * @param password

		 * @return

		 */

		public User login(String userName, String password);

		/**

		 * 根据管理员名更新一条管理员数据

		 * @param username

		 * @return

		 */

		public int update(User user,String userName);
		
		/**

		 * 根据水果ID查找一个水果所有数据

		 * @param username

		 * @return

		 */
		
		public Fruits findFruit(String fruitID);
		
		/**

		 * 查找所有水果的数据

		 * @param username

		 * @return

		 */
		
		public List<Fruits> fruitAll();
		
		/**

		 * 保存水果的信息数据

		 * @param username

		 * @return

		 */
		
		public int saveFruit(Fruits fruit);
		
		/**

		 * 删除一条水果信息数据

		 * @param username

		 * @return

		 */
		
		public int delete(Integer fruitID);
		
		/**

		 * 根据水果ID更新一条水果数据

		 * @param username

		 * @return

		 */
		
		public int update(Fruits fruit,Integer fruitID);
		
		/**

		 * 根据水果ID得到一条水果的库存数据

		 * @param username

		 * @return

		 */
		
		public Fruits findOneStock(String fruitID);
		
		/**

		 * 根据水果ID更新一条水果的库存数据

		 * @param username

		 * @return

		 */
		
		public int updateStock(Fruits fruit,Integer fruitID);
		
		/**

		 * 查找所有库存小于10的水果

		 * @param username

		 * @return

		 */
		
		public List<Fruits> stock();
}

