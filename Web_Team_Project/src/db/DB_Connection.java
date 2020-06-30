package db;

import java.sql.*;

public class DB_Connection {
	public static Connection getCon() throws SQLException{
		Connection conn = null;
		try {
			String url = "jdbc:mysql://localhost:3306/LOGDATA?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("데이터베이스 연결이 성공했습니다.");
			return conn;
		} catch (SQLException | ClassNotFoundException ex) {
			System.out.println("데이터베이스 연결이 실패했습니다.<br>");
			System.out.println("SQLException: " + ex.getMessage());
		} finally {
			if (conn != null)
				conn.close();
		}
		return null;
	}

	
	
}
