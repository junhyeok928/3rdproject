package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.Cart_VO;
import VO.test_vo;

public class Cart_DAO {
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
	
	public ArrayList<Cart_VO> CartList() {
		ArrayList<Cart_VO> list = new ArrayList<Cart_VO>();
		try {
			setConn();
			String sql = "select * from cart";
			pstmt = con.prepareStatement(sql);
			pstmt.executeQuery();
			rs = pstmt.executeQuery(sql);
			while(rs.next()) {
				Cart_VO vo = new Cart_VO();
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setName(rs.getString("name"));
				vo.setCompose(rs.getInt("compose"));
				vo.setPrice(rs.getInt("price"));
				vo.setDisprice(rs.getInt("Disprice"));
				vo.setFinprice(rs.getInt("finprice"));
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
	
	public ArrayList<Cart_VO> CartListDel(int no) {
		ArrayList<Cart_VO> list = new ArrayList<Cart_VO>();
		try {
			setConn();
			con.setAutoCommit(false);
			String sql = "DELETE FROM cart WHERE NO=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			con.commit();
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

	public static void main(String[] args) {
		test_dao dao = new test_dao();
		ArrayList<test_vo> vo = new ArrayList<test_vo>();
		for(test_vo v:dao.test()) {
			System.out.println(v.getName() + "\t" + v.getSt() + "\t" + v.getFn() + "\t" + v.getStat());
			
		}
	
	}
}

