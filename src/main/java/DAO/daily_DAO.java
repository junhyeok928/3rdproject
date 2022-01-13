package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import VO.daily_VO;


public class daily_DAO {
	private Connection con;
	private Statement stmt;
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
		if (stmt != null) {
			try {
				stmt.close();
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
	public ArrayList<daily_VO> dailyList(){
		ArrayList<daily_VO> list = new ArrayList<daily_VO>();
		try {
			setConn();
			stmt = con.createStatement();
			String sql ="SELECT * FROM daily\r\n"
					+ "WHERE daily_number=1";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				list.add(new daily_VO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDate(5)));
			}
			rs.close();
			stmt.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("DB관련 예외:" + e.getMessage());
			closeRsc();
		}
		return list;
	}
	public ArrayList<daily_VO> dailyList2(){
		ArrayList<daily_VO> list = new ArrayList<daily_VO>();
		try {
			setConn();
			stmt = con.createStatement();
			String sql ="SELECT * FROM daily\r\n"
					+ "WHERE daily_number=2";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				list.add(new daily_VO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDate(5)));
			}
			rs.close();
			stmt.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("DB관련 예외:" + e.getMessage());
			closeRsc();
		}
		return list;
	}
	public ArrayList<daily_VO> dailyList3(){
		ArrayList<daily_VO> list = new ArrayList<daily_VO>();
		try {
			setConn();
			stmt = con.createStatement();
			String sql ="SELECT * FROM daily\r\n"
					+ "WHERE daily_number=3";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				list.add(new daily_VO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDate(5)));
			}
			rs.close();
			stmt.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("DB관련 예외:" + e.getMessage());
			closeRsc();
		}
		return list;
	}
	public ArrayList<daily_VO> dailyList4(){
		ArrayList<daily_VO> list = new ArrayList<daily_VO>();
		try {
			setConn();
			stmt = con.createStatement();
			String sql ="SELECT * FROM daily\r\n"
					+ "WHERE daily_number=4";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				list.add(new daily_VO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDate(5)));
			}
			rs.close();
			stmt.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("DB관련 예외:" + e.getMessage());
			closeRsc();
		}
		return list;
	}
}
