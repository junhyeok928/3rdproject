package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import VO.member_VO;

public class member_DAO {
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

	public void insertMember(member_VO member) {
		try {
			setConn();
			String sql = "insert into Users \r\n"
					+ "values((SELECT TO_NUMBER(NVL(MAX(USER_NO), '0')) + 1 FROM USERS u )\r\n"
					+ ",?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, (member.getPhone1() + "-" + member.getPhone2() + "-" + member.getPhone3()));
			pstmt.setString(5, member.getEmail());
			pstmt.executeQuery();
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

	public int loginCheck(String id, String pw) {
		int x = -1;
		try {
			setConn();
			con.setAutoCommit(false);
			String sql = "select * from Users where user_id = ? and user_pw = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.executeQuery();
			rs = pstmt.executeQuery();
			if (rs.next()) {
				x = 1;
			} else {
				x = 0;
			}
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			System.out.println("DB관련 예외:" + e.getMessage());
			closeRsc();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("일반 예외:" + e.getMessage());

		}
		return x;
	}

}
