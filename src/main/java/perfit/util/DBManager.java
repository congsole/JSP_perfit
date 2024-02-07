package perfit.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
//		Connection conn = null;
		String dbUrl = "";
		try {
//			Context initContext = new InitialContext();
//			Context envContext = (Context) initContext.lookup("java:/comp/env");
//			DataSource ds = (DataSource) envContext.lookup("jdbc/prod-access");
//			conn = ds.getConnection();
			dbUrl = "jdbc:" + System.getenv("JAWSDB_URL");
			System.out.println(dbUrl);
			
		} catch (Exception e) {

			e.printStackTrace();

		}
		Class.forName("com.mysql.cj.jdbc.Driver");
		return /* conn */DriverManager.getConnection(dbUrl);
	}

	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}