package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import VO.notice_VO;

public class main_DAO {
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
		public ArrayList<notice_VO> noticeList(){
			ArrayList<notice_VO> list = new ArrayList<notice_VO>();
			try {
				setConn();
				stmt = con.createStatement();
				String sql ="SELECT * \r\n"
						+ "FROM( SELECT * \r\n"
						+ "    FROM notice\r\n"
						+ "    ORDER BY ROWNUM DESC)\r\n"
						+ "WHERE ROWNUM <=3";
				rs = stmt.executeQuery(sql);
				while(rs.next()) {
					list.add(new notice_VO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4)));
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
