package mvc.database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException  {		

		
		Connection conn = null;		
	
		String url = "jdbc:mysql://localhost:3306/webServerDB";
		String user = "root";
		String password = "9999";

		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(url, user, password);		
		
		if(conn!=null) {
			System.out.println("DB 연결 성공");
		}
		
		
		return conn;
		 }
}
