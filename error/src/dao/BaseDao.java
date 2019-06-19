package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class BaseDao {
	/**

	 * 澹版槑鏁版嵁搴撲俊鎭�

	 */

	private static final String url="jdbc:MySQL://localhost:3306/fruit_sale?serverTimezone=UTC";

	private static final String user="root";

	private static final String password="root";

	/**

	 * 澹版槑JDBC鐨勭浉鍏冲璞�

	 */

	protected static Statement s=null;

	protected static ResultSet rs=null;

	protected static Connection conn=null;

	/**

	 * 鍒涘缓鏁版嵁搴撹繛鎺�

	 * @return

	 * @throws ClassNotFoundException 

	 */

	public static synchronized Connection getConnection(){

		try {

			Class.forName("com.mysql.jdbc.Driver");

			conn=DriverManager.getConnection(url,user,password);

		} catch (Exception e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		return conn;

	}

	/**

	 * 鎵цupdate,delete,insert

	 * @param sql

	 * @return

	 */

	public static int executeUpdate(String sql){

		int result=0;

		try {

			s=getConnection().createStatement();

			result=s.executeUpdate(sql);

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		return result;

	}

	/**

	 * 鎵цselect璇彞

	 * @param sql

	 * @return

	 */

	public static ResultSet executeQuery(String sql){

		try {

			s=getConnection().createStatement();

			rs=s.executeQuery(sql);

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		return rs;

	}

	/**

	 * 鎵ц鍔ㄦ�乻ql璇彞

	 * @param sql

	 * @return

	 */

	public static PreparedStatement executePrepareStatement(String sql){

		PreparedStatement ps=null;

		try {

			ps=getConnection().prepareStatement(sql);

			

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		return ps;

	}

	/**

	 * 浜嬪姟鍥炴粴

	 */

	public static void rollback(){

		try {

			getConnection().rollback();

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

	}

	/**

	 * 鍏抽棴鏁版嵁搴撹繛鎺ュ璞�

	 */

	public static void close(){

		try {

			if(rs!=null)

				rs.close();

			if(s!=null)

				s.close();

			if(conn!=null)

				conn.close();

		} catch (SQLException e) {

				// TODO Auto-generated catch block

				e.printStackTrace();

		}

	}

}