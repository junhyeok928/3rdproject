package VO;

public class book_VO {
	private String textbook_name;
	private String textbook_price;
	private String textbook_cnt;
	private String user_id;
	public String getTextbook_name() {
		return textbook_name;
	}
	public void setTextbook_name(String textbook_name) {
		this.textbook_name = textbook_name;
	}
	public String getTextbook_price() {
		return textbook_price;
	}
	public void setTextbook_price(String textbook_price) {
		this.textbook_price = textbook_price;
	}
	public String getTextbook_cnt() {
		return textbook_cnt;
	}
	public void setTextbook_cnt(String textbook_cnt) {
		this.textbook_cnt = textbook_cnt;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public book_VO(String textbook_name, String textbook_price, String textbook_cnt, String user_id) {
		super();
		this.textbook_name = textbook_name;
		this.textbook_price = textbook_price;
		this.textbook_cnt = textbook_cnt;
		this.user_id = user_id;
	}
	public book_VO() {
		super();
		// TODO Auto-generated constructor stub
	}
}
