package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.User_Course_VO;

public class User_Course_DAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void setConn() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("드라이버 예외:" + e.getMessage());
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("DB 접속 성공!!");
	}
	
	void closeRsc() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
	
	public ArrayList<User_Course_VO> User_CourseList(String user_id) {
		ArrayList<User_Course_VO> list = new ArrayList<User_Course_VO>();
		try {
			setConn();
			con.setAutoCommit(false);
			String sql = "select * from user_course where user_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.executeQuery();
			rs = pstmt.executeQuery();
			while(rs.next()) {
				User_Course_VO vo = new User_Course_VO();
				vo.setUser_id(rs.getString("user_id"));
				vo.setTitle(rs.getString("title"));
				vo.setName(rs.getString("name"));
				vo.setCompose(rs.getInt("compose"));
				vo.setComposeing(rs.getInt("composeing"));
				vo.setStart_date(rs.getDate("start_date"));
				vo.setFinish_date(rs.getDate("finish_date"));
				vo.setState(rs.getString("state"));
				list.add(vo);
			}
			pstmt.close();
			con.close();
					
		}catch(SQLException e) {
			System.out.println("DB관련 예외:" + e.getMessage());
			closeRsc();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("일반 예외:" + e.getMessage());
			
		}
		return list;
	}
	
	
	public void User_CourseListIns(String user_id, String title, String name, int compose, int composeing, Date start_date, Date finish_date, String state) {
		try {
			setConn();
			con.setAutoCommit(false);
			String sql = "INSERT INTO user_course VALUES (?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, title);
			pstmt.setString(3, name);
			pstmt.setInt(4, compose);
			pstmt.setInt(5, composeing);
			pstmt.setDate(6, start_date);
			pstmt.setDate(7, finish_date);
			pstmt.setString(8, state);
			pstmt.executeUpdate();
			pstmt.close();
			con.close();
					
		}catch(SQLException e) {
			System.out.println("DB관련 예외:" + e.getMessage());
			closeRsc();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("일반 예외:" + e.getMessage());
			
		}
	}

	public static void main(String[] args) {
	
	}
}
