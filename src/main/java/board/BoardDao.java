package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDao {
	private Connection con;
	private ResultSet rs;
	public void setConn() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info,"scott","tiger");
	}
	public String getDate() {
		String sql = "SELECT to_char(sysdate, 'YY-MM-DD') FROM dual";
		try {
			setConn();
			PreparedStatement pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next()) {
				return rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	public int getNext() {
		String sql = "SELECT boardID FROM RVBOARD ORDER BY boardID DESC";
		try {
			setConn();
			PreparedStatement pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;	// 첫 번째 게시물인 경우
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	
	
	public int write(String teacherInfo, String boardTitle, String userID, String boardContent) {
		String sql = "INSERT INTO RVBOARD VALUES(?, ?, ?, ?, ?, ?)";
		try {
			setConn();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, teacherInfo);
			pstmt.setString(3, userID);
			pstmt.setString(4, boardTitle);
			pstmt.setString(5, getDate());
			pstmt.setString(6, boardContent);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("예외:"+e.getMessage() );
		}
		return -1;	// 데이터베이스 오류
	}
	
	public ArrayList<Board> getList(int pageNumber){
		String sql = "SELECT * \r\n"
				+ "FROM ( \r\n"
				+ "		SELECT * \r\n"
				+ "		FROM RVBOARD \r\n"
				+ "		WHERE boardID < ?\r\n"
				+ "		ORDER BY boardID DESC \r\n"
				+ "		) \r\n"
				+ "WHERE rownum <= 10";
		ArrayList<Board> list = new ArrayList<Board>();
		try {
			setConn();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while ( rs.next()) {
				Board board = new Board();
				board.setBoardID(rs.getInt(1));
				board.setTeacherInfo(rs.getString(2));
				board.setUserID(rs.getString(3));
				board.setBoardTitle(rs.getString(4));
				board.setBoardDate(rs.getString(5));
				board.setBoardContent(rs.getString(6));
				list.add(board);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("예외:"+e.getMessage());
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) {
		String sql = "SELECT * \r\n"
				+ "FROM ( \r\n"
				+ "		SELECT * \r\n"
				+ "		FROM RVBOARD \r\n"
				+ "		WHERE boardID < ?\r\n"
				+ "		ORDER BY boardID DESC \r\n"
				+ "		) \r\n"
				+ "WHERE rownum <= 10";
		try {
			setConn();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if ( rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args) {
		BoardDao bd = new BoardDao();
		System.out.println(bd.nextPage(3)); 
		
	}
	
	
}
