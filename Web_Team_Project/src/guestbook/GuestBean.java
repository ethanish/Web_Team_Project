package guestbook;
import java.sql.*;
import java.util.*;

public class GuestBean 
{
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/logdata?serverTimezone=UTC";
	
	void connect()
	{
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "root", "1234");
		} catch(Exception e) {
			System.out.println("SQL_Error:"+e.getMessage());
		}
	}
	
	void disconnect()
	{	
		if(pstmt != null)
		{
			try {
				pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public boolean updateDB(GuestBook guestbook)
	{
		connect();
		String sql = "update guestbook set gb_title=?, gb_num=1, gb_date=sysdate(), gb_contents=? where gb_id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, guestbook.getGb_title());
			pstmt.setInt(2, guestbook.getGb_num());
			pstmt.setString(3, guestbook.getGb_contents());
			pstmt.setInt(4, guestbook.getGb_id());
			pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}	
	
	public boolean insertDB(GuestBook guestbook)
	{
		connect();
		String sql="insert into guestbook(gb_num,gb_date,gb_title,gb_contents)values(1,sysdate(),?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,guestbook.getGb_title());
			pstmt.setString(2,guestbook.getGb_contents());
			pstmt.executeUpdate();
		} catch(SQLException e){
			System.out.println("SQL_Error:"+e.getMessage());
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	public GuestBook getDB(int gb_id) 
	{
		connect();
		
		String sql = "select * from guestbook where gb_id=?";
		GuestBook guestbook = new GuestBook();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gb_id);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			
			guestbook.setGb_id(rs.getInt("gb_id"));
			guestbook.setGb_title(rs.getString("gb_title"));
			guestbook.setGb_num(rs.getInt("gb_num"));
			guestbook.setGb_date(rs.getDate("gb_date"));
			guestbook.setGb_contents(rs.getString("gb_contents"));
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return guestbook;
	}
	
	public ArrayList getDBList()
	{
		connect();
		
		ArrayList datas = new ArrayList();
		
		String sql = "select * from guestbook";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) 
			{
				GuestBook guestbook = new GuestBook();
				guestbook.setGb_id(rs.getInt("gb_id"));
				guestbook.setGb_title(rs.getString("gb_title"));
				guestbook.setGb_date(rs.getDate("gb_date"));
				guestbook.setGb_contents(rs.getString("gb_contents"));
				datas.add(guestbook);
			}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return datas;
	}
}
