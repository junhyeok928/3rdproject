package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class book_DAO {
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
	public void textbook_cart(String textbook_name, String textbook_price, String textbook_cnt, String user_id) {
		try {
			setConn();
			String sql = "INSERT INTO textbook_cart values(?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, textbook_name);
			pstmt.setString(2, textbook_price);
			pstmt.setString(3, textbook_cnt);
			pstmt.setString(4, user_id);
			
			pstmt.executeUpdate();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("DB예외:" + e.getMessage());
			closeRsc();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("일반예외:" + e.getMessage());

		}
	}
}
