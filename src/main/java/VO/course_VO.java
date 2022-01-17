package VO;

public class course_VO {
	private String user_id;
	private String title;
	private String name;
	private int compose;
	private int price;
	private int disprice;
	private int finprice;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCompose() {
		return compose;
	}
	public void setCompose(int compose) {
		this.compose = compose;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDisprice() {
		return disprice;
	}
	public void setDisprice(int disprice) {
		this.disprice = disprice;
	}
	public int getFinprice() {
		return finprice;
	}
	public void setFinprice(int finprice) {
		this.finprice = finprice;
	}
	public course_VO(String user_id, String title, String name, int compose, int price, int disprice, int finprice) {
		super();
		this.user_id = user_id;
		this.title = title;
		this.name = name;
		this.compose = compose;
		this.price = price;
		this.disprice = disprice;
		this.finprice = finprice;
	}
	public course_VO() {
		super();
		// TODO Auto-generated constructor stub
	}
}
